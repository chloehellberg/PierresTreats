# _Pierre's Sweet and Savory Treats_

#### _Console application for an imaginary bakery shop using C#/.NET, MySQL and Entity Framework and identity to display authentication and many-to-many relationships, Oct 23rd 2020_

#### By _**Chloe Hellberg**_


## Description

_This is an MVC web application for an imaginary bakery shop that helps the bakery owner market their sweet and savory treats. Application uses Identity and Authentication so that users have the ability to register, log in and log out of the application._
  * _Specific Functionality Includes_
    * User should be able to register, then log in and log out.
    * Only registered and logged in users should be able to have create, update, and delete functionality.
    * All users should be able to have read functionality.
    * There is a many-to-many relationship between Treat and Flavor Models.
      - A treat can have many flavors (such as sweet, savory, spicy) and a flavor can have many treats (Sweet - doughnuts, cheesecake, etc).
    * User should be able to navigate to a splash page that lists all treats and flavors.
    * User should be able to click on an individual treat or flavor to see all the treats/flavors that belong to it.
    * All CRUD methods implemented on at least one class.
    * Ability to view both sides of the many-to-many relationship.
   


## Setup/Installation Requirements

#### Project Folder Setup
* _Download Option_
  * Download files from GitHub repository by click Code and Download Zip
  * Extract files into a single directory
  * Go into appsettings.json and change the password to match your SQL password if needed
  * Run GitBASH in directory
  * Type "dotnet restore" to get bin and obj files
  * Type "dotnet run" in GitBash to run the program
  * Have fun exploring the application!

* _Cloning Option_
  * For cloning please use the following GitHub [tutorial](https://docs.github.com/en/enterprise/2.16/user/github/creating-cloning-and-archiving-repositories/cloning-a-repository)
  * Place files into a single directory
  * Go into appsettings.json and change the password to match your SQL password if needed
  * Run GitBASH in directory
  * Type "dotnet restore" to get bin and obj files
  * Type "dotnet run" in GitBash to run the program
  * Have fun exploring the application!

#### Production Database Setup

* Setup with SQL Statements
  * Enter the below code into your SQL database to create/run: 

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

## Known Bugs

_There are no known bugs at this time._

## Support and contact details

_If you run into issues, please email chloe.hellberg@gmail.com with questions or concerns. Feel free to contribute to this code._

[GitHub](https://github.com/chloehellberg)

## Technologies Used

_Main Programs_
  * C# and .NET
  * MySQL Workbench
  * Entity Framework
  * Identity
  * HTML
  * CSS and Bootstrap

### License

*Licensed under MIT*

Copyright (c) 2020 **_Chloe Hellberg_**