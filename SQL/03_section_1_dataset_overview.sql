-- Section 1: Dataset Overview

-- Objective

-- The first step in any SQL analysis is to understand the structure and composition of the dataset.

-- In this section, we answer fundamental business questions such as:

-- - How many survey responses were collected?
-- - How diverse is the dataset?
-- - What is the distribution of students across different categories?
-- - Are there any missing values?

-- These insights help validate the dataset before moving into deeper business analysis.

-- Q1. How many students participated in the survey?
SELECT COUNT(*) AS total_students
FROM student_survey;

-- Q2. How many different fields of study are represented?
SELECT COUNT(DISTINCT field_of_study) AS total_fields FROM student_survey;

-- Q3. List all unique fields of study
SELECT DISTINCT field_of_study FROM student_survey ORDER BY field_of_study;

-- Q4. How many degree programs are represented?
SELECT COUNT(DISTINCT degree) 
AS total_degrees FROM student_survey;

-- Q5. List all unique degree programs
SELECT DISTINCT degree FROM student_survey ORDER BY degree;

-- Q6. How many states participated?
SELECT COUNT(DISTINCT state) AS total_states 
FROM student_survey;

-- Q7. Which states contributed the most responses?
SELECT state, COUNT(*) AS total_students 
FROM student_survey GROUP BY state ORDER BY total_students DESC;

-- Q8. Student Type Distribution
SELECT student_type, 
COUNT(*) AS total_students 
FROM student_survey GROUP BY student_type ORDER BY 
total_students DESC;

-- Q9. Missing Value Check
SELECT 
	COUNT(*) AS total_rows, 
	COUNT(field_of_study) AS field_of_study, 
	COUNT(degree) AS degree, 
	COUNT(state) AS state, 
	COUNT(current_skills) AS current_skills, 
	COUNT(expected_salary) AS expected_salary, 
	COUNT(career_goal) AS career_goal
FROM student_survey;

-- Q10. Dataset Preview
SELECT * FROM student_survey LIMIT 10;

-- Key Insights

-- - The survey contains **85 student responses**.
-- - Students belong to multiple academic fields and degree programs.
-- - Responses were collected from several Indian states, providing geographical diversity.
-- - The dataset contains no significant missing values in the primary analytical columns.
-- - The dataset is clean and ready for deeper business analysis.




























