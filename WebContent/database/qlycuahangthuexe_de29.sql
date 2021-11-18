-- MySQL dump 10.13  Distrib 8.0.22, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: quanlycuahangthuexe
-- ------------------------------------------------------
-- Server version	8.0.22

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `tblcuahang`
--

DROP TABLE IF EXISTS `tblcuahang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblcuahang` (
  `id` int NOT NULL AUTO_INCREMENT,
  `ten` varchar(45) DEFAULT NULL,
  `diachi` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `sdt` varchar(45) DEFAULT NULL,
  `mota` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblcuahang`
--

LOCK TABLES `tblcuahang` WRITE;
/*!40000 ALTER TABLE `tblcuahang` DISABLE KEYS */;
INSERT INTO `tblcuahang` VALUES (1,'F88','Dong Da','f88@gmail.com','0366367885','Nga 4 so Dong Da Ha Noi');
/*!40000 ALTER TABLE `tblcuahang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbldoitac`
--

DROP TABLE IF EXISTS `tbldoitac`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbldoitac` (
  `id` int NOT NULL AUTO_INCREMENT,
  `ten` varchar(45) DEFAULT NULL,
  `diachi` varchar(45) DEFAULT NULL,
  `sdt` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `cccd` varchar(45) DEFAULT NULL,
  `ghichu` varchar(45) DEFAULT NULL,
  `idHDongDTChoThueXe` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idHDongDTChoThueXe` (`idHDongDTChoThueXe`) /*!80000 INVISIBLE */,
  CONSTRAINT `idHDongDTChoThueXe_fk2` FOREIGN KEY (`idHDongDTChoThueXe`) REFERENCES `tblhdongdtchothuexe` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbldoitac`
--

LOCK TABLES `tbldoitac` WRITE;
/*!40000 ALTER TABLE `tbldoitac` DISABLE KEYS */;
INSERT INTO `tbldoitac` VALUES (1,'Doitac A','VinhPhuc','023456789','doitaca@gmail.com','111122223333','Nam',1),(2,'Doitac B','Ha Noi','045678912','doitacb@gmai.com','777788889999','Nu',2),(3,'Doitac C','Dong Da','0366365778','doitacc@gmai.com','0897541368','Nam',3),(4,'Doitac D','Ha Dong','0366367223','doitacd@gmail.com','09874562145','Nam',4),(5,'Doitac E','Hai Duong','0982356123','doitace@gmail.com','88855552222','Nu',5);
/*!40000 ALTER TABLE `tbldoitac` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblhdongdtchothuexe`
--

DROP TABLE IF EXISTS `tblhdongdtchothuexe`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblhdongdtchothuexe` (
  `id` int NOT NULL AUTO_INCREMENT,
  `ngaybd` date DEFAULT NULL,
  `ngaykt` date DEFAULT NULL,
  `ghichu` varchar(256) DEFAULT NULL,
  `trangthai` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblhdongdtchothuexe`
--

LOCK TABLES `tblhdongdtchothuexe` WRITE;
/*!40000 ALTER TABLE `tblhdongdtchothuexe` DISABLE KEYS */;
INSERT INTO `tblhdongdtchothuexe` VALUES (1,'2021-01-01','2021-02-02','Xe khong hong hoc, tray xuoc.Gia thue theo ngay',0),(2,'2021-02-02','2021-03-03','Xe khong hong hoc, tray xuoc.Gia thue theo ngay',0),(3,'2021-03-03','2021-04-04','Xe khong hong hoc, tray xuoc.Gia thue theo ngay',0),(4,'2021-04-04','2021-05-05','Xe khong hong hoc, tray xuoc.Gia thue theo ngay',1),(5,'2021-05-05','2021-06-06','Xe khong hong hoc, tray xuoc.Gia thue theo ngay',1);
/*!40000 ALTER TABLE `tblhdongdtchothuexe` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblhdongkhthuexe`
--

DROP TABLE IF EXISTS `tblhdongkhthuexe`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblhdongkhthuexe` (
  `id` int NOT NULL AUTO_INCREMENT,
  `ngaybd` date DEFAULT NULL,
  `ngaykt` date DEFAULT NULL,
  `ghichu` varchar(45) DEFAULT NULL,
  `idnhanvien` int DEFAULT NULL,
  `idkhachhang` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblhdongkhthuexe`
--

LOCK TABLES `tblhdongkhthuexe` WRITE;
/*!40000 ALTER TABLE `tblhdongkhthuexe` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblhdongkhthuexe` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblhdongkyguixedt`
--

DROP TABLE IF EXISTS `tblhdongkyguixedt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblhdongkyguixedt` (
  `id` int NOT NULL AUTO_INCREMENT,
  `ngaybd` date DEFAULT NULL,
  `ngaykt` date DEFAULT NULL,
  `ghichu` varchar(45) DEFAULT NULL,
  `trangthai` int DEFAULT NULL,
  `idnhanvien` int DEFAULT NULL,
  `iddoitac` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblhdongkyguixedt`
--

LOCK TABLES `tblhdongkyguixedt` WRITE;
/*!40000 ALTER TABLE `tblhdongkyguixedt` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblhdongkyguixedt` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblhdonkhtraxe`
--

DROP TABLE IF EXISTS `tblhdonkhtraxe`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblhdonkhtraxe` (
  `id` int NOT NULL AUTO_INCREMENT,
  `ngayxuat` date DEFAULT NULL,
  `thanhtien` float DEFAULT NULL,
  `ghichu` varchar(45) DEFAULT NULL,
  `idHDongKHThueXe` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblhdonkhtraxe`
--

LOCK TABLES `tblhdonkhtraxe` WRITE;
/*!40000 ALTER TABLE `tblhdonkhtraxe` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblhdonkhtraxe` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblhdonthanhlyxedt`
--

DROP TABLE IF EXISTS `tblhdonthanhlyxedt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblhdonthanhlyxedt` (
  `id` int NOT NULL AUTO_INCREMENT,
  `ngayxuat` date DEFAULT NULL,
  `thanhtien` float DEFAULT NULL,
  `ghichu` varchar(45) DEFAULT NULL,
  `idHDongDTChoThueXe` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idHDongDTChoThueXe` (`idHDongDTChoThueXe`),
  CONSTRAINT `idHDongDTChoThueXe_fk3` FOREIGN KEY (`idHDongDTChoThueXe`) REFERENCES `tblhdongdtchothuexe` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblhdonthanhlyxedt`
--

LOCK TABLES `tblhdonthanhlyxedt` WRITE;
/*!40000 ALTER TABLE `tblhdonthanhlyxedt` DISABLE KEYS */;
INSERT INTO `tblhdonthanhlyxedt` VALUES (6,'2021-11-18',4600000,'da thanh toan',1),(7,'2021-11-18',7200000,'da thanh toan',2),(8,'2021-11-18',11000000,'da thanh toan',3);
/*!40000 ALTER TABLE `tblhdonthanhlyxedt` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblhonghoc`
--

DROP TABLE IF EXISTS `tblhonghoc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblhonghoc` (
  `id` int NOT NULL AUTO_INCREMENT,
  `soluong` int DEFAULT NULL,
  `mota` varchar(45) DEFAULT NULL,
  `idloaihonghoc` int DEFAULT NULL,
  `idhoadonthanhlyxedt` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idloaihonghoc` (`idloaihonghoc`),
  KEY `idhoadonthanhlyxedt` (`idhoadonthanhlyxedt`),
  CONSTRAINT `idhoadonthanhlyxedt_fk2` FOREIGN KEY (`idhoadonthanhlyxedt`) REFERENCES `tblhdonthanhlyxedt` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `idloaihonghoc_fk1` FOREIGN KEY (`idloaihonghoc`) REFERENCES `tblloaihonghoc` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblhonghoc`
--

LOCK TABLES `tblhonghoc` WRITE;
/*!40000 ALTER TABLE `tblhonghoc` DISABLE KEYS */;
INSERT INTO `tblhonghoc` VALUES (8,2,'hong hoc loai Loai1',1,6),(9,2,'hong hoc loai Loai2',2,6),(10,2,'hong hoc loai Loai1',1,7),(11,2,'hong hoc loai Loai2',2,7),(12,2,'hong hoc loai Loai1',1,8),(13,2,'hong hoc loai Loai2',2,8);
/*!40000 ALTER TABLE `tblhonghoc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblkhachhang`
--

DROP TABLE IF EXISTS `tblkhachhang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblkhachhang` (
  `id` int NOT NULL AUTO_INCREMENT,
  `ten` varchar(45) DEFAULT NULL,
  `diachi` varchar(45) DEFAULT NULL,
  `sdt` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `cccd` varchar(45) DEFAULT NULL,
  `ghichu` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblkhachhang`
--

LOCK TABLES `tblkhachhang` WRITE;
/*!40000 ALTER TABLE `tblkhachhang` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblkhachhang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblloaihonghoc`
--

DROP TABLE IF EXISTS `tblloaihonghoc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblloaihonghoc` (
  `id` int NOT NULL AUTO_INCREMENT,
  `loai` varchar(45) DEFAULT NULL,
  `mota` varchar(45) DEFAULT NULL,
  `gia` float DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblloaihonghoc`
--

LOCK TABLES `tblloaihonghoc` WRITE;
/*!40000 ALTER TABLE `tblloaihonghoc` DISABLE KEYS */;
INSERT INTO `tblloaihonghoc` VALUES (1,'Loai1','tray xuoc',200000),(2,'Loai2','hong dong co',500000);
/*!40000 ALTER TABLE `tblloaihonghoc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblnhanvien`
--

DROP TABLE IF EXISTS `tblnhanvien`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblnhanvien` (
  `id` int NOT NULL AUTO_INCREMENT,
  `tendn` varchar(45) DEFAULT NULL,
  `matkhau` varchar(45) DEFAULT NULL,
  `ten` varchar(45) DEFAULT NULL,
  `ngaysinh` date DEFAULT NULL,
  `diachi` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `sdt` varchar(45) DEFAULT NULL,
  `ghichu` varchar(45) DEFAULT NULL,
  `vitri` int DEFAULT NULL,
  `idcuahang` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idcuahang` (`idcuahang`),
  CONSTRAINT `idcuahang_fk2` FOREIGN KEY (`idcuahang`) REFERENCES `tblcuahang` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblnhanvien`
--

LOCK TABLES `tblnhanvien` WRITE;
/*!40000 ALTER TABLE `tblnhanvien` DISABLE KEYS */;
INSERT INTO `tblnhanvien` VALUES (1,'tuan123','tuan123','do van tuan','1999-10-11','dong da','tuan123@gmail.com','0366367221','sinh vien',1,1);
/*!40000 ALTER TABLE `tblnhanvien` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbltsancamco`
--

DROP TABLE IF EXISTS `tbltsancamco`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbltsancamco` (
  `id` int NOT NULL AUTO_INCREMENT,
  `ten` varchar(45) DEFAULT NULL,
  `giatri` float DEFAULT NULL,
  `ghichu` varchar(45) DEFAULT NULL,
  `idHDongKHThueXei` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbltsancamco`
--

LOCK TABLES `tbltsancamco` WRITE;
/*!40000 ALTER TABLE `tbltsancamco` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbltsancamco` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblxe`
--

DROP TABLE IF EXISTS `tblxe`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblxe` (
  `id` int NOT NULL AUTO_INCREMENT,
  `ten` varchar(45) DEFAULT NULL,
  `bienso` varchar(45) DEFAULT NULL,
  `dongxe` varchar(45) DEFAULT NULL,
  `doixe` varchar(45) DEFAULT NULL,
  `mota` varchar(45) DEFAULT NULL,
  `idcuahang` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idcuahang` (`idcuahang`),
  CONSTRAINT `idcuahang_fk1` FOREIGN KEY (`idcuahang`) REFERENCES `tblcuahang` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblxe`
--

LOCK TABLES `tblxe` WRITE;
/*!40000 ALTER TABLE `tblxe` DISABLE KEYS */;
INSERT INTO `tblxe` VALUES (1,'Kia Morning','29A1-9999','4 cho','2021','mau xanh',1),(2,'Hyundai Grand i10','29A1-8888','4 cho','2021','mau đỏ',1),(3,'Vinfast Fadil','29A1-7777','4 cho','2021','mau bac',1),(4,'Toyota Wigo','29A1-6666','4 cho','2021','mau do',1),(5,'Honda Brio','29A1-5555','4 cho','2021','mau do',1),(6,'Suzuki Celerio','29A1-4444','4 cho','2020','mau do',1);
/*!40000 ALTER TABLE `tblxe` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblxedathuedt`
--

DROP TABLE IF EXISTS `tblxedathuedt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblxedathuedt` (
  `id` int NOT NULL AUTO_INCREMENT,
  `ngaythue` date DEFAULT NULL,
  `ngaytra` date DEFAULT NULL,
  `gia` float DEFAULT NULL,
  `idxe` int DEFAULT NULL,
  `idHDongDTChoThueXe` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idxe` (`idxe`) /*!80000 INVISIBLE */,
  KEY `idHDongDTChoThueXe` (`idHDongDTChoThueXe`),
  CONSTRAINT `idHDongDTChoThueXe_fk1` FOREIGN KEY (`idHDongDTChoThueXe`) REFERENCES `tblhdongdtchothuexe` (`id`),
  CONSTRAINT `idxe_fk1` FOREIGN KEY (`idxe`) REFERENCES `tblxe` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblxedathuedt`
--

LOCK TABLES `tblxedathuedt` WRITE;
/*!40000 ALTER TABLE `tblxedathuedt` DISABLE KEYS */;
INSERT INTO `tblxedathuedt` VALUES (1,'2021-01-01','2021-02-02',100000,1,1),(2,'2021-02-02','2021-03-03',200000,2,2),(3,'2021-03-03','2021-04-04',300000,3,3),(4,'2021-04-04','2021-05-05',400000,4,4),(5,'2021-05-05','2021-07-07',500000,5,5);
/*!40000 ALTER TABLE `tblxedathuedt` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblxekhdathue`
--

DROP TABLE IF EXISTS `tblxekhdathue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblxekhdathue` (
  `id` int NOT NULL AUTO_INCREMENT,
  `ngaythue` date DEFAULT NULL,
  `ngaytra` date DEFAULT NULL,
  `gia` float DEFAULT NULL,
  `idxe` int DEFAULT NULL,
  `idHDongKHThueXe` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblxekhdathue`
--

LOCK TABLES `tblxekhdathue` WRITE;
/*!40000 ALTER TABLE `tblxekhdathue` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblxekhdathue` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-11-18 23:59:47
