
-- We also need to know the average total amount of time being spent on an assistance request for each cohort. This is just the average of the total_duration column from the previous query.

-- Instruction
-- Calculate the average total duration of assistance requests for each cohort.

-- Use the previous query as a sub query to determine the duration per cohort.
-- Return a single row average_total_duration



SELECT AVG(total_duration) as average_total_duration
       
FROM (SELECT co.name AS cohort, SUM(ar.completed_at - ar.started_at) AS total_duration
FROM 
      cohorts co
JOIN  students st            ON  co.id = cohort_id
JOIN  assistance_requests ar ON  st.id = ar.student_id
GROUP BY co.name
ORDER BY total_duration) AS total_duration_table
