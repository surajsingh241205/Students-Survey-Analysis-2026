CREATE TABLE student_survey (
    student_id SERIAL PRIMARY KEY,
    timestamp TIMESTAMP,
    student_type VARCHAR(50),
    field_of_study VARCHAR(100),
    degree VARCHAR(100),
    state VARCHAR(100),
    current_skills TEXT,
    learning_skill TEXT,
    technical_confidence INTEGER,
    daily_learning_hours VARCHAR(50),
    learning_platform VARCHAR(100),
    professional_certifications VARCHAR(10),
    certification_count VARCHAR(30),
    has_resume VARCHAR(10),
    has_linkedin VARCHAR(10),
    has_github VARCHAR(10),
    project_count VARCHAR(30),
    job_applications VARCHAR(30),
    interview_count VARCHAR(30),
    job_confidence INTEGER,
    career_goal VARCHAR(150),
    expected_salary VARCHAR(100),
    biggest_challenge TEXT,
    improvement_area TEXT,
    career_preparation_satisfaction INTEGER,
    recommend_learning_approach TEXT,
    additional_comments TEXT
);

SELECT COUNT(*) FROM student_survey;
SELECT * FROM student_survey LIMIT 5;