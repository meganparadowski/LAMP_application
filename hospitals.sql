-- MySQL Script generated by MySQL Workbench
-- Sat Dec  2 15:11:39 2017
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

-- -----------------------------------------------------
-- Table specialties
-- -----------------------------------------------------
DROP TABLE IF EXISTS specialties;
CREATE TABLE specialties (
  specialty_id VARCHAR(45) NOT NULL,
  specialty_name VARCHAR(45) NOT NULL,
  PRIMARY KEY (specialty_id));
  
INSERT INTO specialties VALUES("S1","Family Medicine");
INSERT INTO specialties VALUES("S2","Orthopedic Surgery");
INSERT INTO specialties VALUES("S3","Anesthesiology");
INSERT INTO specialties VALUES("S4","Emergency Medicine");
INSERT INTO specialties VALUES("S5","Neurology");
INSERT INTO specialties VALUES("S6","Trauma");
INSERT INTO specialties VALUES("S7","Critical Care");
INSERT INTO specialties VALUES("S8","Pediatrics");
INSERT INTO specialties VALUES("S9","Plastic Surgery");
INSERT INTO specialties VALUES("S10","Radiology");
INSERT INTO specialties VALUES("S11","Internal Medicine");
INSERT INTO specialties VALUES("S12","Pathology");
INSERT INTO specialties VALUES("S13","Gynecology");
INSERT INTO specialties VALUES("S14","Dermatology");
INSERT INTO specialties VALUES("S15","Hematology");
INSERT INTO specialties VALUES("S16","Cardiology");
INSERT INTO specialties VALUES("S17","General Surgery");
INSERT INTO specialties VALUES("S18","Urology");
INSERT INTO specialties VALUES("S19","Otolaryngology");
INSERT INTO specialties VALUES("S20","Oncology");

-- -----------------------------------------------------
-- Table doctors
-- -----------------------------------------------------
DROP TABLE IF EXISTS doctors;
CREATE TABLE doctors (
  doctor_id VARCHAR(45) NOT NULL,
  doctor_name VARCHAR(45) NOT NULL,
  doctor_specialtyid VARCHAR(45) NOT NULL,
  doctor_image VARCHAR(45) NOT NULL,
  doctor_profile VARCHAR(45) NOT NULL,
  PRIMARY KEY (doctor_id),
  CONSTRAINT doctor_specialtyid
    FOREIGN KEY (doctor_specialtyid)
    REFERENCES specialties (specialty_id));
    
INSERT INTO doctors VALUES("D1","Meredith Grey","S13","meredith.jpg","http://www.imdb.com/character/ch0021666/?ref_=fn_al_ch_1");
INSERT INTO doctors VALUES("D2","Alex Karev","S9","alex.jpeg","http://www.imdb.com/character/ch0021673/?ref_=fn_al_ch_1");
INSERT INTO doctors VALUES("D3","Miranda Bailey","S1","miranda.jpg","http://www.imdb.com/character/ch0021676/?ref_=fn_al_ch_1");
INSERT INTO doctors VALUES("D4","Richard Webber","S17","richard.jpg","http://www.imdb.com/character/ch0021685/?ref_=fn_al_ch_1");
INSERT INTO doctors VALUES("D5","Owen Hunt","S6","owen.jpeg","http://www.imdb.com/character/ch0112566/?ref_=fn_al_ch_1");
INSERT INTO doctors VALUES("D6","Arizona Robbins","S8","arizona.jpg","http://www.imdb.com/character/ch0140842/?ref_=fn_al_ch_1");
INSERT INTO doctors VALUES("D7","Jackson Avery","S11","jackson.jpg","http://www.imdb.com/character/ch0169549/?ref_=fn_al_ch_1");
INSERT INTO doctors VALUES("D8","April Kepner","S7","april.jpg","http://www.imdb.com/character/ch0183088/?ref_=fn_al_ch_1");
INSERT INTO doctors VALUES("D9","Derek Shepherd","S5","derek.jpeg","http://www.imdb.com/character/ch0021668/?ref_=fn_al_ch_1");
INSERT INTO doctors VALUES("D10","Teddy Altman","S10","teddy.jpg","http://www.imdb.com/character/ch0184353/?ref_=fn_al_ch_1");
INSERT INTO doctors VALUES("D11","Preston Burke","S15","preston.jpg","http://www.imdb.com/character/ch0021674/?ref_=fn_al_ch_1");
INSERT INTO doctors VALUES("D12","Cristina Yang","S16","cristina.jpg","http://www.imdb.com/character/ch0021671/?ref_=fn_al_ch_1");


-- -----------------------------------------------------
-- Table rooms
-- -----------------------------------------------------
DROP TABLE IF EXISTS rooms;
CREATE TABLE rooms (
  room_id VARCHAR(45) NOT NULL,
  location VARCHAR(45) NULL,
  PRIMARY KEY (room_id));
  
INSERT INTO rooms VALUES("R1","Lower-level West Wing");
INSERT INTO rooms VALUES("R2","Lower-level North Wing");
INSERT INTO rooms VALUES("R3","Lower-level South Wing");
INSERT INTO rooms VALUES("R4","Lower-level East Wing");
INSERT INTO rooms VALUES("R5","Main Floor North Wing");
INSERT INTO rooms VALUES("R6","Main Floor East Wing");
INSERT INTO rooms VALUES("R7","Main Floor South Wing");
INSERT INTO rooms VALUES("R8","Main Floor West Wing");
INSERT INTO rooms VALUES("R9","Second Floor North Wing");
INSERT INTO rooms VALUES("R10","Second Floor East Wing");
INSERT INTO rooms VALUES("R11","Second Floor South Wing");
INSERT INTO rooms VALUES("R12","Second Floor West Wing");
INSERT INTO rooms VALUES("R13","Third Floor North Wing");
INSERT INTO rooms VALUES("R14","Third Floor East Wing");
INSERT INTO rooms VALUES("R15","Third Floor South Wing");
INSERT INTO rooms VALUES("R16","Third Floor West Wing");
INSERT INTO rooms VALUES("R17","Fourth Floor North Wing");
INSERT INTO rooms VALUES("R18","Fourth Floor East Wing");
INSERT INTO rooms VALUES("R19","Fourth Floor South Wing");
INSERT INTO rooms VALUES("R20","Fourth Floor West Wing");


-- -----------------------------------------------------
-- Table emergencyContacts
-- -----------------------------------------------------
DROP TABLE IF EXISTS emergencyContacts;
CREATE TABLE emergencyContacts (
  ec_id VARCHAR(45) NOT NULL,
  ec_name VARCHAR(45) NOT NULL,
  ec_phone INT NOT NULL,
  ec_email VARCHAR(45) NOT NULL,
  PRIMARY KEY (ec_id));
  
INSERT INTO emergencyContacts VALUES("EC1","Sarah Brown",7685594949,"sarahbrown@gmail.com");
INSERT INTO emergencyContacts VALUES("EC2","Grace Stingle",8965543345,"gstingle@hotmail.com");
INSERT INTO emergencyContacts VALUES("EC3","Ayala Abrams",2312223232,"amabrams@gmail.com");
INSERT INTO emergencyContacts VALUES("EC4","Becky Paradowski",9797656656,"beckyp1@gmail.com");
INSERT INTO emergencyContacts VALUES("EC5","John Smith",3499947576,"jsmith916@aol.com");
INSERT INTO emergencyContacts VALUES("EC6","Richard Simmons",8539283849,"richard@simmons.com");
INSERT INTO emergencyContacts VALUES("EC7","Barbara Jordan",7483957384,"barbjordan@gmail.com");
INSERT INTO emergencyContacts VALUES("EC8","George Smalling",4960385940,"gls25@hotmail.com");
INSERT INTO emergencyContacts VALUES("EC9","Erin Bartlett",3940382929,"erinbartlett@gmail.com");
INSERT INTO emergencyContacts VALUES("EC10","Jenny Caraway",3950382049,"jencar10@nyu.edu");
INSERT INTO emergencyContacts VALUES("EC11","Haley Wagner",3950382040,"hwagg@gmail.com");
INSERT INTO emergencyContacts VALUES("EC12","Mackenzie Morgan",3950849291,"mtmorgan@hotmail.com");
INSERT INTO emergencyContacts VALUES("EC13","Jeffrey Williams",3950284058,"jeffreyw@gmail.com");
INSERT INTO emergencyContacts VALUES("EC14","Judith Sanchez",3859372948,"jrsanchez@gmail.com");
INSERT INTO emergencyContacts VALUES("EC15","Aaron Samuels",8385038496,"asdavis@gmail.com");



-- -----------------------------------------------------
-- Table patients
-- -----------------------------------------------------
DROP TABLE IF EXISTS patients;
CREATE TABLE patients (
  patient_id VARCHAR(45) NOT NULL,
  patient_doctorid VARCHAR(45) NOT NULL,
  patient_name VARCHAR(45) NOT NULL,
  patient_roomid VARCHAR(45) NOT NULL,
  patient_phone INT NOT NULL,
  patient_email VARCHAR(45) NOT NULL,
  patient_insuranceName VARCHAR(45) NOT NULL,
  patient_insuranceNumber VARCHAR(45) NOT NULL,
  patient_checkin VARCHAR(45) NOT NULL,
  patient_checkout VARCHAR(45) NULL,
  patient_ecid VARCHAR(45) NOT NULL,
  PRIMARY KEY (patient_id),
  CONSTRAINT patient_doctorid
    FOREIGN KEY (patient_doctorid)
    REFERENCES doctors (doctor_id),
  CONSTRAINT patient_roomid
    FOREIGN KEY (patient_roomid)
    REFERENCES rooms (room_id),
  CONSTRAINT patient_ecid
    FOREIGN KEY (patient_ecid)
    REFERENCES emergencyContacts (ec_id));
    
INSERT INTO patients VALUES("P1","D8","Emily Brown","R3",8394503859,"emilybrown@gmail.com","Blue Cross Blue Shield",10009736585,"11/7/17",null,"EC1");
INSERT INTO patients VALUES("P2","D3","Jeanne Wagner","R6",3950382048,"jwagner@hotmail.com","HAP",2849759402303485,"10/18/17","11/18/17","EC11");
INSERT INTO patients VALUES("P3","D6","Bob Sanchez","R12",2948583938,"bobs27@aol.com","Consolidated Health",4958934935208249,"12/1/17",null,"EC14");
INSERT INTO patients VALUES("P4","D2","Sally Johnson","R16",3849503858,"sjohnson4@gmail.com","GeoBlue",893457983458989,"8/7/16","8/9/16","EC5");
INSERT INTO patients VALUES("P5","D10","Max Friedstein","R20",2947562834,"maxfriedstein@nyu.edu","Aetna",3297589940303849,"11/29/17",null,"EC8");
INSERT INTO patients VALUES("P6","D11","Davis Harris","R9",3958303844,"dharris08@gmail.com","Blue Cross Blue Shield",384856393099475,"10/30/17",null,"EC2");
INSERT INTO patients VALUES("P7","D1","Sam Morgan","R2",3958388495,"morgansam@hotmail.com","Consolidated Health",4843598709029,"11/20/17",null,"EC12");
INSERT INTO patients VALUES("P8","D4","Megan Samuels","R5",2289503443,"msamuels@yahoo.com","GeoBlue",434395873483939,"9/14/17",null,"EC15");
INSERT INTO patients VALUES("P9","D12","Gabe Caraway","R19",7685739574,"gabecaraway@aol.com","GeoBlue",938474987568924765,"11/22/17",null,"EC10");
INSERT INTO patients VALUES("P10","D9","Fen Bartlett","R13",3647583645,"bartlettf56@hotmail.com","UnitedHealthcare",482934857848043857,"10/15/16","11/1/16","EC9");
INSERT INTO patients VALUES("P11","D5","Alec Paradowski","R14",7423625366,"aparadowski2@gmail.com","Blue Cross Blue Shield",209488759384762,"12/1/17",null,"EC4");
INSERT INTO patients VALUES("P12","D7","Mark Abrams","R8",8758493905,"mabrams96@gmail.com","UnitedHealthcare",3284746735847928653,"11/29/17",null,"EC3");
