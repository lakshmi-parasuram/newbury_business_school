-- here we are using group function to average marks of English language learning activities 

SELECT
	l.id AS language_id,
	l.name AS language_name,
	AVG(la.marks) AS average_marks_in_english_learning_activities
FROM
	learning_activities la
	INNER JOIN learning_resources lr ON lr.id = la.learning_resource_id
	INNER JOIN languages l ON l.id = lr.language_id
WHERE
	l.id = 1
GROUP BY
	l.id,
	l.name;