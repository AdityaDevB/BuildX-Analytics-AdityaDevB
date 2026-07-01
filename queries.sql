-- Display all placed students

SELECT *
FROM placement_data
WHERE status = 'Placed';


-- Count students in each specialisation

SELECT specialisation,
COUNT(*) AS total_students
FROM placement_data
GROUP BY specialisation;



-- Average salary by specialisation

SELECT specialisation,
AVG(salary) AS average_salary
FROM placement_data
WHERE salary IS NOT NULL
GROUP BY specialisation
ORDER BY average_salary DESC;



-- Specialisations having more than 50 students

SELECT specialisation,
COUNT(*) AS total_students
FROM placement_data
GROUP BY specialisation
HAVING COUNT(*) > 50;


-- Find students whose degree type starts with Sci

SELECT *
FROM placement_data
WHERE degree_t LIKE 'Sci%';



-- Average degree percentage of placed students

SELECT specialisation,
AVG(degree_p) AS avg_degree
FROM placement_data
WHERE status='Placed'
GROUP BY specialisation
HAVING AVG(degree_p)>65
ORDER BY avg_degree DESC;


