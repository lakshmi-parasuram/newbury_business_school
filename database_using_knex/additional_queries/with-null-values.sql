-- here we are trying to get values from tutors where the tutor leader information is not set or it is null
SELECT
	*
FROM
	tutors t
WHERE
	t.tutor_leader_id IS NULL;