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

INSERT INTO member_author (member_id, author_id)
VALUES (4, 1);

SELECT * FROM member m JOIN member_author ma USING(member_id) JOIN author a USING(author_id) 
WHERE m.username = 'w' AND m.password = 'UOch5JwBPwDGLPWfIWNUKp2N8CRk7+thXTEFGw/dwyY=';

SELECT * FROM member m JOIN member_author ma USING(member_id) JOIN author a USING(author_id) 
WHERE m.username = 'asdf' AND m.password = '8OTC92xYkW7CWPJGhRvqCR0U1CR6L8PhhpRGGxgW4Ts='; 

SELECT m.*, ma.*, a.*
FROM member m 
JOIN member_author ma USING(member_id) 
JOIN author a USING(author_id) 
WHERE m.username = 'asdf'; 
