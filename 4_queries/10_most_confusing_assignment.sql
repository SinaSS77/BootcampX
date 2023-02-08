-- We need to know which assignments are causing the most assistance requests.

-- Instruction
-- List each assignment with the total number of assistance requests with it.

-- Select the assignment's id, day, chapter, name and the total assistances.
-- Order by total assistances in order of most to least.

SELECT asi.id, asi.name, asi.day, asi.chapter, COUNT(asr.assignment_id) AS total_request
FROM assignments asi
JOIN assistance_requests asr ON asr.assignment_id = asi.id
GROUP BY asi.id
ORDER BY total_request DESC;