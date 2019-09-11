DROP TABLE IF EXISTS szolgaltato 	;
DROP TABLE IF EXISTS ugyfel 		;
DROP TABLE IF EXISTS szolgaltato_ugyfel	;

CREATE TABLE szolgaltato
(
	szolgaltato_id			INTEGER		,
	szolgaltato_nev			VARCHAR(30) ,
	web						VARCHAR(30) ,
	ugyfelszolgalat 		VARCHAR(35) 
) ;
INSERT INTO szolgaltato VALUES(1,'T-COM'			,"WWW.T-COM.HU"			,'info@t-com.hu'		);
INSERT INTO szolgaltato VALUES(2,'UPC'				,"WWW.UPC.HU"			,'ugyfel@upc.hu'		);
INSERT INTO szolgaltato VALUES(3,'TELENOR'			,"WWW.TELENOR.HU"		,'info@telenor.hu'		);
INSERT INTO szolgaltato VALUES(4,'DIGI MAGYARORSZÁG',"WWW.DIGI.HU"			,'ugyfel@digi.hu'		);
INSERT INTO szolgaltato VALUES(5,'VODAFONE'			,"WWW.VODAFONE.HU"		,'info@vodafone.hu'		);

CREATE TABLE ugyfel
(
	ugyfel_id				INTEGER 	,	
	ugyfel_nev				VARCHAR(35) ,
	szuletesi_hely			VARCHAR(35) ,	
	szuletesi_datum			DATE		
) ;

INSERT INTO ugyfel VALUES(1000,'KOVÁCS ENDRE'	,'PÉCS'			,'1992-01-15');
INSERT INTO ugyfel VALUES(1001,'BEDE TIBOR'		,'BUDAPEST'		,'1993-02-12');
INSERT INTO ugyfel VALUES(1002,'ERDŐS MÓNIKA'	,'VESZPRÉM'		,'1994-03-15');
INSERT INTO ugyfel VALUES(1003,'NAGY CSILLA'	,'BUDAPEST'		,'1995-04-16');
INSERT INTO ugyfel VALUES(1004,'MÉREI MÁRK'		,'BAJA'			,'1985-08-20');
INSERT INTO ugyfel VALUES(1005,'CSALA ANNAMÁRIA','MISKOLC'		,'1983-10-20');
INSERT INTO ugyfel VALUES(1006,'CSÁKÁNYI BEA'	,'MISKOLC'		,'1976-12-23');
INSERT INTO ugyfel VALUES(1007,'VAJDA ANITA'	,'BUDAPEST'		,'1971-02-29');
INSERT INTO ugyfel VALUES(1008,'VIDA MÁRK'		,'BUDAPEST'		,'1973-04-10');
INSERT INTO ugyfel VALUES(1009,'ANTAL PÉTER'	,'PÉCS'			,'1975-06-08');
INSERT INTO ugyfel VALUES(1010,'BENCE FERENC'	,'NAGYKANIZSA'	,'1972-08-07');
INSERT INTO ugyfel VALUES(1011,'TATAI ZSÓKA'	,'PÉCS'			,'1969-03-06');
INSERT INTO ugyfel VALUES(1012,'JÓRI ANDRÁS'	,'MISKOLC'		,'1961-02-08');


CREATE TABLE szolgaltato_ugyfel
(
	szolgaltato_id			INTEGER		,
	ugyfel_id				INTEGER		,
	szolgaltatas			VARCHAR(30)	,
	ar						INTEGER		,
	datum					DATE
) ;
INSERT INTO szolgaltato_ugyfel VALUES (1,1001,'INTERNET'	,2300,'2019.01.01');
INSERT INTO szolgaltato_ugyfel VALUES (2,1001,'TELEFON'		,2700,'2018.02.10');
INSERT INTO szolgaltato_ugyfel VALUES (2,1002,'TV'			,2700,'2017.03.12');
INSERT INTO szolgaltato_ugyfel VALUES (3,1002,'INTERNET'	,1900,'2016.11.01');
INSERT INTO szolgaltato_ugyfel VALUES (4,1003,'TELEFON'		,1950,'2016.10.03');
INSERT INTO szolgaltato_ugyfel VALUES (5,1003,'TELEFON'		,3950,'2018.11.06');
INSERT INTO szolgaltato_ugyfel VALUES (1,1004,'INTERNET'	,2800,'2013.06.20');
INSERT INTO szolgaltato_ugyfel VALUES (2,1005,'TV'			,2700,'2016.07.29');
INSERT INTO szolgaltato_ugyfel VALUES (6,1006,'TELEFON'		,2750,'2015.09.19');


SELECT 	*
FROM 	szolgaltato , ugyfel, szolgaltato_ugyfel
WHERE 	szolgaltato.szolgaltato_id = szolgaltato_ugyfel.szolgaltato_id AND 
		szolgaltato_ugyfel.ugyfel_id = ugyfel.ugyfel_id ;
