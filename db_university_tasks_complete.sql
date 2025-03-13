SELECT *
FROM bept4_university.students
WHERE YEAR(`date_of_birth`) = 1990;

SELECT *
FROM bept4_university.courses
WHERE `cfu` > 10;

SELECT *
FROM bept4_university.students
WHERE TIMESTAMPDIFF(YEAR, `date_of_birth`, CURDATE()) > 30
ORDER BY `date_of_birth` DESC;

SELECT *
FROM bept4_university.courses
WHERE `period` = "I semestre"
AND `year` = 1;

SELECT *
FROM bept4_university.exams
WHERE `date` = "2020-06-20"
AND HOUR(`hour`) >= 14;

SELECT *
FROM bept4_university.degrees
WHERE `level` = "magistrale";

SELECT count(*)
FROM bept4_university.departments;

SELECT *
FROM bept4_university.teachers
WHERE `phone` IS NOT NULL;


INSERT INTO `bept4_university`.`students`
(`degree_id`,
`name`,
`surname`,
`date_of_birth`,
`fiscal_code`,
`enrolment_date`,
`registration_number`,
`email`)
VALUES
("25",
"Enrico",
"Renna",
"2001-04-25",
"RNNRC01D25D960P",
"2021-09-11",
"29848955",
"erenna39@gmail.com");



UPDATE `teachers`
SET `office_number` = 126
WHERE `id` = 58;


DELETE FROM `students`
WHERE `id` = 5001;
