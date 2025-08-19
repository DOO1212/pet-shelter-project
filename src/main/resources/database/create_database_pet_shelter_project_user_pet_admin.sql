-- 1. db 생성
CREATE DATABASE pet_shelter_project;
SHOW DATABASES;
-- 2. 유저 생성
CREATE USER 'pet_admin'@'%' IDENTIFIED BY 'pet_admin';
SELECT user FROM mysql.user;
-- 3. 유저에게 권한 부여
GRANT ALL PRIVILEGES ON pet_shelter_project.* TO 'pet_admin'@'%';
SHOW GRANTS FOR 'pet_admin'@'%';
-- 권한 저장
FLUSH PRIVILEGES;