-- equi join is also called as inner join
-- here we are trying to get tutors who are teaching classes in Online delivery mode

SELECT
	c.id AS class_id,
	t.id AS tutor_id,
	t.name AS tutor_name
FROM
	classes c
	JOIN tutors t ON t.id = c.tutor_id
WHERE
	c.delivery_style = 'Online'; 