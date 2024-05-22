# import requests

# # URL of the Flask app
# url = 'http://127.0.0.1:5000/'

# def trial():
#   # Sample data to send in the request
#   data = {
#     "excel_file_path": "./Data Recommendation Candidate.xlsx",
#     "target_candidate": {
#       "Gender": "Male",
#       "Age": 30,
#       "Marital_Status": "Single",
#       "Education_Level": "Bachelor's",
#       "Experience": 5,
#       "Study_Major": "Computer Science",
#       "Last_Position": "Software Engineer"
#     }
#   }

#   # Make a POST request
#   response = requests.post(url, json=data)

#   # Print the response
#   return response.json()

import pandas as pd

# df = pd.read_excel("./data/jobPostingLocal.xlsx", sheet_name='candidateData').fillna(value="")
df1 = pd.read_excel("./data/jobPostingLocal.xlsx", sheet_name='docFPPK').fillna(value="")
df2 = pd.read_excel("./data/jobPostingLocal.xlsx", sheet_name='jobTitleSO').fillna(value="")

# # Mengonversi DataFrame ke list
# candidate = df.to_dict(orient='records')
docfppk = df1.to_dict(orient='records')
print(docfppk)
jobtitle = df2.to_dict(orient='records')
