SELECT *
FROM member m
JOIN member_author ma USING(member_id)
JOIN author a USING(author_id)
WHERE m.username = 'user01' AND m.password = 'a1b2c3d4e5f6a1b2c3d4e5f6a1b2c3d4e5f6a1b2c3d4e5f6a1b2c3d4e5f6a1b2';

INSERT INTO member (username, password, name, gender, age, email, phone, has_pet)
VALUES (
'asdf'
,'F0E4C2F76C58916EC258F246851BEA091D14D4247A2FC3E18694461B1816E13B'
,'asdfName'
,'M'
,23
,'asdf@asdf.com'
,'000-0000-0000'
,0
);