CREATE DATABASE `chloe_hellberg` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */;
  USE `chloe_hellberg`;
  CREATE TABLE `Flavors` (
    `FlavorId` int(11) NOT NULL AUTO_INCREMENT,
    `FlavorName` longtext,
    `UserId` varchar(255) DEFAULT NULL,
    PRIMARY KEY (`FlavorId`),
    KEY `IX_Flavors_UserId` (`UserId`),
    CONSTRAINT `FK_Flavors_AspNetUsers_UserId` FOREIGN KEY (`UserId`) REFERENCES `aspnetusers` (`Id`) ON DELETE RESTRICT
  ) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
  CREATE TABLE `Treats` (
    `TreatId` int(11) NOT NULL AUTO_INCREMENT,
    `TreatName` longtext,
    `UserId` varchar(255) DEFAULT NULL,
    PRIMARY KEY (`TreatId`),
    KEY `IX_Treats_UserId` (`UserId`),
    CONSTRAINT `FK_Treats_AspNetUsers_UserId` FOREIGN KEY (`UserId`) REFERENCES `aspnetusers` (`Id`) ON DELETE RESTRICT
  ) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
  CREATE TABLE `FlavorTreat` (
    `FlavorTreatId` int(11) NOT NULL AUTO_INCREMENT,
    `TreatId` int(11) NOT NULL,
    `FlavorId` int(11) NOT NULL,
    PRIMARY KEY (`FlavorTreatId`),
    KEY `IX_FlavorTreat_FlavorId` (`FlavorId`),
    KEY `IX_FlavorTreat_TreatId` (`TreatId`),
    CONSTRAINT `FK_FlavorTreat_Flavors_FlavorId` FOREIGN KEY (`FlavorId`) REFERENCES `flavors` (`FlavorId`) ON DELETE CASCADE,
    CONSTRAINT `FK_FlavorTreat_Treats_TreatId` FOREIGN KEY (`TreatId`) REFERENCES `treats` (`TreatId`) ON DELETE CASCADE
  ) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;