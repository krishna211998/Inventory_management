
CREATE TABLE `admin` (
  `ADMINID` int(11) NOT NULL AUTO_INCREMENT,
  `ADMINUSERNAME` varchar(255) NOT NULL,
  `ADMINPASSWORD` varchar(255) NOT NULL,
  PRIMARY KEY (`ADMINID`),
  UNIQUE KEY `ADMINUSERNAME` (`ADMINUSERNAME`)
) 



CREATE TABLE `category` (
  `CATGID` int(11) NOT NULL AUTO_INCREMENT,
  `CATGNAME` varchar(255) NOT NULL,
  PRIMARY KEY (`CATGID`),
  UNIQUE KEY `CATGNAME` (`CATGNAME`)
) 


INSERT INTO `category` VALUES (9,'Air Conditioner'),(2,'Bike'),(5,'Book'),(3,'Computer'),(43,'HeadPhones'),(52,'laptops'),(4,'LCD TVs'),(50,'SunGlasses');



CREATE TABLE `product` (
  `PRODUCTID` int(11) NOT NULL AUTO_INCREMENT,
  `PRODUCTNAME` varchar(255) NOT NULL,
  `PRODUCTPRICE` double NOT NULL,
  `PRODUCTDESC` varchar(255) DEFAULT NULL,
  `CATGID` int(11) DEFAULT NULL,
  PRIMARY KEY (`PRODUCTID`),
  UNIQUE KEY `PRODUCTNAME` (`PRODUCTNAME`),
  KEY `FK185958CF82C65A8F` (`CATGID`),
  CONSTRAINT `FK185958CF82C65A8F` FOREIGN KEY (`CATGID`) REFERENCES `category` (`CATGID`)
) 


INSERT INTO `product` VALUES (1,'Sun',560,'book for java',5),(2,'Vestar',34000,'split ac',9),(3,'Voltas',25000,'very bad ac',9),(4,'BlueStar',30354,'window ac',9),(12,'Apache',80000,'180 cc ',2),(13,'hp G1234',32000,'i5- 3rd gen',3),(14,'lenovo g12',50000,'i7-2nd gen 8gb ram, 1tb hd',3),(15,'Ray Ban',5000,'Aviators',50),(16,'Head First ',500,'Java book for Beginners',5),(17,'Skul Candy',2000,'Known for bass effect',43),(18,'Sony Bravia',45000,'HD LCD 42\" Screen',4),(19,'Panasonic Viera',40000,'36\" LCD Sd ',4),(20,'Armani',5000,'Branded World Class Goggles',50),(21,'Pulsar',81000,'!50 cc Twin Spark Engine. 40 average',2),(22,'Spinkel',2000,'Colored HeadPhones',43),(23,'acer',20000,'cheaper laptops',52);


CREATE TABLE `user` (
  `USERID` int(11) NOT NULL AUTO_INCREMENT,
  `USERNAME` varchar(255) NOT NULL,
  `PASSWORD` varchar(255) NOT NULL,
  `EMAILID` varchar(255) NOT NULL,
  `MOBILENO` varchar(255) NOT NULL,
  PRIMARY KEY (`USERID`),
  UNIQUE KEY `USERNAME` (`USERNAME`)
) 


INSERT INTO `user` VALUES (1,'amit','user','amit@admin.com','9128347234'),(2,'atul','user','atul@admin.com','23746837');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;