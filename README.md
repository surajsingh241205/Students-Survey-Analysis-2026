# Student Career & Employability Survey Analysis 2026

## Overview

The **Student Career & Employability Survey Analysis 2026** is an end-to-end Data Analytics project that analyzes students' career readiness, technical skills, employability, salary expectations, and learning interests using survey data.

The project demonstrates a complete analytics workflow, starting from data collection and cleaning to SQL analysis and interactive Power BI dashboard development.

This project was built as a portfolio project to showcase practical skills in Python, SQL, Data Analysis, Data Visualization, and Business Intelligence.

---

## Problem Statement

Many students are uncertain about their career readiness and often lack awareness of the skills required for industry roles.

The objective of this project is to analyze survey responses and identify:

- Career readiness levels
- Most popular career goals
- Technical skill distribution
- Learning interests
- Salary expectations
- Employability gaps
- Areas where students need improvement

---

## Project Objectives

- Collect real-world survey data
- Clean and preprocess the dataset
- Perform Exploratory Data Analysis (EDA)
- Conduct SQL-based analysis
- Build interactive Power BI dashboards
- Generate actionable insights for students and educational institutions

---

## Dataset Information

| Attribute | Details |
|----------|----------|
| Source | Google Forms Survey |
| Responses | 85 Students |
| File Format | CSV |
| Features | 26 Columns |
| Domain | Education / Career Analytics |

The survey includes information such as:

- Student Type
- Field of Study
- State
- Current Skills
- Learning Skills
- Career Goal
- Technical Confidence
- Job Confidence
- Career Satisfaction
- Resume Status
- LinkedIn Profile
- GitHub Profile
- Certifications
- Expected Salary
- Projects Completed
- Job Applications
- Interviews Attended
- Biggest Challenges
- Improvement Areas

---

# Project Workflow

```
Data Collection
        │
        ▼
Data Cleaning & Preprocessing
        │
        ▼
Exploratory Data Analysis (Python)
        │
        ▼
SQL Data Analysis (PostgreSQL)
        │
        ▼
Power BI Dashboard Development
        │
        ▼
Insights & Recommendations
```

---

# Technologies Used

## Programming

- Python

## Libraries

- Pandas
- NumPy
- Matplotlib
- Seaborn
- Plotly

## Database

- PostgreSQL

## BI Tool

- Power BI Desktop

## Other Tools

- Google Forms
- Microsoft Excel
- Git
- GitHub
- VS Code
- Jupyter Notebook

---

# Project Structure

```
Student-Career-Employability-Survey-Analysis/

│
├── data/
│   ├── raw/
│   └── cleaned/
│
├── notebooks/
│   ├── Data Loading & Cleaning.ipynb
│   ├── Exploratory Data Analysis.ipynb
│   
│
├── sql/
│   ├── Create database.sql
│   ├── Create table and import data.sql
│   └── Section 1 - Data overview.sql
|   └── Section 2 - Career goal and aspirations.sql
|   └── Section 3 - Skills analysis.sql
|   └── Section 4 - Career readiness employability analysis.sql
|   └── Section 5 - Salary expectations and career satisfaction.sql
|   └── Section 6 - Advance SQL analysis.sql
│
├── dashboard/
│   ├── Student Survey Dashboard.pbix
│   └── Dashboard Report.pdf
│
├── images/
│
├── README.md
│
└── requirements.txt
```

---

# Exploratory Data Analysis

The dataset was analyzed using Python to understand:

- Student demographics
- Skill distribution
- Career aspirations
- Salary expectations
- Technical confidence
- Job confidence
- Career satisfaction
- Certifications
- Resume availability
- GitHub usage
- LinkedIn adoption

The analysis included descriptive statistics, data visualization, and feature exploration.

---

# SQL Analysis

PostgreSQL was used to perform business-focused analysis.

Key analyses include:

- Student count by field of study
- Career goal analysis
- Salary expectation analysis
- State-wise student distribution
- Skill frequency analysis
- Resume and LinkedIn adoption
- GitHub usage
- Career readiness metrics
- Technical confidence analysis
- Project and interview statistics

---

# Power BI Dashboards

The project includes five interactive dashboards.

## 1. Executive Overview Dashboard

Provides a high-level summary of the survey.

Includes:

- Total Students
- Career Ready %
- Resume %
- LinkedIn %
- GitHub %
- Technical Confidence
- Job Confidence
- Career Satisfaction
- Career Goals
- Salary Distribution
- State Distribution

### Dashboard Preview

![dashboard 1](images/Dashboard 1.PNG)

---

## 2. Skills Analysis Dashboard

Focuses on students' technical skills and learning interests.

Includes:

- Current Skills
- Learning Skills
- Technical Confidence
- Certifications
- Technical Confidence by Field of Study

### Dashboard Preview

![dashboard 2](images/Dashboard%202.PNG)

---

## 3. Career Readiness Dashboard

Measures employability indicators.

Includes:

- Resume Status
- LinkedIn Profile
- GitHub Profile
- Projects Completed
- Job Applications
- Interviews Attended

### Dashboard Preview

![dashboard 2](images/Dashboard%203.PNG)
---

## 4. Career Goals & Salary Dashboard

Analyzes career aspirations and salary expectations.

Includes:

- Career Goals
- Expected Salary
- Biggest Challenges
- Improvement Areas

### Dashboard Preview

![dashboard 2](images/Dashboard%204.PNG)
---

## 5. Student Insights Dashboard

Provides detailed student-level insights.

Includes:

- Student Records
- Career Satisfaction
- Career Goals
- Filters by Student Type
- State
- Field of Study

### Dashboard Preview

![dashboard 2](images/Dashboard%205.PNG)

---

# Key Insights

- 85 students participated in the survey.
- 41.18% of students are career-ready.
- 78.82% have prepared resumes.
- 76.47% maintain LinkedIn profiles.
- 48.24% actively use GitHub.
- Data Analyst is the most preferred career option.
- ₹5–8 LPA is the most expected salary range.
- MS Excel, SQL, and Python are the most common technical skills.
- Technical Skills and Communication Skills are the most significant improvement areas.
- Students are increasingly interested in Data Analytics, AI, and Cloud Computing.

---

# Business Recommendations

For Students

- Build practical portfolio projects.
- Improve GitHub presence.
- Earn industry-recognized certifications.
- Strengthen communication and interview skills.
- Gain internship experience.

For Educational Institutions

- Introduce industry-oriented curriculum.
- Conduct mock interviews.
- Organize technical workshops.
- Encourage project-based learning.
- Improve career guidance initiatives.

---

# Future Improvements

- Increase survey sample size.
- Collect responses from multiple universities.
- Integrate predictive analytics.
- Develop a live dashboard connected to a cloud database.
- Build a web application for real-time survey analysis.

---

# How to Run the Project

## Clone the Repository

```bash
git clone https://github.com/your-username/student-career-employability-survey-analysis.git
```

## Navigate to the Project

```bash
cd student-career-employability-survey-analysis
```

## Install Dependencies

```bash
pip install -r requirements.txt
```

## Run the Jupyter Notebooks

Open the notebooks in Jupyter Notebook or VS Code and execute them in sequence.

---

# Author

**Suraj Singh**

Final Year B.Com (Computer Applications)

Aspiring Data Analyst

GitHub: https://github.com/surajsingh241205

LinkedIn: https://www.linkedin.com/in/suraj-singh-data-science/

---

# License

This project is intended for educational and portfolio purposes.
