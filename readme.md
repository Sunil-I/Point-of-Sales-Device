
# Point of Sales Device
The developers and contributors involved in this project were:
- [Sunil Islam](https://github.com/Sunil-I)
- [Kayleigh Perera](https://github.com/KayleighPerera)
- [Kacper Stepniewski](https://github.com/eltonczlon123)
- [Liam Nicola](https://github.com/liamnicola)

# Contents
1) [Using the app](#using-the-app)
    - [How to set up](#how-to-setup)
    - [System Requirements](#system-requirements)

2) [Objectives](#objectives)

3) [Requirements](#requirements)

4) [Features](#features)

5) [Use Cases](#use-cases)
    - [User point of view](#user-point-of-view)
    - [Admin point of view](#admin-point-of-view)

6) [Contributions](#contributions)

7) [Testing](#testing)

8) [Project Digrams](#project-diagrams)
    - [UML Class diagram](#uml-class-diagram)
    - [Robustness diagram](#robustness-diagram)



# Using the app
You will need to open the project with Netbeans and deploy the web module, you can access the project [here](http://localhost:8080/).
![netbeans image](https://i.imgur.com/1UdWIq1.png)

The PinPad uses the number buttons to input a number in the selected text field, you will need to use the "select" button to choose which input the numpad will use. 
`Clear` - Clears the input label
`Back` - Removes the last digit in the input label

## How to setup

1) Clone the repo
```shell
git clone https://github.com/Sunil-I/COM528-AE1-B4
```
2) Open the project in netbeans and find the web module
3) Start the webserver
4) Go to http://localhost:8080/ 
![netbeans image](https://i.imgur.com/1UdWIq1.png)

## System Requirements
The system requirements for this program are:
- [Java JDK](https://www.oracle.com/java/technologies/downloads/#java8) version 11 or newer.
- [Apache Maven](https://maven.apache.org/install.html) 3.8 or newer
- [Tomcat 9](https://tomcat.apache.org/download-90.cgi)
- [Google Chrome](https://www.google.co.uk/chrome/) or [Firefox](https://www.mozilla.org/en-GB/firefox/new/)

# Objectives
The main goal of this application is for a user to enter and perform a transaction. 
It should allow users to enter card details such as a card number, expiry date, CVV.
Moreover it should also permit users to reverse a transaction as well as vlaidate the credit card.
besides this, it records all the sucessful and unsuccessful transactions.

# Requirements 
There are many requirements needed for this application to run in an efficent way, these features include:
1) The applciation uses java technology for the back end
2) The application uses javascript/css in the web client page.
3) We are required to use a logging framework to help the debugging within our application
4) All classes must be documented in Javadoc
5) It should capture and log all internal exceptions
6) Along with a meaningful error message for user generated exceptions

# Features
The application contains many basic aspects such as:
- A Pin Pad which allows the user to enter a reasonable number in the appropriate text box
- This Application includes buttons which permits users to send, return or check credit card
- We also added a properties page

# Use Cases 
There are many cases in which a user or admin can use this application for example:

## User point of view

| User | Action | Response|
|------|--------|---------|
| Step 1 | User enteres application URL in search engine | redirects user to home page | 
| Step 2 | User selects if they want to send, refund or check credit card| using statements, which allows application to change to the appropriate request |
| Step 3 | User enteres the correct card information | application checks if the credit card details are correct and vlaidates it using the luhn algorithm
| Step 4 | If user fails to enter card details | An error message is shown letting user know details must be entered|
| Step 5 | If user enters the wrong details | an error message is shown to correct the details |

## Admin point of view

|Admin | Action | Response|
|------|--------|---------|
| Step 1 | Admin tries to configure | Admin enters correct details and can configure the properties|
| Step 2 | Admin views transactions of user | All transactions are viewed using a LogRecord |
| Step 3 | Admin enters application | When the admin enteres the application, it will recognise the details |


# Contributions 
To start this project, all developers were split into different sections of the web interface in order to design and develop an adequate and running application as shown below. We communicated on several calls and messages as well as inteacted with eachother in class hours to catch up and guide eachother on improvements or deteriorations in the web application.

| Sunil Islam | Kacper Stepniewski | Liam Nicola | Kayleigh Perera |
|-------------|--------------------|-------------|-----------------|
| Github | UML Class Diagram  |Robustness Diagram|   Use Cases     |
|Testing| Design Application| Html/css |Features defintion|
|Refactoring Code|           | Wireframes    | Html/css|


# Testing
To meet the requirements of our application being able to compile in every environment possible we made use of CI/CD to run tests as well as compile our code to ensure that everything works as intended, you can view the builds [here](https://drone.proxied.cloud/Sunil-I/COM528-AE1-B4).

Build Status:

[![Build Status](https://drone.proxied.cloud/api/badges/Sunil-I/COM528-AE1-B4/status.svg)](https://drone.proxied.cloud/Sunil-I/COM528-AE1-B4)

Test Plan can be found [here](./documentation/tests.md).
# Project Diagrams

## Wireframes

## UML class diagram

This Class diagram describes the attributes and operations of a class and also the constraints imposed on the system. All  The user inputs details and the attributes is as follows card number, cvv, end date, issue number, set name. The credit card details are then sent over to the sender. You also have card from which stores details from the recipient.
all the objects are stored on the RestController 

![uml class diagram drawio](https://user-images.githubusercontent.com/71653944/142227560-061eb687-ed0d-4bb7-9041-8701055ebf38.png)


## Robustness diagram

The robusteness diagram below depicts how the user will interact with the website through an interface, which will process the user input and determine if the values are valid. If the inputs are valid, they will be stored in the domain. This diagram is used to show the main interactions between both user and domain and how they are connected.

![Robustness Diagram drawio](https://user-images.githubusercontent.com/72071568/142230780-9a49422c-bd86-4a17-9270-ebf396227c2a.png)

