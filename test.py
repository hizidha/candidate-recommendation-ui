from flask import Flask, jsonify, render_template, render_template_string
from flask_sqlalchemy import SQLAlchemy
import pandas as pd

# Initialize the Flask application
app = Flask(__name__)

# Configure the SQLAlchemy part of the application instance
app.config['SQLALCHEMY_DATABASE_URI'] = 'mysql+pymysql://root:@localhost/candidate_recommendation'
app.config['SQLALCHEMY_TRACK_MODIFICATIONS'] = False

# Create the SQLAlchemy db instance
db = SQLAlchemy(app)

# Define a model
class User(db.Model):
    id = db.Column(db.Integer, primary_key=True)
    username = db.Column(db.String(20), unique=True, nullable=False)
    email = db.Column(db.String(120), unique=True, nullable=False)

    def __repr__(self):
        return f"User('{self.username}', '{self.email}')"

# Create the database and the database table
with app.app_context():
    db.create_all()

# Define a route to fetch data
@app.route('/users', methods=['GET'])
def get_users():
    users = User.query.all()
    return jsonify([{'id': user.id, 'username': user.username, 'email': user.email} for user in users])

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
    
# Define a route to fetch data
@app.route('/candidate', methods=['GET'])
def get_candidate():
    candidates = CandidateRecommendation.query.all()
    data = [{
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
    
    df = pd.DataFrame(data)
    df_html = df.head().to_html(classes='data', header="true", index=False)

    return render_template_string(html_template, table=df_html)
    return data

# HTML template with a placeholder for the DataFrame
html_template = '''
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>DataFrame</title>
    <style>
        table.data {
            width: 100%;
            border-collapse: collapse;
            margin: 20px 0;
        }
        table.data, table.data th, table.data td {
            border: 1px solid black;
        }
        table.data th, table.data td {
            padding: 8px;
            text-align: left;
        }
        table.data th {
            background-color: #f2f2f2;
        }
    </style>
</head>
<body>
    <h1>DataFrame</h1>
    {{ table|safe }}
</body>
</html>
'''

# Run the Flask application
if __name__ == '__main__':
    app.run(debug=True)
