# WILDLIFE TRACKER

This is a java application used to track wildlife sightings in an area.

#### By **Arunda Victor Oyugi**

## Description

 The application allows rangers to track wildlife sightings in an area. The user can add an animal to the system and report its sighting by providing details such as location, health and age. The animals added can eithr be endangered or not endangered. 

## Setup/Installation Requirements
1. Clone the repository.
2. Navigate to the file.
3. Open with the text editor of your choice
4. Run "gradle run" to open the application on your browser.

#### To re-create the database, follow these steps;
In PSQL:
* CREATE DATABASE wildlife_tracker;
* \c wildlife_tracker;
* CREATE TABLE animals (id serial PRIMARY KEY, name varchar);
* CREATE TABLE endangered_animals (id serial PRIMARY KEY, name varchar, health varchar, age varchar);
* CREATE TABLE sightings (id serial PRIMARY KEY, animal_id int, location varchar, ranger_name varchar);
* CREATE DATABASE wildlife_tracker_test WITH TEMPLATE wildlife_tracker;

## Behaviour driven Development (BDD)
|#User inputs   |  #Example outputs |         
|---------------|-------------------|
|When it receives:               | It should return:                  |
| User adds an animal             | An animal is added                |
| User adds an endangered animal             | An enedangered animal is added |
| User reports an animal sighting            | Animal sighting is reported  |



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
