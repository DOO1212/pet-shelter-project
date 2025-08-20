SELECT *
FROM member m
JOIN member_author ma USING(member_id)
JOIN author a USING(author_id)
WHERE m.username = 'user01' AND m.password = 'a1b2c3d4e5f6a1b2c3d4e5f6a1b2c3d4e5f6a1b2c3d4e5f6a1b2c3d4e5f6a1b2';

INSERT INTO member (username, password, name, gender, age, email, phone, has_pet)
VALUES ();