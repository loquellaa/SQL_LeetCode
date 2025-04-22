-- Select the student ID, student name, subject name, and the count of attended exams per subject
SELECT 
    st.student_id,               -- Unique identifier for each student
    st.student_name,             -- Name of the student
    su.subject_name,             -- Name of the subject
    COUNT(e.subject_name) AS attended_exams  -- Number of times the student attended an exam for the subject
FROM 
    students st
-- Create all possible combinations of students and subjects
CROSS JOIN 
    subjects su
-- Attempt to match each student-subject pair with actual exam records
LEFT JOIN 
    examinations e
    ON e.student_id = st.student_id 
    AND e.subject_name = su.subject_name
-- Group the results by student and subject to count attended exams for each pair
GROUP BY 
    st.student_id, 
    st.student_name, 
    su.subject_name
-- Sort the final result by student ID and then by subject name in ascending order
ORDER BY 
    st.student_id, 
    su.subject_name;
