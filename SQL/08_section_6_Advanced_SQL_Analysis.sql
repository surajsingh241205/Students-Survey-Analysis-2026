-- Section 6: Advanced SQL Analysis

-- Objective

-- In this section, we use advanced SQL techniques to extract deeper 
-- insights from the survey data.

-- The analysis covers:

-- - Common Table Expressions (CTEs)
-- - Subqueries
-- - CASE statements
-- - Window Functions
-- - ROW_NUMBER()
-- - RANK()
-- - DENSE_RANK()
-- - NTILE()

-- These techniques are widely used in real-world business intelligence and analytics projects.

-- Q1. Rank Career Goals by Popularity

SELECT career_goal, 
COUNT(*) AS total_students, 
RANK() OVER(
ORDER BY COUNT(*) DESC
) AS popularity_rank 
FROM student_survey 
GROUP BY career_goal;

-- Q2. Rank Fields of Study by Average Job Confidence

SELECT field_of_study, 
ROUND(
AVG(job_confidence), 2) AS avg_confidence, 
DENSE_RANK() OVER(
ORDER BY AVG(job_confidence) DESC 
) AS confidence_rank 
FROM student_survey 
GROUP BY field_of_study;

-- Q3. Highest Confidence Student from Each Field

WITH ranked_students AS (
	SELECT 
		student_id, 
		field_of_study, 
		job_confidence, 

		ROW_NUMBER() OVER(
			PARTITION BY field_of_study
			ORDER BY job_confidence DESC
		) AS rn
FROM student_survey
)

SELECT * FROM ranked_students WHERE rn = 1;

-- Q4. Career Readiness Classification

SELECT 
student_id, 
CASE 
	WHEN has_resume='Yes' AND has_linkedin='Yes' AND has_github='Yes'
	THEN 'Highly Ready'
	WHEN has_resume='Yes' AND has_linkedin='Yes'
	THEN 'Moderately Ready'
	ELSE 'Needs Improvement'
END AS career_readiness 
FROM student_survey;

-- Q5. Career Readiness Classification

SELECT 
	student_id, field_of_study, job_confidence
FROM student_survey 
WHERE job_confidence > (SELECT AVG(job_confidence) 
FROM student_survey)
ORDER BY job_confidence DESC;

-- Q6. Career Goals Above Overall Average

WITH career_counts AS (
SELECT career_goal, COUNT(*) AS total_students 
FROM student_survey GROUP BY career_goal
)

SELECT * FROM career_counts 
WHERE total_students > (SELECT AVG(total_students) 
FROM career_counts);

-- Q7. Running Total of Students by Career Goal

SELECT career_goal, COUNT(*) AS total_students, 
SUM(COUNT(*))
OVER (
ORDER BY COUNT(*) DESC
)
AS running_total FROM student_survey 
GROUP BY career_goal;

-- Q8. Percentage Contribution of Each Career Goal

SELECT career_goal, COUNT(*) AS total_students, 
ROUND(
COUNT(*) *100.0 / SUM(COUNT(*)) OVER(), 2
) AS percentage FROM student_survey 
GROUP BY career_goal ORDER BY percentage DESC;

-- Q9. Top Learning Platform in Every Field

WITH ranked_platform AS (
SELECT field_of_study, learning_platform, 
COUNT(*) AS total_students, 
ROW_NUMBER() OVER(
PARTITION BY field_of_study
ORDER BY COUNT(*) DESC
) AS rn
FROM student_survey 
GROUP BY field_of_study, learning_platform  
)

SELECT * FROM ranked_platform WHERE rn = 1;









































	





































