# LAMP_application-
A user interface built with HTML and CSS that uses pymysql to query into a relational database and display the results

The application is made up of 5 components:
  1. an opening HTML page
  2. a CSS page
  3. a pymysql program
  4. a resulting HTML page, created in the python program 
  5. a SQL script to create and populate a mock dataset (made up data) --> This system is meant to replicate what a hospital database might look like. The SQL script to create the tables was forward engineered on MySQL Workbench and populated with insert queries. There are tables for patients, doctors, emergency contacts, doctor images, doctor profiles, and room numbers and locations. For a fully functioning hospital database we would also need patients' medical histories, supply inventory, nurses,security, equipment and usage, etc. The query for this application allows you to see a list of patients with their hospital room number, emergency contact, doctor, the doctor's image, and a link to the doctor's profile. I have included a zip file of the doctor images that are displayed in the resulting HTML page.

***Note: in order for this application to work on the web, one would need a python program called "credentials" with a host, username, password, and database name. I have not included my credentials file in this repository.
