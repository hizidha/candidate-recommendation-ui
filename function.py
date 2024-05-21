import numpy as np
import pandas as pd
from sklearn.feature_extraction.text import TfidfVectorizer
from sklearn.metrics.pairwise import cosine_similarity

def encodeGender(gender):
    encode = {'Free': 0, 'Pria': 1, 'Wanita': 2}
    if isinstance(gender, str):
        value = encode.get(gender.title(), -1)
    else:
        value = -1

    return value

def encodeStatus(status):
    encode = {'free': 3, 'single': 0, 'jomblo': 0, 'menikah': 1, 'married': 1, 'duda/janda': 2, 'janda/duda': 2, 'duda': 2, 'janda': 2}
    if isinstance(status, str):
        value = encode.get(status.lower(), -1)
    else:
        value = -1

    return value

def encodeEducation(EduLvl):
    encode = {'SD': 0, 'SMP': 1, 'SMA': 2, 'SLTA': 2, 'STM': 2, 'SMK': 2, 'D1': 3, 'D2': 4, 'D3': 5, 'D4': 6, 'S1': 6, 'S1/D4': 6, 'D4/S1': 6, 'S2': 7, 'S3': 8}
    if isinstance(EduLvl, str):
        value = encode.get(EduLvl.upper(), -1)
    else:
        value = -1

    return value

def encodeExperience(exp):
    encode = {'< 6 bulan': 0, '< 1 tahun': 1, '1-2 tahun': 2, '2-4 tahun': 3, '> 4 tahun': 4}
    if isinstance(exp, (int, float)):
        if exp < 0.5:
            # print("exp < 0.5")
            value = 0
        elif exp < 1:
            # print("exp < 1")
            value = 1
        elif exp < 2:
            # print("exp < 2")
            value = 2
        elif exp < 4:
            # print("exp < 3")
            value = 3
        else:
            # print("exp < 4")
            value = 4
    else:
        value = -1

    return value

# Function to compute cosine similarity between two candidate vectors
def compute_similarity(candidate1, candidate2, vectorizer):
    # Data target / Recommendation Input
    text1 = " ".join([candidate1["Study Major"], candidate1["Last Position"]])
    vector1 = np.array([candidate1["Age"], candidate1["Experience"], candidate1["Marital Status"], candidate1["Gender"], candidate1["Education Level"]])  # Add more parameters as needed

    # Data from dataset
    text2 = " ".join([candidate2["Study_Major"], candidate2["Last_Position"]])
    vector2 = np.array([candidate2["Age"], candidate2["Experience_en"], candidate2["Marital_Status_en"], candidate2["Gender_en"], candidate2["Education_Level_en"]])  # Add more parameters as needed

    # Compute TF-IDF vectors for text features
    text_vectors = vectorizer.transform([text1, text2]).toarray()

    # Concatenate numeric and text features
    vector1 = np.concatenate([vector1, text_vectors[0]])
    vector2 = np.concatenate([vector2, text_vectors[1]])

    return cosine_similarity([vector1], [vector2])[0][0]

# Function to recommend candidates based on similarity to a given candidate
def recommend_candidates1(target_candidate, candidates_data, vectorizer):
    similarities = []
    for index, candidate in candidates_data.iterrows():
        similarity = compute_similarity(target_candidate, candidate, vectorizer)
        similarities.append((
            round(similarity * 100, 3),
            candidate["Name"],
            candidate["Gender"],
            candidate["Age"],
            candidate["Marital_Status"],
            candidate["Education_Level"],
            candidate["Experience"],
            candidate["Study_Major"],
            candidate["Last_Position"],
            ))
    similarities.sort(key=lambda x: x[0], reverse=True)
    return similarities

# Function to recommend candidates based on similarity to a list of target candidates
def recommend_candidates2(target_candidates, candidates_data, vectorizer):
    combined_similarity = {}
    for i, target_candidate in enumerate(target_candidates):
        similarities = []
        for index, candidate in candidates_data.iterrows():
            similarity = compute_similarity(target_candidate, candidate, vectorizer)
            similarities.append(similarity)
        combined_similarity[i] = similarities

    # Combine similarities of target candidates
    combined_similarity_values = list(combined_similarity.values())
    combined_similarity_values = np.sum(combined_similarity_values, axis=0)

    # Find indices of candidates with highest combined similarity
    top_candidate_indices = np.argsort(combined_similarity_values)[::-1]

    recommended_candidates = []
    for index in top_candidate_indices:
        candidate_data = candidates_data.iloc[index]
        recommended_candidates.append((
            round((combined_similarity_values[index] / len(target_candidates)) * 100, 3),  # Compute average similarity
            candidate_data["Name"],
            candidate_data["Gender"],
            int(candidate_data["Age"]),
            candidate_data["Marital_Status"],
            candidate_data["Education_Level"],
            candidate_data["Experience"],
            candidate_data["Study_Major"],
            candidate_data["Last_Position"],
        ))

    return recommended_candidates