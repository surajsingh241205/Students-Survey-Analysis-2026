-- Section 3: Skills Analysis

-- Objective

-- Skills are one of the strongest indicators of a student's career readiness. 
-- This section analyzes students' existing technical skills, the skills they wish to learn, 
-- their confidence level, and the learning resources they use.

-- The analysis helps answer questions such as:

-- - What skills do students already possess?
-- - Which skills are students most interested in learning?
-- - How confident are students in their technical abilities?
-- - Which learning platforms are most popular?
-- - Are students actively pursuing professional certifications?

-- Q1. What are the most common current skills?
SELECT current_skills, COUNT(*) AS total_students 
FROM student_survey 
GROUP BY current_skills 
ORDER BY total_students DESC;

-- Q2. What skills are students currently learning?

SELECT learning_skill, 
COUNT(*) AS total_students
FROM student_survey 
GROUP BY learning_skill
ORDER BY total_students DESC;

-- Q3. Current Skills vs Learning Skills

SELECT current_skills, learning_skill, 
COUNT(*) AS total_students 
FROM student_survey
GROUP BY current_skills, learning_skill 
ORDER BY total_students DESC;

-- Q4. Average Technical Confidence Score

SELECT 
ROUND(AVG(technical_confidence), 2) AS avg_technical_confidence 
FROM student_survey;

-- Q5. Technical Confidence Distribution

SELECT 
technical_confidence, COUNT(*) AS total_students 
FROM student_survey 
GROUP BY technical_confidence 
ORDER BY technical_confidence;

-- Q6. Technical Confidence by Field of Study

SELECT 
field_of_study, 
ROUND(AVG(technical_confidence), 2) AS avg_confidence 
FROM student_survey 
GROUP BY field_of_study
ORDER BY avg_confidence DESC;

-- Q7. Most Popular Learning Platforms

SELECT learning_platform, 
COUNT(*) AS total_students 
FROM student_survey 
GROUP BY learning_platform 
ORDER BY total_students DESC;

-- Q8. Students with Professional Certifications

SELECT 
professional_certifications, 
COUNT(*) AS total_students 
FROM student_survey 
GROUP BY professional_certifications
ORDER BY total_students DESC;

-- Q9. Certification Count Distribution

SELECT 
certification_count, 
COUNT(*) AS total_students 
FROM student_survey 
GROUP BY certification_count 
ORDER BY total_students DESC;

-- Q10. Technical Confidence by Certification Status

SELECT 
professional_certifications, 
ROUND(AVG(technical_confidence), 2) AS avg_confidence 
FROM student_survey 
GROUP BY professional_certifications 
ORDER BY avg_confidence DESC;

-- Q11. Learning Platform Preference by Field of Study

SELECT 
field_of_study, learning_platform, 
COUNT(*) AS total_students 
FROM student_survey 
GROUP BY field_of_study, learning_platform 
ORDER BY field_of_study, total_students DESC;

-- Q12. Highly Confident Students

SELECT COUNT(*) AS highly_confidence_students 
FROM student_survey 
WHERE technical_confidence >= 4; 

-- Q13. Students with Low Technical Confidence

SELECT 
field_of_study, 
COUNT(*) AS total_students 
FROM student_survey 
WHERE technical_confidence <= 2 
GROUP BY field_of_study 
ORDER BY total_students DESC;















































































































