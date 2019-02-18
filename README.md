# HAIR SALON

This is a java application where an owner of a salon can add stylists to their shop and assign clients to the stylists.

#### By **Arunda Victor Oyugi**

## Description

 The hair salon application allows a user to add a stylist and assign a client to a specific stylist of choice. The application also allows the user to update or delete both the client's and the stylist's information.

## Setup/Installation Requirements
1. Clone the repository.
2. Navigate to the file.
3. Open with the text editor of your choice
4. Run "gradle run" to open the application on your browser.

#### To re-create the database, follow these steps;
In PSQL:
1. CREATE DATABASE hair_salon;
2. CREATE TABLE clients (id serial PRIMARY KEY, name varchar, stylistId int);
3. CREATE TABLE stylists (id serial PRIMARY KEY, name varchar);

## Behaviour driven Development (BDD)
|#User inputs   |  #Example outputs |         
|---------------|-------------------|
|When it receives:               | It should return:                  |
| User adds a stylist             | A stylist is added                |
| User adds a client to a stylist             | The client is assigned a particular stylist |
| User updates client's information             | The client's information is updated  |
| User deletes a client's information             | The client's information is deleted |
| User updates stylist's information             | The stylist's information is updated  |
| User deletes a stylist's information             | The stylist's information is deleted |


## Known Bugs
There are no known bugs as at now but in case of any you may find please contact me.


## Technologies and language used
This apllication was written using Java programming language.

* Java development kit (Java SDK) - for creating the application
* Java Runtime Environment (JRE) - for executing the application
* Sublime text - Text editor
* Gradle - build tool
* Git - version control environment
* Spark - web framework.
* Postgres SQL - Database

## Support and contact details
In case of any questions or feedback or clarifications, you can reach me at:
victoroyugi31@gmail.com
0705427223

### License
*Licenced under the [MIT Licence](LICENCE).*
Copyright (c) 2019 **Arunda Victor oyugi**
