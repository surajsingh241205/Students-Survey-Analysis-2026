-- Section 5: Salary Expectations & Career Satisfaction

-- Objective

-- Salary expectations and career satisfaction are important indicators of students' 
-- confidence, market awareness, and future career planning.

-- This section analyzes:

-- - Expected salary ranges
-- - Salary expectations across different academic fields
-- - Salary expectations by career goal
-- - Career preparation satisfaction
-- - Biggest career challenges
-- - Areas students want to improve

-- The insights help identify whether students' expectations align with their current preparation and career goals.

-- Q1. Salary Expectation Distribution

SELECT
    expected_salary,
    COUNT(*) AS total_students
FROM student_survey
GROUP BY expected_salary
ORDER BY total_students DESC;

-- Q2. Salary Expectations by Field of Study

SELECT
    field_of_study,
    expected_salary,
    COUNT(*) AS total_students
FROM student_survey
GROUP BY field_of_study, expected_salary
ORDER BY field_of_study, total_students DESC;

-- Q3. Salary Expectations by Career Goal

SELECT
    career_goal,
    expected_salary,
    COUNT(*) AS total_students
FROM student_survey
GROUP BY career_goal, expected_salary
ORDER BY career_goal, total_students DESC;

-- Q4. Average Career Preparation Satisfaction

SELECT
    ROUND(AVG(career_preparation_satisfaction),2) AS average_satisfaction
FROM student_survey;

-- Q5. Career Preparation Satisfaction Distribution

SELECT
    career_preparation_satisfaction,
    COUNT(*) AS total_students
FROM student_survey
GROUP BY career_preparation_satisfaction
ORDER BY career_preparation_satisfaction;

-- Q6. Satisfaction by Field of Study

SELECT
    field_of_study,
    ROUND(AVG(career_preparation_satisfaction),2) AS average_satisfaction
FROM student_survey
GROUP BY field_of_study
ORDER BY average_satisfaction DESC;

-- Q7. Biggest Career Challenges

SELECT
    biggest_challenge,
    COUNT(*) AS total_students
FROM student_survey
GROUP BY biggest_challenge
ORDER BY total_students DESC;

-- Q8. Areas Students Want to Improve

SELECT
    improvement_area,
    COUNT(*) AS total_students
FROM student_survey
GROUP BY improvement_area
ORDER BY total_students DESC;

-- Q9. Satisfaction by Expected Salary

SELECT
    expected_salary,
    ROUND(AVG(career_preparation_satisfaction),2) AS average_satisfaction
FROM student_survey
GROUP BY expected_salary
ORDER BY average_satisfaction DESC;

-- Q10. Job Confidence vs Career Satisfaction

SELECT
    job_confidence,
    ROUND(AVG(career_preparation_satisfaction),2) AS average_satisfaction
FROM student_survey
GROUP BY job_confidence
ORDER BY job_confidence;

-- Q11. Students with High Career Satisfaction

SELECT
    COUNT(*) AS highly_satisfied_students
FROM student_survey
WHERE career_preparation_satisfaction >= 4;

-- Q12. Students Requiring Additional Career Support

SELECT
    student_id,
    field_of_study,
    career_goal,
    career_preparation_satisfaction
FROM student_survey
WHERE career_preparation_satisfaction <= 2
ORDER BY career_preparation_satisfaction;
































































