-- если к факультету не относится ни одной группы, оставить пустое поле
SELECT
f.faculty_code,
f.faculty_name,
g.group_number,
g.max_people,
g.curator
FROM faculties f
LEFT JOIN groups g ON f.faculty_code = g.faculty_code;

-- если группа относится к факультету, не зарегистрированному в бд, оставить пустое поле
SELECT
f.faculty_code,
f.faculty_name,
g.group_number,
g.faculty_code AS group_faculty_code,
g.max_people,
g.curator
FROM faculties f
RIGHT JOIN groups g ON f.faculty_code = g.faculty_code;
