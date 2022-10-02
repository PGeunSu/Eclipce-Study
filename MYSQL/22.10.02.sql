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


-- bookmarketdb 데이터베이스 구조 내보내기
CREATE DATABASE IF NOT EXISTS `bookmarketdb` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `bookmarketdb`;

-- 테이블 bookmarketdb.book 구조 내보내기
CREATE TABLE IF NOT EXISTS `book` (
  `b_id` varchar(10) NOT NULL,
  `b_name` varchar(20) DEFAULT NULL,
  `b_unitPrice` int DEFAULT NULL,
  `b_author` varchar(40) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `b_description` text,
  `b_publisher` varchar(20) DEFAULT NULL,
  `b_category` varchar(20) DEFAULT NULL,
  `b_unitsInStock` mediumtext,
  `b_totalPages` mediumtext,
  `b_releaseDate` varchar(20) DEFAULT NULL,
  `b_condition` varchar(20) DEFAULT NULL,
  `b_fileName` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  PRIMARY KEY (`b_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- 테이블 데이터 bookmarketdb.book:~3 rows (대략적) 내보내기
/*!40000 ALTER TABLE `book` DISABLE KEYS */;
INSERT INTO `book` (`b_id`, `b_name`, `b_unitPrice`, `b_author`, `b_description`, `b_publisher`, `b_category`, `b_unitsInStock`, `b_totalPages`, `b_releaseDate`, `b_condition`, `b_fileName`) VALUES
	('ISBN1234', 'HTML5+CSS3', 15000, '황재호', '워드나 PPT 문서를 만들 수 있나요? 그러면 문제 없습니다. 지금 바로 웹페이지 제작에 도전해보세요. 지금 당장 컴퓨터가 없어도 괜찮습니다. 코드와 실행 화면이 바로 보여서 눈으로만 읽어도 어떻게 작동하는지 쉽게 파악할 수 있는 것은 기본이고, 중간중간 퀴즈를 추가하여 재미있게 게임하듯 복습할 수 있습니다.', '한빛미디어', 'Hello Coding', '1000', '288', '2018/03/02', 'New', 'ISBN1234.jpg'),
	('ISBN1235', '쉽게 배우는 자바 프로그래밍', 27000, '우종중', '객체 지향의 핵심과 자바의 현대적 기능을 충실히 다루면서도초보자가 쉽게 학습할 수 있게 구성했습니다. 시각화 도구를 활용한 개념 설명과 군더더기 없는 핵심 코드를 통해 개념과 구현을 한 흐름으로 학습할 수 있습니다. 또한 ‘기초 체력을 다지는 예제 → 셀프 테스트 → 생각을 논리적으로 정리하며 한 단계씩 풀어 가는 도전 과제 → 스토리가 가미된 흥미로운 프로그래밍 문제’ 등을 통해 프로그래밍 실력을 차근차근 끌어올릴 수 있습니다', '한빛아카데미', 'IT모바일', '1000', '692', '2017/08/02', 'New', 'ISBN1235.jpg'),
	('ISBN1236', '스프링4 입문 ', 27000, '하세가와 유이치 , 오오노 와타루 ', '스프링은 단순히 사용 방법만 익히는 것보다 아키텍처를 어떻게 이해하고 설계하는지가 더 중요합니다. 예제를 복사해 붙여넣는 식으로는 실제 개발에서 스프링을 제대로 활용할 수 없습니다. 이 책에서는 웹 애플리케이션의 기초를 다지고 스프링 코어를 살펴보며 클라우드 네이티브 입문까지 다룹니다. 이제 막 실무에 뛰어든 웹 애플리케이션 초급자나 개발 경험은 있지만 스프링은 사용해본 적 없는 분을 대상으로 가능한 한 쉽게 설명합니다', '한빛미디어', 'IT모바일', '1000', '520', '2017/11/01', 'New', 'ISBN1236.jpg');
/*!40000 ALTER TABLE `book` ENABLE KEYS */;


-- exercisedb 데이터베이스 구조 내보내기
CREATE DATABASE IF NOT EXISTS `exercisedb` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `exercisedb`;

-- 테이블 exercisedb.student 구조 내보내기
CREATE TABLE IF NOT EXISTS `student` (
  `num` varchar(20) DEFAULT NULL,
  `depart` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `address` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- 테이블 데이터 exercisedb.student:~0 rows (대략적) 내보내기
/*!40000 ALTER TABLE `student` DISABLE KEYS */;
INSERT INTO `student` (`num`, `depart`, `name`, `address`, `phone`) VALUES
	('1123112321', '조리과', '박근수', NULL, '010-3230-4877');
/*!40000 ALTER TABLE `student` ENABLE KEYS */;


-- jspbook 데이터베이스 구조 내보내기
CREATE DATABASE IF NOT EXISTS `jspbook` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `jspbook`;

-- 테이블 jspbook.member 구조 내보내기
CREATE TABLE IF NOT EXISTS `member` (
  `id` varchar(20) NOT NULL,
  `passwd` varchar(20) DEFAULT NULL,
  `name` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- 테이블 데이터 jspbook.member:~2 rows (대략적) 내보내기
/*!40000 ALTER TABLE `member` DISABLE KEYS */;
INSERT INTO `member` (`id`, `passwd`, `name`) VALUES
	('1', '1234', '홍길순'),
	('2', '1235', '홍길동');
/*!40000 ALTER TABLE `member` ENABLE KEYS */;


-- webmarketdb 데이터베이스 구조 내보내기
CREATE DATABASE IF NOT EXISTS `webmarketdb` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `webmarketdb`;

-- 테이블 webmarketdb.member 구조 내보내기
CREATE TABLE IF NOT EXISTS `member` (
  `id` varchar(10) NOT NULL,
  `password` varchar(10) NOT NULL,
  `name` varchar(10) NOT NULL,
  `gender` varchar(4) DEFAULT NULL,
  `birth` varchar(10) DEFAULT NULL,
  `mail` varchar(30) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `address` varchar(90) DEFAULT NULL,
  `regist_day` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- 테이블 데이터 webmarketdb.member:~0 rows (대략적) 내보내기
/*!40000 ALTER TABLE `member` DISABLE KEYS */;
INSERT INTO `member` (`id`, `password`, `name`, `gender`, `birth`, `mail`, `phone`, `address`, `regist_day`) VALUES
	('pks4877', '1234', '박근수', '남', '2000/10/13', 'pks4877@naver.com', '010-3230-4877', '경기도 양주시 화합로 1426번길 39 ', '2022-09-30 14:21:31.235');
/*!40000 ALTER TABLE `member` ENABLE KEYS */;

-- 테이블 webmarketdb.product 구조 내보내기
CREATE TABLE IF NOT EXISTS `product` (
  `p_id` varchar(10) NOT NULL,
  `p_name` varchar(20) DEFAULT NULL,
  `p_unitPrice` int DEFAULT NULL,
  `p_description` text,
  `p_category` varchar(20) DEFAULT NULL,
  `p_manufacturer` varchar(20) DEFAULT NULL,
  `p_unitsInStock` mediumtext,
  `p_condition` varchar(20) DEFAULT NULL,
  `p_fileName` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `p_quantity` int DEFAULT NULL,
  PRIMARY KEY (`p_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- 테이블 데이터 webmarketdb.product:~5 rows (대략적) 내보내기
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` (`p_id`, `p_name`, `p_unitPrice`, `p_description`, `p_category`, `p_manufacturer`, `p_unitsInStock`, `p_condition`, `p_fileName`, `p_quantity`) VALUES
	('P1234', 'iPhone 6s', 800000, '1334X750 Renina HD display, 8-megapixel iSight Camera', 'Smart Phone', 'Apple', '1000', 'new', 'P1234.png', 0),
	('P1235', 'LG PC gram', 1500000, '3.3-inch,IPS LED display, 5rd Generation Intel Core processors\r\n   							', 'LG', 'Notebook', '500', NULL, 'P1235.png', 0),
	('P1236', 'Galaxy Tab S', 900000, '3.3-inch, 212.8*125.6*6.6mm,  Super AMOLED display, Octa-Core processor\r\n   							\r\n   							', 'Tablet', 'Samsung', '2000', NULL, 'P1236.png', 0),
	('P1237', 'MacBook Air M2', 1200000, 'M2 프로세스 장착				', 'Apple', '노트북', '2000', NULL, 'P1237.png', 0),
	('P1238', 'ASUS NoteBook', 689000, '사무 / 인강용 14인치 ntsc 45%\r\n   							', 'ASUS', '노트북', '5000', NULL, 'P1238.png', 0);
/*!40000 ALTER TABLE `product` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
