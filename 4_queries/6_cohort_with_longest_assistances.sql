-- Cohort With Longest Assistances
-- Instruction
-- Get the cohort with the longest average duration of assistance requests.

-- The same requirements as the previous query, but only return the single row with the longest average.

SELECT co.name AS name, AVG(ar.completed_at - ar.started_at) AS average_assistance_time
FROM 
      cohorts co
JOIN  students st            ON  co.id = cohort_id
JOIN  assistance_requests ar ON  st.id = ar.student_id
GROUP BY co.name
ORDER BY average_assistance_time DESC
LIMIT 1;