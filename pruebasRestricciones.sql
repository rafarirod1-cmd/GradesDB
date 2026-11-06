INSERT INTO people (dni, first_name, last_name, age, email)
VALUES ('99999999Z', 'Juan', 'Test', 15, 'juan@test.es');

INSERT INTO people (dni, first_name, last_name, age, email)
VALUES ('88888888A', 'Ana', 'Test', 25, 'ana@test.es');

INSERT INTO people (dni, first_name, last_name, age, email)
VALUES ('88888888A', 'Pedro', 'Test', 30, 'pedro@test.es');

INSERT INTO people (person_id, dni, first_name, last_name, age, email)
VALUES (1000, '11111111A', 'Carlos', 'Profesor', 45, 'carlos@us.es');

INSERT INTO professors (professor_id, category)
VALUES (1000, 'Adjunto');

-- Primero necesitamos una persona
INSERT INTO people (person_id, dni, first_name, last_name, age, email)
VALUES (2000, '22222222B', 'María', 'Estudiante', 20, 'maria@us.es');


INSERT INTO students (student_id, access_method)
VALUES (2000, 'Erasmus');

INSERT INTO degrees (degree_name, duration_years)
VALUES ('Grado en Pruebas', 2);

INSERT INTO subjects (degree_id, subject_name, acronym, credits, course, subject_type)
VALUES (1, 'Asignatura Test', 'TST', 8, 1, 'Obligatoria');

INSERT INTO groups (subject_id, group_name, activity, academic_year)
VALUES (1, 'T1', 'Teoría', 1999);

INSERT INTO teaching_loads (professor_id, group_id, credits)
VALUES (1, 1, 0);

INSERT INTO grades (student_id, group_id, grade_value, exam_call, with_honors)
VALUES (1, 1, 8.5, 'Primera', 1);

