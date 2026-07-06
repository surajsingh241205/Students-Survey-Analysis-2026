-- Section 4: Career Readiness & Employability Analysis

-- Objective

-- Technical skills alone do not guarantee employability. Recruiters also evaluate candidates based 
-- on their professional presence, project experience, resume quality, and interview preparation.

-- This section measures students' career readiness by analyzing:

-- - Resume availability
-- - LinkedIn presence
-- - GitHub profile availability
-- - Project experience
-- - Job application activity
-- - Interview experience
-- - Job confidence

-- These insights help identify how prepared students are for entering the job market.

-- Q1. Do students have a professional resume?

SELECT has_resume, 
COUNT(*) AS total_students 
FROM student_survey 
GROUP BY has_resume 
ORDER BY total_students DESC;

-- Q2. LinkedIn Profile Availability

SELECT has_linkedin, 
COUNT(*) AS total_students 
FROM student_survey 
GROUP BY has_linkedin 
ORDER BY total_students DESC;

-- Q3. GitHub Profile Availability

SELECT 
has_github, 
COUNT(*) AS total_students 
FROM student_survey 
GROUP BY has_github 
ORDER BY total_students DESC;

-- Q4. Project Completion Distribution

SELECT 
project_count, 
COUNT(*) AS total_students 
FROM student_survey 
GROUP BY project_count 
ORDER BY total_students DESC;

-- Q5. Job Applications Submitted

SELECT 
job_applications, 
COUNT(*) AS total_students 
FROM student_survey 
GROUP BY job_applications 
ORDER BY total_students DESC;

-- Q6. Interview Experience Distribution

SELECT 
interview_count, 
COUNT(*) AS total_students 
FROM student_survey 
GROUP BY interview_count 
ORDER BY total_students DESC; 

-- Q7. Average Job Confidence Score

SELECT 
ROUND(AVG(job_confidence), 2) AS average_job_confidence 
FROM student_survey;

-- Q8. Job Confidence Distribution

SELECT 
job_confidence, 
COUNT(*) AS total_students 
FROM student_survey 
GROUP BY job_confidence 
ORDER BY job_confidence; 

-- Q9. Resume vs Job Confidence

SELECT 
has_resume, 
ROUND(AVG(job_confidence), 2) AS average_confidence 
FROM student_survey 
GROUP BY has_resume 
ORDER BY average_confidence DESC;

-- Q10. GitHub vs Job Confidence

SELECT 
has_github, 
ROUND(AVG(job_confidence), 2) AS average_confidence 
FROM student_survey
GROUP BY has_github 
ORDER BY average_confidence DESC;

-- Q11. LinkedIn vs Job Confidence

SELECT 
has_linkedin, 
ROUND(AVG(job_confidence), 2) AS average_confidence 
FROM student_survey 
GROUP BY has_linkedin 
ORDER BY average_confidence DESC;

-- Q12. Career Readiness Assets

SELECT COUNT(*) AS career_ready_students 
FROM student_survey 
WHERE has_resume = 'Yes'
AND has_linkedin = 'Yes' 
AND has_github = 'Yes';

-- Q13. Students Missing All Professional Assets

SELECT COUNT(*) AS students_needing_guidence 
FROM student_survey 
WHERE has_resume = 'No'
AND has_linkedin = 'No' 
AND has_github = 'No';

-- Q14. Employability Readiness Score

SELECT
    student_id,
    CASE
        WHEN has_resume = 'Yes'
         AND has_linkedin = 'Yes'
         AND has_github = 'Yes'
        THEN 'Highly Ready'

        WHEN has_resume = 'Yes'
          OR has_linkedin = 'Yes'
          OR has_github = 'Yes'
        THEN 'Moderately Ready'

        ELSE 'Needs Preparation'
    END AS employability_status
FROM student_survey;

-- Q15. Employability Status Summary

SELECT
    CASE
        WHEN has_resume = 'Yes'
         AND has_linkedin = 'Yes'
         AND has_github = 'Yes'
        THEN 'Highly Ready'

        WHEN has_resume = 'Yes'
          OR has_linkedin = 'Yes'
          OR has_github = 'Yes'
        THEN 'Moderately Ready'

        ELSE 'Needs Preparation'
    END AS employability_status,
    COUNT(*) AS total_students
FROM student_survey
GROUP BY employability_status
ORDER BY total_students DESC;














































































































