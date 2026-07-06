-- Section 2: Career Goals & Aspirations

-- Objective

-- Understanding students' career aspirations is one of the most valuable outcomes of this survey. By analyzing career goals, educational background, and geographic distribution, 
-- we can identify trends that help educational institutions 
-- and training providers align their programs with students' future ambitions.

-- In this section, we answer questions related to:

-- - Most popular career goals
-- - Career goals by field of study
-- - Career goals by student type
-- - Career goals across different states
-- - Confidence level towards achieving career goals

-- Q1. What are the most popular career goals?

SELECT 
career_goal, COUNT(*) AS total_students 
FROM student_survey GROUP BY career_goal 
ORDER BY total_students DESC;

-- Q2. Top 5 Most Preferred Career Goals

SELECT 
career_goal, COUNT(*) AS total_students 
FROM student_survey
GROUP BY career_goal ORDER BY total_students DESC LIMIT 5;

-- Q3. Career Goals by Field of Study

SELECT 
field_of_study, career_goal,
COUNT(*) AS total_students 
FROM student_survey
GROUP BY field_of_study, career_goal
ORDER BY field_of_study, total_students DESC;

-- Q4. Career Goals by Student Type

SELECT 
student_type, career_goal, 
COUNT(*) AS total_students
FROM student_survey
GROUP BY student_type, career_goal 
ORDER BY student_type, total_students DESC;

-- Q5. Career Goals Across States

SELECT state, career_goal, 
COUNT(*) AS total_students 
FROM student_survey 
GROUP BY state, career_goal 
ORDER BY state, total_students DESC;

-- Q6. Average Job Confidence by Career Goal

SELECT 
career_goal, 
ROUND(AVG(job_confidence), 2) AS avg_job_confidence
FROM student_survey 
GROUP BY career_goal
ORDER BY avg_job_confidence DESC;

-- Q7. Career Goals with Low Confidence

SELECT 
career_goal, 
ROUND(AVG(job_confidence), 2) AS avg_job_confidence
FROM student_survey 
GROUP BY career_goal
ORDER BY avg_job_confidence ASC;

-- Q8. Students Interested in Data & AI Careers

SELECT COUNT(*) AS total_students 
FROM student_survey 
WHERE career_goal ILIKE '%Data%'
OR career_goal ILIKE '%AI%'
OR career_goal ILIKE 'Artificial'
OR career_goal ILIKE '%Machine Learning%';

-- Q9. Career Goal Distribution (Percentage)

SELECT 
career_goal, COUNT(*) AS total_students, 
ROUND(
COUNT(*) * 100.0 / SUM(COUNT(*)) OVER (), 2
) AS percentage
FROM student_survey 
GROUP BY career_goal
ORDER BY total_students DESC;

-- Q10. Career Goals Ranked by Popularity

SELECT 
career_goal, COUNT(*) AS total_students, 
RANK() OVER(
ORDER BY COUNT(*) DESC
) AS popularity_rank 
FROM student_survey GROUP BY career_goal;
































