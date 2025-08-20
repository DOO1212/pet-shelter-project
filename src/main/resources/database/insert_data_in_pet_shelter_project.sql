-- author 테이블 더미 데이터
INSERT INTO `author` (`author_id`, `author_name`) VALUES
(1, 'ROLE_USER'),
(2, 'ROLE_ADMIN');

-- member 테이블 더미 데이터
INSERT INTO `member` (`member_id`, `username`, `password`, `name`, `gender`, `age`, `email`, `phone`, `has_pet`, `account_non_expired`) VALUES
(1, 'user01', 'a1b2c3d4e5f6a1b2c3d4e5f6a1b2c3d4e5f6a1b2c3d4e5f6a1b2c3d4e5f6a1b2', '김지남', 'M', 28, 'jinam@example.com', '010-1234-5678', 1, 1),
(2, 'user02', 'b1c2d3e4f5a6b1c2d3e4f5a6b1c2d3e4f5a6b1c2d3e4f5a6b1c2d3e4f5a6b1c2', '박서준', 'F', 32, 'seojun@example.com', '010-8765-4321', 0, 0),
(3, 'admin01', 'c1d2e3f4a5b6c1d2e3f4a5b6c1d2e3f4a5b6c1d2e3f4a5b6c1d2e3f4a5b6c1d2', '이관리', 'M', 45, 'manager@example.com', '010-1111-2222', 1, 1);

-- member_author 테이블 더미 데이터
INSERT INTO `member_author` (`member_id`, `author_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(3, 2);

-- pet 테이블 더미 데이터
INSERT INTO `pet` (`pet_id`, `public_number`, `public_date`, `breed`, `pet_gender`, `is_neutered`, `age`, `weight`, `feature`, `vaccination`, `is_adopted`) VALUES
(1, '2025-Gyeonggi-00123', '2025-07-15', '믹스견', 'M', 1, 2, 5.50, '사람을 잘 따르고 애교가 많음. 다른 강아지들과도 잘 어울려요.', '5종 종합백신 완료, 광견병 주사 완료', 0),
(2, '2025-Seoul-00456', '2025-08-01', '코리안숏헤어', 'F', 1, 1, 3.20, '조용하고 얌전한 성격. 혼자서도 잘 지내지만, 부르면 와서 몸을 비빕니다.', '3종 종합백신 완료', 0),
(3, '2025-Busan-00789', '2025-08-10', '골든리트리버', 'M', 0, 5, 28.70, '대형견이지만 매우 순하고 영리함. 기본적인 훈련이 되어 있습니다.', '5종 종합백신 완료', 1);

-- pet_img 테이블 더미 데이터
INSERT INTO `pet_img` (`pet_id`, `ori_name`, `saved_name`) VALUES
(1, 'dog_image_01.jpg', '20250820_dog01_random_uuid.jpg'),
(1, 'dog_image_02.png', '20250820_dog02_random_uuid.png'),
(2, 'cat_image_01.jpg', '20250820_cat01_random_uuid.jpg'),
(3, 'retriever_image_01.jpg', '20250820_retriever01_random_uuid.jpg');

-- bookmark 테이블 더미 데이터
INSERT INTO `bookmark` (`member_id`, `pet_id`) VALUES
(1, 2),
(1, 3),
(2, 1);

-- ask 테이블 더미 데이터
INSERT INTO `ask` (`member_id`, `title`, `content`, `created_at`) VALUES
(1, '입양 절차에 대해 문의합니다.', '안녕하세요. 1번 아이 입양에 관심이 있는데, 전체적인 입양 절차와 필요한 서류가 무엇인지 알 수 있을까요?', '2025-08-18 10:30:00'),
(2, '후원금 사용 내역 문의', '정기적으로 후원을 하고 있는데, 후원금이 주로 어떤 곳에 사용되는지 궁금합니다.', '2025-08-19 14:00:00');

-- donation 테이블 더미 데이터
INSERT INTO `donation` (`member_id`, `pet_id`, `donation_date`, `donation_price`) VALUES
(1, 1, '2025-08-05 11:00:00', 50000),
(2, 3, '2025-08-12 18:20:00', 100000),
(3, 2, '2025-08-15 09:00:00', 30000);