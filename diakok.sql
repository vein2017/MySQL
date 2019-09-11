DROP TABLE IF EXISTS diakok 	;
DROP TABLE IF EXISTS osztalyok 	;


CREATE TABLE osztalyok
(
	osztaly_id 		VARCHAR(3) 	,
	terem			CHAR(4)		,
	osztalyfonok 	VARCHAR(35)	
) ; 

INSERT INTO osztalyok VALUES('9A','A105','VARGA ANDREA');
INSERT INTO osztalyok VALUES('9B','B207','TÖRÖK CSABA');
INSERT INTO osztalyok VALUES('9C','B108','CSONKA JÁNOS');

CREATE TABLE diakok
(
	id 					INTEGER 	,
	nev 				VARCHAR(35) ,
	szuletsi_hely		VARCHAR(35) ,	
	szuletesi_datum		DATE		,
	nem					CHAR		,
	osztaly				CHAR(3)		,
	atlag				FLOAT			
) ;

INSERT INTO diakok VALUES (1000,'KISS ANIKÓ'	,'NAGYKANIZSA'	,'2003.10.15','N','9A',3.5) ;
INSERT INTO diakok VALUES (1001,'NAGY ÉVA'		,'NAGYKANIZSA'	,'2003.06.16','F','9A',3.7) ;
INSERT INTO diakok VALUES (1002,'VARGA PÉTER'	,'NAGYKANIZSA'	,'2003.06.17','F','9A',3.4) ;
INSERT INTO diakok VALUES (1003,'TÓTH ZSOLT'	,'NAGYKANIZSA'	,'2003.07.20','F','9A',3.2) ;
INSERT INTO diakok VALUES (1004,'JÁMBOR KRISTÓF','NAGYKANIZSA'	,'2003.08.21','F','9A',3.5) ;
INSERT INTO diakok VALUES (1005,'TAKÁCS FERENC'	,'NAGYKANIZSA'	,'2003.09.10','F','9A',4.7) ;
INSERT INTO diakok VALUES (1006,'ÁNGYÁN JÁNOS'	,'NAGYKANIZSA'	,'2003.10.12','F','9A',4.5) ;
INSERT INTO diakok VALUES (1007,'MAROSI LÁSZLÓ'	,'NAGYKANIZSA'	,'2003.11.14','F','9A',4.7) ;
INSERT INTO diakok VALUES (1008,'BALOGH FERENC'	,'NAGYKANIZSA'	,'2003.12.16','F','9A',4.2) ;
INSERT INTO diakok VALUES (1009,'ALMÁSI ÉVA'	,'NAGYKANIZSA'	,'2003.09.18','N','9A',2.3) ;
INSERT INTO diakok VALUES (1010,'KOVÁCS JUDIT'	,'BUDAPEST'		,'2003.07.20','N','9A',2.4) ;

INSERT INTO diakok VALUES (1011,'TÁRNOK ZSÓKA'	,'BUDAPEST'		,'2003.05.22','N','9B',2.5) ;
INSERT INTO diakok VALUES (1012,'CSALA ZSUZSA'	,'NAGYKANIZSA'	,'2003.03.24','N','9B',2.6) ;
INSERT INTO diakok VALUES (1013,'VEIT MÓNIKA'	,'NAGYKANIZSA'	,'2003.02.26','N','9B',2.7) ;
INSERT INTO diakok VALUES (1014,'PAPP HELGA'	,'NAGYKANIZSA'	,'2003.01.03','N','9B',2.8) ;
INSERT INTO diakok VALUES (1015,'JÁRNOKI FERENC','BAJA'			,'2003.10.05','F','9B',3.9) ;
INSERT INTO diakok VALUES (1016,'GÁL NOÉMI'		,'NAGYKANIZSA'	,'2003.01.07','N','9B',3.0) ;
INSERT INTO diakok VALUES (1017,'VERES ZSÓFIA'	,'NAGYKANIZSA'	,'2003.01.09','N','9B',3.8) ;
INSERT INTO diakok VALUES (1018,'BARANYI PÉTER'	,'NAGYKANIZSA'	,'2003.02.11','F','9B',4.7) ;
INSERT INTO diakok VALUES (1019,'KOLONICS ZSOLT','ZALAEGERSZEG'	,'2003.03.13','F','9B',4.5) ;

INSERT INTO diakok VALUES (1020,'TOLNAI ÁGNES'	,'KESZTHELY'	,'2003.05.15','N','9C',4.3) ;
INSERT INTO diakok VALUES (1021,'JÓNÁS KATALIN'	,'NAGYKANIZSA'	,'2003.08.17','N','9C',4.1) ;
INSERT INTO diakok VALUES (1022,'BALOGH ARNOLD'	,'NAGYKANIZSA'	,'2003.09.16','F','9C',4.2) ;
INSERT INTO diakok VALUES (1023,'SZELE LÁSZLÓ'	,'NAGYKANIZSA'	,'2003.12.18','F','9C',2.4) ;
INSERT INTO diakok VALUES (1024,'ÁRVAI MIKLÓS'	,'NAGYKANIZSA'	,'2003.10.03','F','9C',2.6) ;
INSERT INTO diakok VALUES (1025,'MOLNÁR CSILLA'	,'NAGYKANIZSA'	,'2003.08.05','N','9C',2.8) ;
INSERT INTO diakok VALUES (1026,'VÁRADI GÁBOR'	,'NAGYKANIZSA'	,'2003.06.08','F','9C',3.3) ;
INSERT INTO diakok VALUES (1027,'KÓKAI TAMÁS'	,'NAGYKANIZSA'	,'2003.04.03','F','9C',3.6) ;
INSERT INTO diakok VALUES (1028,'TELEKI ILDIKÓ'	,'NAGYKANIZSA'	,'2003.02.02','N','9C',3.9) ;
INSERT INTO diakok VALUES (1029,'FÜZESI ZSOLT'	,'NAGYKANIZSA'	,'2003.03.07','F','9C',3.2) ;
INSERT INTO diakok VALUES (1030,'BEDE FERENC'	,'NAGYKANIZSA'	,'2003.05.19','F','9C',3.5) ;

SELECT *
FROM osztalyok, diakok 
WHERE osztalyok.osztaly_id = diakok.osztaly ;