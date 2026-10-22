USE grados;

DELIMITER //
CREATE OR REPLACE PROCEDURE p_delete_all_data()
BEGIN 
	DELETE FROM graded;
	DELETE teaching_loads;
	DELETE FROM students_groups;
	DELETE FROM students_subjects;
	DELETE FROM groups;
	DELETE FROM subjects;
	DELETE FROM students;
	DELETE FROM professors;
	DELETE FROM degrees;
	DELETE FROM people;
END //
DELIMITER ;

SELECT COUNT(*) AS total_grades FROM grades;
SELECT COUNT(*) AS total_students FROM students;
SELECT(*) AS total_people FROM people;
