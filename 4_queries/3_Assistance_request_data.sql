
-- Assistance Requests Data
-- Each assistance request is related to a bunch of data like a teacher, student, assignment, and more. We want to be able to see all important data about an assistance request.

-- Instruction
-- Get important data about each assistance request.

-- Select the teacher's name, student's name, assignment's name, and the duration of each assistance request.
-- Subtract completed_at by started_at to find the duration.
-- Order by the duration of the request.




SELECT 
      te.name AS teacher,
      st.name AS student,
      asi.name AS assignment,
      completed_at - started_at AS duration
FROM assistance_requests ar
JOIN teachers te ON teacher_id = te.id
JOIN students st ON student_id = st.id
JOIN assignments asi ON assignment_id = asi.id
ORDER BY duration;