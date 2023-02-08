-- We need to be able to see the total amount of time being spent on an assistance request for each cohort. This number will tell use how much time is being spent on assistance requests for each cohort.

-- Instruction
-- Get the total duration of all assistance requests for each cohort.

-- Select the cohort's name and the total duration the assistance requests.
-- Order by total_duration.
-- Look at the ERD to see how to join the tables


SELECT co.name AS cohort, SUM(ar.completed_at - ar.started_at) AS total_duration
FROM 
      cohorts co
JOIN  students st            ON  co.id = cohort_id
JOIN  assistance_requests ar ON  st.id = ar.student_id
GROUP BY co.name
ORDER BY total_duration;