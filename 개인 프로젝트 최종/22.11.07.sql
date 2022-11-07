-- --------------------------------------------------------
-- 호스트:                          127.0.0.1
-- 서버 버전:                        8.0.30 - MySQL Community Server - GPL
-- 서버 OS:                        Win64
-- HeidiSQL 버전:                  11.3.0.6295
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- projectdb 데이터베이스 구조 내보내기
CREATE DATABASE IF NOT EXISTS `projectdb` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `projectdb`;

-- 테이블 projectdb.board 구조 내보내기
CREATE TABLE IF NOT EXISTS `board` (
  `num` int NOT NULL AUTO_INCREMENT,
  `id` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `name` varchar(10) NOT NULL,
  `subject` varchar(100) NOT NULL,
  `content` text NOT NULL,
  `regist_day` varchar(30) DEFAULT NULL,
  `hit` int DEFAULT NULL,
  `ip` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`num`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3;

-- 테이블 데이터 projectdb.board:~3 rows (대략적) 내보내기
/*!40000 ALTER TABLE `board` DISABLE KEYS */;
INSERT INTO `board` (`num`, `id`, `name`, `subject`, `content`, `regist_day`, `hit`, `ip`) VALUES
	(1, 'pks4877', '박근수', 'ㅁㄴㅇ', 'ㅁㄴㅇ', '2022년 10월 24일', 3, '0:0:0:0:0:0:0:1'),
	(2, 'pks4877', '박근수', 'ㅁㄴㅇㅇㅇ', 'ㅁㄴㅇㅁㄴㅇ', '2022년 10월 24일', 0, '0:0:0:0:0:0:0:1'),
	(3, 'pks4877', '박근수', 'ㅁㄴㅇㄴㅁㅇ', 'ㅁㄴㅇㅁㄴㅇㄴㅇㅁㄴㅇㅁㅇㅁㄴ', '2022년 10월 24일', 0, '0:0:0:0:0:0:0:1');
/*!40000 ALTER TABLE `board` ENABLE KEYS */;

-- 테이블 projectdb.member 구조 내보내기
CREATE TABLE IF NOT EXISTS `member` (
  `userID` varchar(20) NOT NULL,
  `userPassword` varchar(20) DEFAULT NULL,
  `userEmail` varchar(30) DEFAULT NULL,
  `userEnFirstName` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `userEnLastName` varchar(20) DEFAULT NULL,
  `userKoName` varchar(20) DEFAULT NULL,
  `userBirth` varchar(20) DEFAULT NULL,
  `userNumber` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`userID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- 테이블 데이터 projectdb.member:~0 rows (대략적) 내보내기
/*!40000 ALTER TABLE `member` DISABLE KEYS */;
INSERT INTO `member` (`userID`, `userPassword`, `userEmail`, `userEnFirstName`, `userEnLastName`, `userKoName`, `userBirth`, `userNumber`) VALUES
	('pks4877', '1234', 'pks4877@naver.com', 'Park', 'GeunSu', '박근수', '2000.1013', '01032304877');
/*!40000 ALTER TABLE `member` ENABLE KEYS */;

-- 테이블 projectdb.reservation 구조 내보내기
CREATE TABLE IF NOT EXISTS `reservation` (
  `r_number` int NOT NULL AUTO_INCREMENT,
  `r_id` varchar(30) NOT NULL,
  `r_adults` int NOT NULL,
  `r_kids` int NOT NULL,
  `r_checkin` date NOT NULL,
  `r_checkout` date NOT NULL,
  `r_type` varchar(50) NOT NULL,
  `r_price` int NOT NULL,
  `r_time` int DEFAULT NULL,
  PRIMARY KEY (`r_number`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- 테이블 데이터 projectdb.reservation:~5 rows (대략적) 내보내기
/*!40000 ALTER TABLE `reservation` DISABLE KEYS */;
INSERT INTO `reservation` (`r_number`, `r_id`, `r_adults`, `r_kids`, `r_checkin`, `r_checkout`, `r_type`, `r_price`, `r_time`) VALUES
	(7, 'pks4877', 2, 0, '2022-11-03', '2022-11-04', '로얄 스위트 룸', 16040000, 1);
/*!40000 ALTER TABLE `reservation` ENABLE KEYS */;

-- 테이블 projectdb.room 구조 내보내기
CREATE TABLE IF NOT EXISTS `room` (
  `room_id` int NOT NULL,
  `room_type` varchar(50) NOT NULL,
  `room_size` int NOT NULL,
  `room_capacity` int DEFAULT NULL,
  `room_price` int NOT NULL,
  `room_img` varchar(60) DEFAULT NULL,
  `room_count` int NOT NULL,
  PRIMARY KEY (`room_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- 테이블 데이터 projectdb.room:~10 rows (대략적) 내보내기
/*!40000 ALTER TABLE `room` DISABLE KEYS */;
INSERT INTO `room` (`room_id`, `room_type`, `room_size`, `room_capacity`, `room_price`, `room_img`, `room_count`) VALUES
	(1, '그랜드 디럭스 룸', 40, 2, 520000, 'room1.jpg', 1),
	(2, '프리미어 룸', 50, 2, 570000, 'room2.jpg', 1),
	(3, '시그니엘 프리미어 룸', 60, 2, 650000, 'room3.jpg', 1),
	(4, '디럭스 스위트 룸', 65, 2, 980000, 'room4.jpg', 1),
	(5, '프리미어 스위트 룸', 75, 2, 1560000, 'room5.jpg', 1),
	(6, '코리안 프리미어 룸', 40, 2, 660000, 'room6.jpg', 1),
	(7, '코리안 시그니엘 프리미어 룸', 45, 2, 700000, 'room7.jpg', 1),
	(8, '코리안 스위트 룸', 85, 2, 2500000, 'room8.jpg', 1),
	(9, '프레지덴셜 스위트 룸', 145, 2, 8000000, 'room9.jpg', 1),
	(10, '로얄 스위트 룸', 350, 2, 16000000, 'room10.jpg', 1);
/*!40000 ALTER TABLE `room` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
