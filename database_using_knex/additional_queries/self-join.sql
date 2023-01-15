-- Using self join finding the tutor and tutor leader information from the tutors table
SELECT
	t1.id AS tutor_id,
	t1.name AS tutor_name,
	t1.tutor_leader_id AS leader_id,
	t2.name AS leader_name
FROM
	tutors t1
	JOIN tutors t2 ON t1.tutor_leader_id = t2.id
		AND t1.tutor_leader_id IS NOT NULL;