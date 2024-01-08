
-----------------     PROJECT           ----------------------------------------------------
--------------   Title: CARE AND CURE   ---------------------------------------


           /* Creating tables and Inserting data
              Identiying Primary keys and Foreign keys 
              and Also specified the data type           */



CREATE TABLE collaborations (
    collaborationsID    int not null,  
    collaborationstitle   varchar2(50) , 
    primary key (collaborationsID)  
 );  
 
Insert into  collaborations values  (2008 , 'Tsunami' ); 
Insert into  collaborations values   (1001 ,  'flood')  ;
Insert into  collaborations values   (3564 , 'baghvan') ;
Insert into  collaborations values   (3547 , 'dhoom')   ;
Insert into  collaborations values  (3575 , 'flight')  ;
Insert into  collaborations values  (5643 , 'shot')    ;
Insert into  collaborations values  (3456 , 'jindha')    ;
Insert into  collaborations values (5640 , 'aviator') ;
Insert into  collaborations values  (5649 , 'eradication');
Insert into  collaborations values   (5647 , 'pink')    ;

 /*   Collaborations table created and 10 values inserted */


CREATE TABLE drug (
   drugcode int not null,
   drugname varchar2(20),
   drugcomposition varchar2(100),
   primary key (drugcode)
);

insert into Drug values (70,'American','Indigo' );
insert into Drug values (58,'Depakene','Orange');
insert into Drug values (8,'CARMEXN','Maroon');
insert into Drug values (47,'Methyle','Mar');
insert into Drug values (7,'Salt','Khaki');
insert into Drug values (94,'Stay ','Violet');
insert into Drug values (54,'Plus ','Aquamarine');
insert into Drug values (10,'Lanso','Yellow');
insert into Drug values (90,'Nice','Marn');
insert into Drug values (57,'citaloe','Violet');

   /*    Drug table created and 10 values inserted  */
   

CREATE TABLE Treatment (
   treatmentID int not null,
   phasenumber int,
   numberofpatients int,
   drugcode int,
   primary key (treatmentID),
   foreign key (drugcode) references drug(drugcode)
);

insert into treatment values (123,6,45,70);
insert into treatment values (321,3,50,58);
insert into treatment values (345,4,55,8);
insert into treatment values (443,1,60,47);
insert into treatment values (335,15,65,7);
insert into treatment values (778,12,70,94);
insert into treatment values (253,11,69,54 );
insert into treatment values (234,7,80,10);
insert into treatment values (111,5,85,90);
insert into treatment values (675,10,90,57);

/*     Treatment table created and 10 values inserted  */

CREATE TABLE doctor (
   doctorID int not null,
   firstname varchar2(20),
   lastname varchar2(20),
   specialization varchar2(50),
   treatmentID int,
   primary key (doctorID),
   foreign key (treatmentID) references treatment(treatmentID)
);

insert into Doctor values (12,'Hakim','Stranger','MD',123);
insert into Doctor values (13,'Salomon','Gladstone','MBBS',321 ); 
insert into Doctor values (34,'Edsel','Van der Merwe','M PHARM',345);
insert into Doctor values (56,'Brianne','Aggett','Neuro',443);
insert into Doctor values (54,'Jemie','Jerson','Nephro',335);
insert into Doctor values (11,'Garrard','Lorans','Ortho',778);
insert into Doctor values (77,'Vasily','Rabier','Cardio',253); 
insert into Doctor values (23,'Mario','Borwick','ENT',234); 
insert into Doctor values (99,'Ede','Gaymar','SKIN',111);
insert into Doctor values (90,'Prudence','Presnell','Dental',675);

 /*    Doctor table created and 10 values inserted    */


CREATE TABLE tests (
   testID int not null,
   testcost int,
   testtaken varchar2(50),
   primary key(testID)
);

insert into tests values (4967390129,'76.23','Risperidone');
insert into tests values (3718347121,'31.34','Acetaminophen');
insert into tests values (4542591794,'39.56','Pollens-Trees');
insert into tests values (3298250635,'78.92','Depakene');
insert into tests values (5049000041,'97.23','Oxaliplatin');
insert into tests values (2148843680,'22.17','Atenolol');
insert into tests values (1248939689,'96.95','Ceftriaxone');
insert into tests values (2396215477,'37.13','Ambien');
insert into tests values (8295520148,'14.9','Previfem');
insert into tests values (5067870370,'27.88','Dextrose');

   /*  Tests table created and 10 values inserted   */

CREATE TABLE volunteers (
   volunteerID int not null,
   avail varchar2(20),
   primary key (volunteerID)
);

insert into volunteers values (200, '6hours');
insert into volunteers values (100, '3hours');
insert into volunteers values (356 , '8hours');
insert into volunteers values (354 , '4hours');
insert into volunteers values (357 , '5hours');
insert into volunteers values (564 , '6hours');
insert into volunteers values (345 , '12hours');
insert into volunteers values (64 , '9hours');
insert into volunteers values (56 , '7hours');
insert into volunteers values (54 , '14hours');

/*    volunteers table created and 10 values inserted  */



CREATE TABLE sponsors (
   sponsorcode int not null,
   collaborationsID int,
   primary key(sponsorcode),
   foreign key (collaborationsID) references collaborations(collaborationsID)
);

insert into sponsors values (890,2008);
insert into sponsors values (198,1001);
insert into sponsors values (564,3564);
insert into sponsors values (547,3547);
insert into sponsors values (575,3575);
insert into sponsors values (643,5643);
insert into sponsors values (456,3456);
insert into sponsors values (640,5640);
insert into sponsors values (649,5649);
insert into sponsors values (647,5647);

/*        Sponsors table created and 10 values inserted    */ 

CREATE TABLE patients   (
   patientOPDID int not null,
   doctorID int,
   testID int,
   primary key(patientOPDID),
   foreign key (doctorID) references doctor(doctorID),
   foreign key (testID) references tests(testID)
    
);

insert into patients values (8890,12,4967390129); 
insert into patients values (7776,13,3718347121);
insert into patients values (4443,34,4542591794);
insert into patients values (5432,56,3298250635);
insert into patients values (6751,54,5049000041);
insert into patients values (3421,11,2148843680);
insert into patients values (8754,77,1248939689);
insert into patients values (1287,23,2396215477);
insert into patients values (9901,99,8295520148);
insert into patients values (4456,90,5067870370);

  /* Patients table created and 10 values inserted    */
  

CREATE TABLE financialrecords (
   transactionID int not null,
   transactionamount int,
   primary key(transactionID)
);

insert into financialrecords values (90129,76);
insert into financialrecords values (90720,73);
insert into financialrecords values (47121,34);
insert into financialrecords values (91794,36);
insert into financialrecords values (50635,72);
insert into financialrecords values (00041,93);
insert into financialrecords values (43680,27);
insert into financialrecords values (39689,95);
insert into financialrecords values (15477,33);
insert into financialrecords values (20148,19);

  /*  Financialrecords table created and 10 values inserted   */

CREATE TABLE org (
   employeeID int not null ,
   patientOPDID int ,
   sponsorcode int,
   transactionID int,
   volunteerID int,
   primary key (employeeID),
   foreign key (patientOPDID) references patients(patientOPDID),
   foreign key (sponsorcode) references sponsors(sponsorcode),
   foreign key (transactionID) references financialrecords(transactionID),
   foreign key (volunteerID) references volunteers(volunteerID)
);

insert into org values (1111,8890,890,90129,200); 
insert into org values (2222,7776,198,90720,100); 
insert into org values (3333,4443,564,47121,356);
insert into org values (4444,5432,547,91794,354);
insert into org values (5555,6751,575,50635,357);
insert into org values (6666,3421,643,00041,564);
insert into org values (7777,8754,456,43680,345); 
insert into org values (8888,1287,640,39689,64); 
insert into org values (9999,9901,649,15477,56);
insert into org values (11110,4456,647,20148,54);


   /*    Org as Organisation table created and 10 values inserted  */


                  /*       STORED PROCEDURES */
                  
                  

--STORED PROCEDURE 1 Innerjoin
 
 
CREATE PROCEDURE GetTestsList_sp

AS GTL SYS_REFCURSOR; 
 
 /*-------------------------------------------------------------------------------------------------
CREATED: October 3, 2022
AUTHOR:  Group 1 
DESCRIPTION: Used by the doctor , organisation  to pull up tests data.

 Example: EXEC GetTestsList_sp
	
 CHANGE HISTORY
 Date			Modified By		Notes
 10/01/2022		Group 1		Procedure Created 
----------------------------------------------------------------------------------------------------*/

BEGIN

OPEN GTL FOR

SELECT    	tests.testID, tests.testcost, tests.testtaken, patients.patientOPDID, patients.doctorID
FROM	    tests 
INNER JOIN  patients 
ON          patients.testid = tests.testid ;   
 
DBMS_SQL.RETURN_RESULT(GTL);    
    
END;

  
  
  
--STORED PROCEDURE 2 Union Query

CREATE PROCEDURE GetDoctorList_sp

AS GDL SYS_REFCURSOR; 
 
 /*-------------------------------------------------------------------------------------------------
CREATED: October 3, 2022
AUTHOR:  Group 1 
DESCRIPTION: Used by the organisation  to pull up Doctor Details.

 Example: EXEC GetDoctorList_sp
	
 CHANGE HISTORY
 Date			Modified By		Notes
 10/01/2022		Group 1		Procedure Created 
----------------------------------------------------------------------------------------------------*/

 BEGIN

OPEN GDL FOR

    SELECT	doctorid
    FROM	doctor 
    UNION
    select  doctorid 
    FROM    patients ;
    
DBMS_SQL.RETURN_RESULT(GDL);    
    
END;





--STORED PROCEDURE 3 Nested Query 

CREATE PROCEDURE GetDoctorDetails_sp

AS GDD SYS_REFCURSOR; 
 
 /*-------------------------------------------------------------------------------------------------
CREATED: October 1, 2022
AUTHOR:  Group 1 
DESCRIPTION: Used by the organisation to pull up DOCTOR details

 Example: EXEC GetDoctorDetails_sp
	
 CHANGE HISTORY
 Date			Modified By		Notes
 10/03/2022		Group 1		Procedure Created 
----------------------------------------------------------------------------------------------------*/

 BEGIN

 OPEN GDD FOR


   SELECT * FROM   doctor d 
   Inner Join      treatment t 
   on              d.treatmentID=t.treatmentID  
   WHERE           d.doctorid IN (SELECT doctorid 
   FROM            patients 
   WHERE           patientOPDID > 1000);
   
   
 
DBMS_SQL.RETURN_RESULT(GDD);    
    
END;




-- STORED PROCEDURE 4 Transactional Query

CREATE OR REPLACE PROCEDURE Gettestupdate_sp
(
    ptestid  IN int,
	ptestcost			IN  int,
	ptesttaken      	IN  VARCHAR2
)

AS

/*-------------------------------------------------------------------------------------------------
CREATED: October 3, 2022
AUTHOR:  Group 1 
DESCRIPTION: Used by the organisation , Doctor to add, delete or update test details

 Example: Exec Gettestupdate_sp (183554, 80.20, 'hiio');
	
 CHANGE HISTORY
 Date			Modified By		Notes
 10/03/2022		Group 1		Procedure Created 
----------------------------------------------------------------------------------------------------*/    

BEGIN 

INSERT INTO TESTS
                        (testid,
                         testcost,
                         testtaken) 
      values
                        (ptestid,
                         ptestcost,
                         ptesttaken);

Commit ;
END;





--STORED PROCEDURE 5 Aggregate Query
 

CREATE PROCEDURE Gettotalcost_sp

AS GTC SYS_REFCURSOR; 
 
 /*-------------------------------------------------------------------------------------------------
CREATED: October 14, 2022
AUTHOR:  Group 1 
DESCRIPTION: Used by the organisation  to pull up cost details for patients.

 Example: EXEC Gettotalcost_sp
	
 CHANGE HISTORY
 Date			Modified By		Notes
 10/14/2022		Group 1		Procedure Created 
----------------------------------------------------------------------------------------------------*/

 BEGIN

OPEN GTC FOR

Select    p.patientopdid, Sum(t.testcost) 
As        TotalTestCost 
From      patients p 
Join      tests t on p.testid=t.testid
Group by  p.patientopdid 
Having    count(p.testid)>0;
   
    
DBMS_SQL.RETURN_RESULT(GTC);    
   
Commit ;       
END;




--STORED PROCEDURE 6 Aggregate Query

CREATE PROCEDURE GetPatientsnumber_sp

AS GPN SYS_REFCURSOR; 
 
 /*-------------------------------------------------------------------------------------------------
CREATED: October 14, 2022
AUTHOR:  Group 1 
DESCRIPTION: Used by the organisation  to pull up patients  Details.

 Example: EXEC GetPatientsnumber_sp
	
 CHANGE HISTORY
 Date			Modified By		Notes
 10/14/2022		Group 1		Procedure Created 
----------------------------------------------------------------------------------------------------*/

 BEGIN

OPEN GPN FOR

Select    count(patientopdid) 
As        PatientCount,doctorid 
From      patients 
Group By  doctorid
Having    Count(patientopdid)>0 
Order by  Count(patientopdid) Desc;

    
DBMS_SQL.RETURN_RESULT(GPN);    
   
Commit ;       
END;




--STORED PROCEDURE 7 CASE STATEMENT
 
 
CREATE PROCEDURE GetStockStatus_sp

AS GSS SYS_REFCURSOR; 
 
 /*-------------------------------------------------------------------------------------------------
CREATED: October 14, 2022
AUTHOR:  Group 1 
DESCRIPTION: Used by the  organisation  to know about the stock status.

 Example: EXEC GetStockStatus_sp
	
 CHANGE HISTORY
 Date			Modified By		Notes
 10/14/2022		Group 1		Procedure Created 
----------------------------------------------------------------------------------------------------*/

BEGIN

OPEN GSS FOR

Select drugcode,numberofpatients,
    Case When numberofpatients >= 90 then 'Drug is Out of stock'
         When numberofpatients<90 and numberofpatients >= 50 then 'Drug may run out of stock'
         When numberofpatients <50 and numberofpatients>0 then 'Drug is in stock'
         Else 'drug is not sold'
    End as drugStockStatus
From treatment;
 
DBMS_SQL.RETURN_RESULT(GSS);    
   
Commit ;    
END;



--------------------------------VIEWS------------------------------------------------------------------- 



-- View 1 

CREATE OR REPLACE VIEW	PatientsReport_vw

AS

/*-------------------------------------------------------------------------------------------------
CREATED: October 14, 2022
AUTHOR:  Gisella Bassani 
DESCRIPTION: Used by organisation to find patients details and drug used for their treatment.

 Example: SELECT patientOPDID, doctorID, testID ,Firstname ,Lastname ,Specialization, Testcost
		  FROM PatientsReport_vw;
	
 CHANGE HISTORY
 Date			Modified By		Notes
 10/14/2022		Group 1		View Created 
----------------------------------------------------------------------------------------------------*/

SELECT		P.PatientOPDID,P.DoctorID, P.TestID , D.Firstname , D.Lastname , D.Specialization ,
            T.Testcost
FROM		Patients P
INNER JOIN	Doctor D
ON			P.DoctorID = D.DoctorID
INNER JOIN	Tests T
ON			T.TestID = P.TestID ;

/


-- View 2


CREATE OR REPLACE VIEW	    PatientDrugDoctorReport_vw

AS

/*-------------------------------------------------------------------------------------------------
CREATED: October 14, 2022
AUTHOR:  Group 1
DESCRIPTION: Used by Organisation to find the drug type , drugname 
             doctors who are treating the patients and details of the treatment . 

 Example: SELECT PatientOPDID, DoctorID, TestID, DoctorName, Specialization , TreatmentID ,
          drugcode , drugname , drugcomposition  FROM PatientDrugDoctorReport_vw;
	
 CHANGE HISTORY
 Date			Modified By		Notes
10/14/2022		Group 1		 View Created 
----------------------------------------------------------------------------------------------------*/

SELECT		P.PatientOPDID,P.DoctorID, P.TestID , D.Firstname || ' ' || D.Lastname as DoctorName ,
            D.Specialization , T.TreatmentID, T.drugcode, dg.drugname, dg.drugcomposition
FROM		Patients P 
INNER JOIN	Doctor D 
ON			P.DoctorID = D.DoctorID
INNER JOIN	Treatment T
ON			T.TreatmentID = D.TreatmentID
INNER JOIN	Drug Dg
ON			Dg.drugcode = T.drugcode;

/


----------------------------DATA DICTIONARY---------------------------------------

DESC COLLABORATIONS ;
DESC DOCTOR ;
DESC DRUG ;
DESC FINANCIALRECORDS ;
DESC ORG ;
DESC PATIENTS ;
DESC SPONSORS ;
DESC TESTS ;
DESC TREATMENT ;
DESC VOLUNTEERS ;

-----------------------OTHERS----------------------------------

DESC    Dictionary;
DESC    user_tables;
DESC    all_tables;
DESC    user_cons_columns;
DESC    user_constraints;

--1

SELECT  *
FROM    Dictionary
WHERE   Table_Name LIKE 'USER_%';

--2

SELECT  Table_Name
FROM    user_tables;

--3

SELECT  Table_Name
FROM    all_tables;

--4

SELECT  *
FROM    user_cons_columns
WHERE   Table_Name = 'COLLABORATIONS';


SELECT  *
FROM    user_cons_columns
WHERE   Table_Name = 'DRUG';


SELECT  *
FROM    user_cons_columns
WHERE   Table_Name = 'TREATMENT';


SELECT  *
FROM    user_cons_columns
WHERE   Table_Name = 'DOCTOR';


SELECT  *
FROM    user_cons_columns
WHERE   Table_Name = 'TESTS';


SELECT  *
FROM    user_cons_columns
WHERE   Table_Name = 'VOLUNTEERS';


SELECT  *
FROM    user_cons_columns
WHERE   Table_Name = 'SPONSORS';


SELECT  *
FROM    user_cons_columns
WHERE   Table_Name = 'PATIENTS';


SELECT  *
FROM    user_cons_columns
WHERE   Table_Name = 'FINANCIALRECORDS';


SELECT  *
FROM    user_cons_columns
WHERE   Table_Name = 'ORG';

SELECT  *
FROM    user_constraints
WHERE   Table_Name = 'SPONSORS';


SELECT  constraint_name, constraint_type, Table_Name
FROM    user_constraints
WHERE   constraint_type = 'P';


SELECT  constraint_name, constraint_type, table_name
FROM    user_constraints
WHERE   constraint_type = 'P' 
AND     Table_Name IN ('COLLABORATIONS', 'SPONSORS');


SELECT  constraint_name, constraint_type, Table_Name
FROM    user_constraints
WHERE   constraint_type = 'R';


SELECT  constraint_name, constraint_type, table_name, search_condition
FROM    user_constraints
WHERE   constraint_type = 'C' 
AND     Table_Name IN ('COLLABORATIONS', 'SPONSORS');


SELECT  constraint_name, constraint_type, Table_Name
FROM    user_constraints
WHERE   constraint_type = 'U'
AND     Table_Name = 'COLLABORATIONS' ;



    /*         END of Care and Cure Project    */ 