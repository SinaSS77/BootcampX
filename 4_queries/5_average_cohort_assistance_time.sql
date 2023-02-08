-- Average Cohort Assistance Time
-- We need to be able to see the average duration of a single assistance request for each cohort.

-- Instruction
-- Get the average duration of assistance requests for each cohort.

-- Select the cohort's name and the average assistance request time.
-- Order the results from shortest average to longest.

SELECT co.name AS name, AVG(ar.completed_at - ar.started_at) AS average_assistance_time
FROM 
      cohorts co
JOIN  students st            ON  co.id = cohort_id
JOIN  assistance_requests ar ON  st.id = ar.student_id
GROUP BY co.name
ORDER BY average_assistance_time ASC;