from flask import Flask, jsonify, request, render_template
from sklearn.feature_extraction.text import TfidfVectorizer
import pandas as pd
import json

from function import encodeGender, encodeStatus, encodeEducation, encodeExperience, clean_text
from function import recommend_candidates1, recommend_candidates2


app = Flask(__name__)

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
    dfCandidate = pd.read_excel("./data/Data Recommendation Candidate.xlsx")

    new_column_names = {
    'NAMA': 'Name',
    'STATUS': 'Marital_Status',
    'PENDIDIKAN':
    'Education_Level',
    'UMUR': 'Age',
    'KELAMIN': 'Gender',
    'STUDY MAJOR':
    'Study_Major',
    'EXPERIENCE': 'Experience',
    'LAST EXPERIENCE POSITION': 'Last_Position'
    }

    dfCandidate = dfCandidate.rename(columns=new_column_names)

    dropped_column = ['No', 'LOKASI', 'UNIT', 'LEVEL JABATAN', 'JABATAN', 'DIVISI']

    dfCandidate.drop(dropped_column, axis=1, inplace=True)

    # Define encoding dictionaries
    encode_1 = {'SD': 0, 'SMP': 1, 'SMA': 2, 'SLTA': 2, 'STM': 2, 'SMK': 2, 'D1': 3, 'D2': 4, 'D3': 5, 'D4': 6, 'S1': 6, 'S2': 7, 'S3': 8}
    encode_2 = {'Free': 0, 'Pria': 1, 'Wanita': 2}
    encode_3 = {'Single': 0, 'Menikah': 1, 'Duda': 2, 'Janda': 2}
    encode_4 = {'< 6 bulan': 0, '< 1 tahun': 1, '1-2 tahun': 2, '2-4 tahun': 3, '> 4 tahun': 4}

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

    if len(data) == 1:
      # Example usage:
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

      # Recommendation
      recommended_candidates = recommend_candidates2(target_candidate, dfCandidate, vectorizer)

    # Convert results to JSON and return
    return jsonify(recommended_candidates)
    # return recommended_candidates
    # return render_template('recommendation.html', recommended_candidates=recommended_candidates)

@app.route("/recommendation_result")
def recommendation_result():
   result = request.args.get("result")
  #  return render_template("recommendation.html", recommended_candidates=result)
   return render_template("recommendation.html")


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
