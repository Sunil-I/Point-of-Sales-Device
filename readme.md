
# Point of Sales Device
The developers and contributors involved in this project were:
- [Sunil Islam](https://github.com/Sunil-I)
- [Kayleigh Perera](https://github.com/KayleighPerera)
- [Kacper Stepniewski](https://github.com/eltonczlon123)
- [Liam Nicola](https://github.com/liamnicola)

# Contents


# Using the app
You will need to open the project with Netbeans and deploy the web module, you can access the project [here](http://localhost:8080/).

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
### System Requirements
The system requirements for this program are:
- [Java JDK](https://www.oracle.com/java/technologies/downloads/#java8) version 11 or newer.
- [Apache Maven](https://maven.apache.org/install.html) 3.8 or newer
- [Tomcat 9](https://tomcat.apache.org/download-90.cgi)
- Web Browser: [Google Chrome](https://www.google.co.uk/chrome/) or [Firefox](https://www.mozilla.org/en-GB/firefox/new/)

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
- Buttons which permits users to send, return or check credit card

# Use Cases ******

# Contributions
To start this project, all developers were split into different sections of the web interface in order to design and develop an adequate and running application as shown below. We communicated on several calls and messages as well as inteacted with eachother in class hours to catch up and guide eachother on improvements or deteriorations in the web application.

| Sunil Islam | Kacper Stepniewski | Liam Nicola | Kayleigh Perera |
|-------------|--------------------|-------------|-----------------|
| Github | UML Class Diagram  |Robustness Diagram|   Use Cases     |
|Testing|--------------------| Html/css |Features defintion|
|Refactoring Code|--------------------|-------------| Html/css|


# Testing *******

# Project Diagrams ******

__UML class diagram__

This Class diagram describes the attributes and operations of a class and also the constraints imposed on the system.

![image](https://user-images.githubusercontent.com/71653944/141876925-81a8b8b8-0303-42ce-8c7e-ad82dce45d4a.png)


__Robustness diagram__

the Robusteness diagram shown below represnts a use case behaviour, showing participating
classes and software behaviour. This diagram shows that a user will insert details in a card reader provided
in the application. Then the user should enter their card number in order to get in contact with the bank client

![image](https://user-images.githubusercontent.com/71653944/141869418-7ab1f139-c016-470c-8767-3757bbf069f8.png)

