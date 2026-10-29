USE grados;


## consulta 1
SELECT *
FROM subjects;

## consulta 2
SELECT *
FROM subjects s
WHERE s.acronym='IISSi-1';

## consulta 5
SELECT p.first_name, p.last_name, st.access_method
FROM students st
JOIN people p ON st.student_id = p.person_id
WHERE st.access_method = 'Selectividad';

## consulta 6
SELECT p.first_name,p.last_name,pr.category
FROM professors pr
JOIN people p ON pr.professor_id = p.person_id
WHERE pr.category = 'Catedrático';

CREATE OR REPLACE VIEW v_professors AS
SELECT 
    pr.professor_id,
    pr.category,
    p.person_id,
    p.dni,
    p.first_name,
    p.last_name,
    p.age,
    p.email
FROM professors pr
JOIN people p ON pr.professor_id = p.person_id;


CREATE OR REPLACE VIEW v_students AS
SELECT 
    st.student_id,
    st.access_method,
    p.person_id,
    p.dni,
    p.first_name,
    p.last_name,
    p.age,
    p.email
FROM students st
JOIN people p ON st.student_id = p.person_id;

## consulta 7
SELECT AVG(g.grade_value) AS average_grades
FROM grades g
WHERE g.group_id = 1;


## consulta 8
SELECT SUM(s.credits) AS total_credits
FROM subjects s
WHERE s.degree_id = 3;

## consulta 10
SELECT activity, COUNT(*) AS total_groups
FROM groups
GROUP BY activity;

## consulta 13
SELECT g.grade_id, g.grade_value,g.exam_call
FROM grades g
WHERE g.grade_value < 5 OR g.grade_value > 9;


## consulta 14 
SELECT g.grade_id, g.grade_value,g.exam_call
FROM grades g
WHERE g.grade_value BETWEEN 5 AND 7;

## consulta 15
SELECT s.subject_name,s.credits
FROM subjects s
WHERE s.credits IN (6,12);

## consulta 16
SELECT p.first_name,p.last_name,p.age
FROM people p
WHERE p.age BETWEEN 20 AND 30;


## consulta 17
SELECT DISTINCT g.group_name
FROM groups g;

## consulta 18
SELECT DISTINCT s.subject_type
FROM subjects s;

## consulta 19
SELECT DISTINCT g.academic_year
FROM groups g 
ORDER BY g.academic_year DESC;

## consulta 20
SELECT MAX(g.grade_value) AS max_grade
FROM grades g
WHERE g.student_id = 6;

## consulta 21
SELECT DISTINCT ge.student_id
FROM group_enrollments ge
WHERE ge.group_id IN(
	SELECT g.group_id
	FROM groups g
	WHERE g.academic_year = 2024
);


## consulta 22
SELECT s.subject_name,s.credits
FROM subjects s
WHERE s.credits>(SELECT AVG(credits) FROM subjects);

## consulta 23
SELECT p.first_name, p.last_name, p.dni
FROM people p
WHERE p.dni LIKE '%A';

## consulta 24
SELECT s.subject_name
FROM subjects s
WHERE s.subject_name LIKE 'Fundamentos%';


## consulta 25
SELECT p.first_name, p.last_name
FROM people p
WHERE p.first_name LIKE '_____';


## consulta 26
SELECT g.group_name, g.activity,g.academic_year
FROM groups g
WHERE g.academic_year = 2024;

## consulta 27
SELECT g.group_name,g.activity,g.academic_year
FROM groups g
WHERE g.academic_year BETWEEN 2020 AND 2023
ORDER BY g.academic_year;
