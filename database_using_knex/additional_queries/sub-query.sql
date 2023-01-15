-- here we are using sub query to get the classes details for a given semester queried by semester code
SELECT
	*
FROM
	classes c
WHERE
	c.semester_id = (
		SELECT
			id
		FROM
			semesters s
		WHERE
			s.code = 'SF1'
		LIMIT 1);