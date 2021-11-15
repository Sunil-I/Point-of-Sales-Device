
# Point of Sales Device
The developers and contributors involved in this project were:
- [Sunil Islam](https://github.com/Sunil-I)
- [Kayleigh Perera](https://github.com/KayleighPerera)
- [Kacper Stepniewski](https://github.com/eltonczlon123)
- [Liam Nicola](https://github.com/liamnicola)


The application was built using Java EE technologies with a Multi-Module Maven Project Structure. It uses Java Server Pages and Javascript to extend the functionality of the html elements.

# Using the app
You will need to open the project with Netbeans and deploy the web module, the web app default access point [here](http://localhost:8080/).

The NumPad uses the number buttons to input a number in the selected text field, you will need to use the "select" button to choose which input the numpad will use. 
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
This system requirements for this program are:
- [Java JDK](https://www.oracle.com/java/technologies/downloads/#java8) version 11 or newer.
- [Apache Maven](https://maven.apache.org/install.html) 3.8 or newer
- [Tomcat 9](https://tomcat.apache.org/download-90.cgi)
- Web Browser: [Google Chrome](https://www.google.co.uk/chrome/) or [Firefox](https://www.mozilla.org/en-GB/firefox/new/)

# Objectives
The main goal of this application is for a user to enter and perform a transaction. 
It allows users to enter card details such as a card number, expiry date, CVV.
Moreover it also permits users to reverse a transaction as well as vlaidate the credit card

# Project Diagrams

__UML class diagram__

This Class diagram describes the attributes and operations of a class and also the constraints imposed on the system.

**insert diagram**

__Robustness diagram__

the Robusteness diagram shown below represnts a use case behaviour, showing participating
classes and software behaviour.

![image](https://user-images.githubusercontent.com/71653944/141869418-7ab1f139-c016-470c-8767-3757bbf069f8.png)

