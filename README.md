# _Pierre's Sweet and Savory Treats_

#### _Console application for an imaginary bakery shop using C#/.NET, MySQL and Entity Framework and identity to display authentication and many-to-many relationships, Oct 23rd 2020_

#### By _**Chloe Hellberg**_

![](Images/bakery.jpeg)

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
* _Clone the Project_
  * For cloning please use the following GitHub [tutorial](https://docs.github.com/en/enterprise/2.16/user/github/creating-cloning-and-archiving-repositories/cloning-a-repository)
  * Place files into a single directory
  * Go into appsettings.json and change the password to match your SQL password if needed
  * Run GitBASH in directory
  * Type "dotnet restore" to get bin and obj files
  * Type "dotnet run" in GitBash to run the program
  * Have fun exploring the application!

* _Configure Production Database Setup_
  * Open MySQL Workbench and select "create a new SQL tab for executing queries"
  * Setup with MySQL Statements - Schema instructions are located in PierresShoppe/chloe_hellberg.sql


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
