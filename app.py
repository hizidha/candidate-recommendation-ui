from flask import Flask, jsonify, request, render_template
from flask_sqlalchemy import SQLAlchemy
from sklearn.feature_extraction.text import TfidfVectorizer
import pandas as pd
import json

from function import encodeGender, encodeStatus, encodeEducation, encodeExperience, clean_text
from function import recommend_candidates1, recommend_candidates2


app = Flask(__name__)

# Configure the SQLAlchemy part of the application instance
app.config['SQLALCHEMY_DATABASE_URI'] = 'mysql+pymysql://root:@localhost/candidate_recommendation'
app.config['SQLALCHEMY_TRACK_MODIFICATIONS'] = False

# Create the SQLAlchemy db instance
db = SQLAlchemy(app)

# Adjust according to your own database
class CandidateRecommendation(db.Model):
    __tablename__ = "data recommendation candidate"
    id = db.Column(db.Integer, primary_key=True)
    nama = db.Column(db.String(225), primary_key=False)
    lokasi = db.Column(db.String(225), primary_key=False)
    unit = db.Column(db.String(225), primary_key=False)
    lvl_jabatan = db.Column(db.String(225), primary_key=False)
    jabatan = db.Column(db.String(225), primary_key=False)
    divisi = db.Column(db.String(225), primary_key=False)
    marital_status = db.Column(db.String(225), primary_key=False)
    pendidikan = db.Column(db.String(225), primary_key=False)
    umur = db.Column(db.Integer, primary_key=False)
    kelamin = db.Column(db.String(225), primary_key=False)
    study_major = db.Column(db.String(225), primary_key=False)
    exp = db.Column(db.String(225), primary_key=False)
    last_position = db.Column(db.String(225), primary_key=False)
    current_city = db.Column(db.String(225), primary_key=False)
    institution = db.Column(db.String(225), primary_key=False)
    gpa = db.Column(db.Float, primary_key=False)
    expected_salary = db.Column(db.Integer, primary_key=False)
    personality = db.Column(db.String(225), primary_key=False)
    intelligent = db.Column(db.String(225), primary_key=False)
    apply_on = db.Column(db.String(225), primary_key=False)
    status = db.Column(db.String(225), primary_key=False)
    
    def __repr__(self):
        result = ""
        result += f"data recommendation candidate('{self.id}', '{self.nama}', '{self.lokasi}', '{self.unit}', '{self.lvl_jabatan}', '{self.jabatan}', '{self.divisi}', '{self.marital_status}', '{self.pendidikan}', '{self.umur}', '{self.kelamin}', '{self.study_major}', '{self.exp}', '{self.last_position}', '{self.current_city}', '{self.institution}', '{self.gpa}', '{self.expected_salary}', '{self.personality}', '{self.intelligent}', '{self.apply_on}', '{self.status}')"
        return result


@app.route('/')
def index():
    # Membaca data dari sheet yang berbeda dan mengganti NaN dengan string kosong
    df = pd.read_excel("./data/jobPostingLocal.xlsx", sheet_name='candidateData').fillna(value="")
    df1 = pd.read_excel("./data/jobPostingLocal.xlsx", sheet_name='docFPPK').fillna(value="")
    df2 = pd.read_excel("./data/jobPostingLocal.xlsx", sheet_name='jobTitleSO').fillna(value="")

    # Membersihkan karakter kontrol dari data
    df = df.applymap(clean_text)
    df1 = df1.applymap(clean_text)
    df2 = df2.applymap(clean_text)

    # Mengonversi DataFrame ke list of dictionaries
    candidate = df.to_dict(orient='records')
    docfppk = df1.to_dict(orient='records')
    jobtitle = df2.to_dict(orient='records')

    # Mengonversi data ke JSON string dengan pengamanan
    candidates_json = json.dumps(candidate, ensure_ascii=False)
    docfppk_json = json.dumps(docfppk, ensure_ascii=False)
    jobtitle_json = json.dumps(jobtitle, ensure_ascii=False)

    # Mengirim data ke template
    return render_template('index.html', candidates=candidates_json, docFPPK=docfppk_json, jobTitle=jobtitle_json)


@app.route('/recommended_candidates', methods=["POST"])
def recommend_candidates_route():
    # Read data from the request
    data = request.json
    
    # Your provided code for processing candidate recommendation
    dfExcel = pd.read_excel("./data/Data Recommendation Candidate.xlsx")

    # Take data from database
    candidates = CandidateRecommendation.query.all()
    database = [{
        'id': candidate.id,
        'nama': candidate.nama,
        'lokasi': candidate.lokasi,
        'unit': candidate.unit,
        'lvl_jabatan': candidate.lvl_jabatan,
        'jabatan': candidate.jabatan,
        'divisi': candidate.divisi,
        'marital_status': candidate.marital_status,
        'pendidikan': candidate.pendidikan,
        'umur': candidate.umur,
        'kelamin': candidate.kelamin,
        'study_major': candidate.study_major,
        'exp': candidate.exp,
        'last_position': candidate.last_position,
        'current_city': candidate.current_city,
        'institution': candidate.institution,
        'gpa': candidate.gpa,
        'expected_salary': candidate.expected_salary,
        'personality': candidate.personality,
        'intelligent': candidate.intelligent,
        'apply_on': candidate.apply_on,
        'status': candidate.status
        } for candidate in candidates]
    
    dfSQL = pd.DataFrame(database)

    # dfCandidate = dfExcel.copy()
    dfCandidate = dfSQL.copy()

    # untuk excel
    # new_column_names = {
    # 'NAMA': 'Name',
    # 'MARITAL STATUS': 'Marital_Status',
    # 'PENDIDIKAN': 'Education_Level',
    # 'UMUR': 'Age',
    # 'KELAMIN': 'Gender',
    # 'STUDY MAJOR': 'Study_Major',
    # 'EXPERIENCE': 'Experience',
    # 'LAST EXPERIENCE POSITION': 'Last_Position'
    # }

    # untuk database
    new_column_names = {
    'nama': 'Name',
    'marital_status': 'Marital_Status',
    'pendidikan': 'Education_Level',
    'umur': 'Age',
    'kelamin': 'Gender',
    'study_major': 'Study_Major',
    'exp': 'Experience',
    'last_position': 'Last_Position'
    }

    dfCandidate = dfCandidate.rename(columns=new_column_names)

    # dropped_column = ['No', 'LOKASI', 'UNIT', 'LEVEL JABATAN', 'JABATAN', 'DIVISI']
    dropped_column = ['id', 'lokasi', 'unit', 'lvl_jabatan', 'jabatan', 'divisi']

    dfCandidate.drop(dropped_column, axis=1, inplace=True)

    # Define encoding dictionaries
    encode_1 = {'SD': 0, 'SMP': 1, 'SMA': 2, 'SLTA': 2, 'STM': 2, 'SMK': 2, 'D1': 3, 'D2': 4, 'D3': 5, 'D4': 6, 'S1': 6, 'S2': 7, 'S3': 8}
    encode_2 = {'Free': 0, 'Pria': 1, 'Wanita': 2, "Male": 1, "Female": 2}
    encode_3 = {'Single': 0, 'Menikah': 1, 'Duda': 2, 'Janda': 2}
    encode_4 = {'< 6 bulan': 0, '< 1 tahun': 1, '1-2 tahun': 2, '2-4 tahun': 3, '> 4 tahun': 4}

    # return jsonify(dfCandidate.to_dict(orient="records"))

    # Apply encoding
    dfCandidate['Education_Level_en'] = dfCandidate['Education_Level'].map(encode_1)
    dfCandidate['Gender_en'] = dfCandidate['Gender'].map(encode_2)
    dfCandidate['Marital_Status_en'] = dfCandidate['Marital_Status'].map(encode_3)
    dfCandidate['Experience_en'] = dfCandidate['Experience'].map(encode_4)

    # Preprocess candidates_data and target_candidate
    text_data = [" ".join([data["Study_Major"], data["Last_Position"]]) for index, data in dfCandidate.iterrows()]
    vectorizer = TfidfVectorizer()
    tfidf_matrix = vectorizer.fit_transform(text_data)

    target_candidate = []
    recommended_candidates = []

    # return jsonify(dfCandidate.to_dict(orient="records"))
    # return data

    if len(data) == 1:
      # Excel usage
      target_candidate = [
        {
          "Gender": encodeGender(data[0]['Gender']),
          "Age": int(data[0]['Age']),
          "Marital Status": encodeStatus(data[0]['Marital_Status']),
          "Education Level": encodeEducation(data[0]['Education_Level']),
          "Experience": encodeExperience(int(data[0]['Experience'])),
          "Study Major": data[0]['Study_Major'],
          "Last Position": data[0]['Last_Position']
        }
      ]

      # return target_candidate
    
      # Recommendation
      recommended_candidates = recommend_candidates1(target_candidate[0], dfCandidate, vectorizer)
    else:
      for data_member in data:
        target_member = {
            "Gender": encodeGender(data_member['Gender']),
            "Age": int(data_member['Age']),
            "Marital Status": encodeStatus(data_member['Marital_Status']),
            "Education Level": encodeEducation(data_member['Education_Level']),
            "Experience": encodeExperience(int(data_member['Experience'])),
            "Study Major": data_member['Study_Major'],
            "Last Position": data_member['Last_Position']
        }
      target_candidate.append(target_member)

      # return target_candidate

      # Recommendation
      recommended_candidates = recommend_candidates2(target_candidate, dfCandidate, vectorizer)

    indicesArr = []
    for candidate in recommended_candidates:
       indicesArr.append(candidate[9])

    recommended_df = dfExcel.iloc[indicesArr].to_dict(orient="records")

    # Convert results to JSON and return
    return jsonify(recommended_candidates, recommended_df)
    # return recommended_candidates
    # return render_template('recommendation.html', recommended_candidates=recommended_candidates)

@app.route("/recommendation_result")
def recommendation_result():
   result = request.args.get("result")
  #  return render_template("recommendation.html", recommended_candidates=result)
   return render_template("detailHiringOrder.html")


# @app.route('/submit', methods=['POST'])
# def submit_data():
#     data = request.json  # Get JSON data from the request
#     data1 = data.copy()
#     # Process the data as needed
#     # return "test"
#     # return jsonify({'message': 'Data received successfully', "data": data})
#     data1["Gender"] = encodeGender(data['Gender']),
#     data1["Age"] = data['Age'],
#     data1["Marital_Status"] = encodeStatus(data['Marital_Status']),
#     data1["Education_Level"] = encodeEducation(data['Education_Level']),
#     data1["Experience"] = encodeExperience(int(data['Experience'])),
#     data1["Study_Major"] = data['Study_Major'],
#     data1["Last_Position"] = data['Last_Position']
#     return jsonify({"data": data, "data1": data1})

if __name__ == '__main__':
    app.run(debug=True, port=8889)
