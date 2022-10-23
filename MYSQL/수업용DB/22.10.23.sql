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
  `id` int unsigned DEFAULT NULL,
  `name` varchar(10) NOT NULL,
  `subject` varchar(100) NOT NULL,
  `content` text NOT NULL,
  `regist_day` varchar(30) DEFAULT NULL,
  `hit` int DEFAULT NULL,
  `ip` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`num`),
  UNIQUE KEY `foreign` (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb3;

-- 테이블 데이터 projectdb.board:~8 rows (대략적) 내보내기
/*!40000 ALTER TABLE `board` DISABLE KEYS */;
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

-- 테이블 데이터 projectdb.member:~1 rows (대략적) 내보내기
/*!40000 ALTER TABLE `member` DISABLE KEYS */;
INSERT INTO `member` (`userID`, `userPassword`, `userEmail`, `userEnFirstName`, `userEnLastName`, `userKoName`, `userBirth`, `userNumber`) VALUES
	('pks4877', '1234', 'pks4877@naver.com', 'Park', 'GeunSu', '박근수', '2000.1013', '01032304877');
/*!40000 ALTER TABLE `member` ENABLE KEYS */;

-- 테이블 projectdb.reply 구조 내보내기
CREATE TABLE IF NOT EXISTS `reply` (
  `userID` varchar(20) DEFAULT NULL,
  `replyID` int NOT NULL,
  `replyContent` varchar(20) DEFAULT NULL,
  `id` int unsigned DEFAULT NULL,
  `replyAvailable` int DEFAULT NULL,
  PRIMARY KEY (`replyID`),
  UNIQUE KEY `foreign` (`id`),
  CONSTRAINT `FK_reply_board` FOREIGN KEY (`id`) REFERENCES `board` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- 테이블 데이터 projectdb.reply:~0 rows (대략적) 내보내기
/*!40000 ALTER TABLE `reply` DISABLE KEYS */;
/*!40000 ALTER TABLE `reply` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
