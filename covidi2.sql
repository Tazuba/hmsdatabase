/*Creating hospitaldatabase*/
CREATE DATABASE hospital;
USE hospital;

/*Creating DRUGS table*/
CREATE TABLE DRUGS
(
    drugID VARCHAR(10) PRIMARY KEY NOT NULL,
    drugName VARCHAR(20),
    manufID VARCHAR(10),
    FOREIGN KEY(manufID) REFERENCES MANUFACTURERS(manufID)
);

/*Creating NURSES table*/
CREATE TABLE NURSES
(
  nurseID VARCHAR(10) PRIMARY KEY,
  nurseName VARCHAR(20),
  wardID VARCHAR(10),
  FOREIGN KEY(wardID) REFERENCES WARDS(wardID)
);

/*Creating DIAGNOSIS table*/
CREATE TABLE DIAGNOSIS
(
   diagnosisID VARCHAR(10) PRIMARY KEY,
   diagnosisName VARCHAR(20)

);

/*Creating the  Wards table*/
CREATE TABLE WARDS
(
    wardID VARCHAR(10) PRIMARY KEY,
    wardName VARCHAR(20)

);

/*CREATing  MAnufacturs table*/
CREATE TABLE MANUFACTURERS
(
    manufID VARCHAR(10) PRIMARY KEY,
    manufacturer VARCHAR(20),
    city VARCHAR(20),
    country VARCHAR(20)
);

/*Creating patients table*/
CREATE TABLE PATIENTS
(
    patientID VARCHAR(10) PRIMARY KEY,
    patientName VARCHAR(20),
    DOB DATE,
    sex CHAR,
    district VARCHAR(20),
    diagnosisID VARCHAR(10),
    wardID VARCHAR(10),
    nurseID VARCHAR(10),
    drugID VARCHAR(10),
    admissionDate VARCHAR(10),
    dischargeDate DATE,
    FOREIGN KEY(diagnosisID) REFERENCES DIAGNOSIS(diagnosisID),
    FOREIGN KEY(wardID) REFERENCES WARDS(wardID),
    FOREIGN KEY(nurseID) REFERENCES NURSES(nurseID),
    FOREIGN KEY(drugID) REFERENCES DRUGS(drugID)
);

/*INSERTING DATA IN THE TABLES*/
INSERT INTO MANUFACTURERS (manufID,manufacturer,city,country)
VALUES
    ('MF001','A-FIRM','JINJA','UGANDA'),
    ('MF002','B-FIRM','KAMPALA','INDIA'),
    ('MF003','C-FIRM','MBARARA','UGANDA'),
    ('MF004','D-FIRM','JINJA','INDIA'),
    ('MF005','E-FIRM','JINJA','KENYA'),
    ('MF006','F-FIRM','SOROTI','INDIA'),
    ('MF007','G-FIRM','JINJA','INDIA'),
    ('MF008','H-FIRM','MBALE','UGANDA'),
    ('MF009','I-FIRM','JINJA','KENYA'),
    ('MF010','J-FIRM','JINJA','INDIA'),
    ('MF011','K-FIRM','JINJA','KENYA'),
    ('MF012','L-FIRM','MPIJI','UGANDA'),
    ('MF013','M-FIRM','JINJA','KENYA'),
    ('MF014','N-FIRM','KAMULI','UGANDA'),
    ('MF015','P-FIRM','JINJA','UGANDA'),
    ('MF016','Q-FIRM','MUKONO','UGANDA'),
    ('MF017','R-FIRM','JINJA','KENYA'),
    ('MF018','S-FIRM','ARUA','KENYA'),
    ('MF019','T-FIRM','JINJA','KENYA'),
    ('MF020','U-FIRM','JINJA','KENYA');
    
/*INSERTING DATA IN THE TABLES*/
INSERT INTO DIAGNOSIS (diagnosisID,diagnosisName)
VALUES
    ('DG001','MALARIA'),
    ('DG002','MALARIA'),
    ('DG003','COVID'),
    ('DG004','MALARIA'),
    ('DG005','TB'),
    ('DG006','AIDS'),
    ('DG007','MALARIA'),
    ('DG008','MALARIA'),
    ('DG009','MALARIA'),
    ('DG010','AIDS'),
    ('DG011','MALARIA'),
    ('DG012','MALARIA'),
    ('DG013','MALARIA'),
    ('DG014','MALARIA'),
    ('DG015','MALARIA'),
    ('DG016','MALARIA'),
    ('DG017','MALARIA'),
    ('DG018','AIDS'),
    ('DG019','TB'),
    ('DG20','TB');

    /*INSERTING DATA IN THE TABLES*/
INSERT INTO WARDS (wardID,wardName)
VALUES
    ('WD001','MALARIA-WARD'),
    ('WD002','MALARIA-WARD'),
    ('WD003','COVID-WARD'),
    ('WD004','MALARIA-WARD'),
    ('WD005','ADIS-WARD'),
    ('WD006','AIDS-WARD'),
    ('WD007','MALARIA-WARD'),
    ('WD008','MALARIA-WARD'),
    ('WD009','MALARIA-WARD'),
    ('WD010','AIDS-WARD'),
    ('WD011','MALARIA-WARD'),
    ('WD012','MALARIA-WARD'),
    ('WD013','MALARIA-WARD'),
    ('WD014','MALARIA-WARD'),
    ('WD015','MALARIA-WARD'),
    ('WD016','MALARIA-WARD'),
    ('WD017','MALARIA-WARD'),
    ('WD018','AIDS-WARD'),
    ('WD019','TB-WARD'),
    ('WD20','TB-WARD');

    /*INSERTING IN DRUGS TABLES*/
INSERT INTO DRUGS (drugID,drugName,manufID)
VALUES
    ('D001','Cymbalta','MF001'),
    ('D002','Cymbalta','MF002'),
    ('D003','Cymbalta','MF003'),
    ('D004','Cymbalta','MF004'),
    ('D005','Cymbalta','MF005'),
    ('D006','Cymbalta','MF006'),
    ('D007','Hydrochlorothiazide','MF007'),
    ('D008','Hydrochlorothiazide','MF008'),
    ('D009','Hydrochlorothiazide','MF009'),
    ('D010','Gabapentin','MF010'),
    ('D011','Doxycycline','MF011'),
    ('D012','Cymbalta','MF012'),
    ('D013','Cyclobenzaprine','MF013'),
    ('D014','Codeine','MF014'),
    ('D015','Clindamycin','MF015'),
    ('D016','Citalopram','MF016'),
    ('D017','Adderall','MF017'),
    ('D018','PANADO','MF018'),
    ('D019','QUATEM','MF019'),
    ('D020','KAZILE','MF020');

    /*INSERTING IN NURSES TABLES*/
INSERT INTO NURSES (nurseID,nurseName,wardID)
VALUES
    ('N001','KASUBO JANE','WD001'),
    ('N002','KASUBO JOAN','WD002'),
    ('N003','KASUBO BRIDGET','WD003'),
    ('N004','KASUBO ANNAH','WD011'),
    ('N005','KASUBO CLAIRE','WD014'),
    ('N006','KASUBO CARO','WD006'),
    ('N007','KASUBO MARY','WD007'),
    ('N008','ASIMWE NATASH','WD011'),
    ('N009','ASIMWE JANET','WD011'),
    ('N010','ASIMWE LINDA','WD011'),
    ('N011','ASIMWE JANE','WD011'),
    ('N012','BAKITA CLAIRE','WD012'),
    ('N013','NANGOBI SANDARA','WD013'),
    ('N014','NAMULONDO WINNIE','WD014'),
    ('N015','Clindamycin SCOT','WD001'),
    ('N016','Citalopram JAMES','WD016'),
    ('N017','COVID VIRUS','WD017'),
    ('N018','ATUKYASE MORRINE','WD018'),
    ('N019','NAMPALA ANGEL','WD019'),
    ('N020','LOGOSE PATRICIA','WD20');


/*INSERTING DATA IN THE PATIENTS TABLES*/
INSERT INTO  PATIENTS
(
    patientID,
    patientName,
    DOB,
    sex,
    district,
    diagnosisID,
    wardID,
    nurseID,
    drugID,
    admissionDate,
    dischargeDate
)
VALUES
    ('P001','NATAKUSHE MORRINE','1996-06-15','F','Mbarara','DG001','WD001','N001','D001','2016-08-08','2016-09-08'),
    ('P002','NATAKUSHE JANE','1996-06-15','F','Mbarara','DG001','WD001','N001','D001','2016-08-08','2016-09-08'),
    ('P003','ASIMWE NATASHA','1998-06-15','F','KABALE','DG001','WD002','N002','D001','2016-08-08','2016-09-08'),
    ('P004','TABAN ALI','1970-06-15','M','KAMPALA','DG003','WD003','N003','D003','2020-08-08','2020-09-08'),
    ('P005','KASIBA ALI','1990-06-15','M','KAMULI','DG003','WD003','N003','D003','2020-08-08','2020-09-08'),

    ('P006','KAUMA MORRINE','1996-06-15','F','Mbarara','DG005','WD20','N019','D001','2016-08-08','2016-09-08'),
    ('P007','KAMBA JANE','1998-06-15','F','SOROTI','DG001','WD001','N001','D001','2016-08-08','2016-09-08'),
    ('P008','LONGOLE JOHN','1999-06-15','M','LIRA','DG001','WD009','N005','D009','2019-08-08','2020-09-08'),
    ('P009','TAMBULA SALI','1999-06-15','M','KAMPALA','DG003','WD003','N003','D003','2020-08-08','2020-09-08'),
    ('P010','KASIRWE ALI','1920-06-15','M','KAMULI','DG005','WD20','N020','D019','2017-08-08','2017-09-08');


--QUERY TO FETCH THE REQUIRED DATA
SELECT
    P.patientID,
    P.patientName,
    P.DOB,
    P.district,
    DIA.diagnosisName,
    W.wardName,
    N.nurseName,
    D.drugName,
    M2.manufacturer,
    M2.country
FROM DIAGNOSIS DIA
INNER JOIN PATIENTS P ON DIA.diagnosisID = P.diagnosisID
INNER JOIN WARDS W ON W.wardID = P.wardID
INNER JOIN DRUGS D ON D.drugID = P.drugID
INNER JOIN NURSES N ON N.nurseID = P.nurseID

INNER JOIN MANUFACTURERS M2 ON D.manufID =  M2.manufID
INNER JOIN NURSES N2 ON N2.wardID =  W.wardID;






