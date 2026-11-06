USE grados;

DELIMITER //
CREATE OR REPLACE PROCEDURE p_delete_all_data()
BEGIN 
	DELETE FROM graded;
	DELETE teaching_loads;
	DELETE FROM group_enrollments;
	DELETE FROM subject_enrollments;
	DELETE FROM groups;
	DELETE FROM subjects;
	DELETE FROM students;
	DELETE FROM professors;
	DELETE FROM degrees;
	DELETE FROM people;
END //
DELIMITER ;

CALL p_delete_all_data();

SELECT COUNT(*) AS total_grades FROM grades;
SELECT COUNT(*) AS total_students FROM students;
SELECT(*) AS total_people FROM people;
