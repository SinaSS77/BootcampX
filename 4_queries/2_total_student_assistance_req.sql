-- Total Student Assistance Requests
-- We need to be able to see how many assistance requests any student has requested.

-- Instruction
-- Get the total number of assistance_requests for a student.

-- Select the student's name and the total assistance requests.
-- Since this query needs to work with any specific student name, use 'Elliot Dickinson' for the student's name here.




SELECT COUNT(ar.student_id) as total_assistances, st.name AS name
FROM assistance_requests ar
JOIN students st ON student_id = st.id
WHERE st.name = 'Elliot Dickinson'
GROUP BY name;
