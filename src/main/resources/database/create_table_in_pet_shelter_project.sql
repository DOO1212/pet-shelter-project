CREATE TABLE `author` (
	`author_id`	INT	NOT NULL	PRIMARY KEY AUTO_INCREMENT,
	`member_id`	BIGINT	NOT NULL,
	`author_name`	VARCHAR(50)	NOT NULL
)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4;

CREATE TABLE `member` (
	`member_id`	BIGINT	NOT NULL	PRIMARY KEY AUTO_INCREMENT,
	`username`	VARCHAR(255)	NOT NULL,
	`password`	CHAR(64)	NOT NULL,
	`name`	VARCHAR(255)	NOT NULL,
	`gender`	CHAR(1)	NULL,
	`age`	INT	NULL,
	`email`	VARCHAR(255)	NULL,
	`phone`	VARCHAR(255)	NOT NULL,
	`has_pet`	TINYINT	NULL
)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4;

CREATE TABLE `pet_img` (
	`pet_img_id`	BIGINT	NOT NULL	PRIMARY KEY AUTO_INCREMENT,
	`pet_id`	BIGINT	NOT NULL,
	`ori_name`	VARCHAR(255)	NOT NULL,
	`saved_name`	VARCHAR(255)	NOT NULL
)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4;

CREATE TABLE `pet` (
	`pet_id`	BIGINT	NOT NULL	PRIMARY KEY AUTO_INCREMENT,
	`public_number`	VARCHAR(255)	NOT NULL,
	`public_date`	DATE	NOT NULL,
	`breed`	VARCHAR(255)	NULL,
	`pet_gender`	CHAR(1)	NULL,
	`is_neutered`	TINYINT	NULL,
	`age`	INT	NULL,
	`weight`	DECIMAL(5, 2)	NULL,
	`feature`	TEXT	NULL,
	`vaccination`	TEXT	NULL,
	`is_adopted`	TINYINT	NOT NULL
)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4;

CREATE TABLE `bookmark` (
	`bookmark_id`	BIGINT	NOT NULL	PRIMARY KEY AUTO_INCREMENT,
	`member_id`	BIGINT	NOT NULL,
	`pet_id`	BIGINT	NOT NULL
)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4;

CREATE TABLE `ask` (
	`ask_id`	BIGINT	NOT NULL	PRIMARY KEY AUTO_INCREMENT,
	`member_id`	BIGINT	NOT NULL,
	`content`	TEXT	NULL,
	`title`	VARCHAR(255)	NOT NULL,
	`created_at`	DATETIME	NOT NULL	DEFAULT CURRENT_TIMESTAMP,
	`updated_at`	DATETIME	NULL
)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4;

CREATE TABLE `donation` (
	`donation_id`	BIGINT	NOT NULL	PRIMARY KEY AUTO_INCREMENT,
	`member_id`	BIGINT	NOT NULL,
	`pet_id`	BIGINT	NOT NULL,
	`donation_date`	DATETIME	NOT NULL	DEFAULT CURRENT_TIMESTAMP,
	`donation_price`	BIGINT	NOT NULL
)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4;

ALTER TABLE `author` ADD CONSTRAINT `FK_member_TO_author_1` FOREIGN KEY (
	`member_id`
)
REFERENCES `member` (
	`member_id`
);

ALTER TABLE `pet_img` ADD CONSTRAINT `FK_pet_TO_pet_img_1` FOREIGN KEY (
	`pet_id`
)
REFERENCES `pet` (
	`pet_id`
);

ALTER TABLE `bookmark` ADD CONSTRAINT `FK_member_TO_bookmark_1` FOREIGN KEY (
	`member_id`
)
REFERENCES `member` (
	`member_id`
);

ALTER TABLE `bookmark` ADD CONSTRAINT `FK_pet_TO_bookmark_1` FOREIGN KEY (
	`pet_id`
)
REFERENCES `pet` (
	`pet_id`
);

ALTER TABLE `ask` ADD CONSTRAINT `FK_member_TO_ask_1` FOREIGN KEY (
	`member_id`
)
REFERENCES `member` (
	`member_id`
);

ALTER TABLE `donation` ADD CONSTRAINT `FK_member_TO_donation_1` FOREIGN KEY (
	`member_id`
)
REFERENCES `member` (
	`member_id`
);

ALTER TABLE `donation` ADD CONSTRAINT `FK_pet_TO_donation_1` FOREIGN KEY (
	`pet_id`
)
REFERENCES `pet` (
	`pet_id`
);

