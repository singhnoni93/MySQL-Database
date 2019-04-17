#Lakhwinder Singh
/*
Using SQL, 
create tables according to the given schema shown in Figure 1. 
*/

#Doctor (dssn, dname, specialty)
CREATE TABLE Doctor(
	dssn	CHAR(9) NOT NULL,
	dname	VARCHAR(15) NOT NULL,
	Specialty	VARCHAR(15),
	PRIMARY KEY(dssn)
);

#Prescription( dssn, pre_no, pdate)  
#foreign key (dssn) references to doctor(dssn)
CREATE TABLE Prescription(
	dssn CHAR(9) NOT NULL ,
	pre_no INTEGER NOT NULL,
	pdate DATE,
	PRIMARY KEY(dssn,pre_no),
	FOREIGN KEY(dssn) REFERENCES Doctor(dssn)
);

#Ph_company( pname, phone)
CREATE TABLE Ph_company(
	pname VARCHAR(10) NOT NULL,
	phone CHAR(10),
	PRIMARY KEY(pname)
);

#Drug (pname, trade_name, formula)
#foreign key (pname) references to Ph_company(pname)
CREATE TABLE Drug(
	pname VARCHAR(10) NOT NULL,
	trade_name VARCHAR(10) NOT NULL,
	formula VARCHAR(10),
	PRIMARY KEY(pname, trade_name),
	FOREIGN KEY(pname)REFERENCES Ph_company(pname)
    
);

#Consist_of ( dssn, pre_no, pname, trade_name)
# foreign key (dssn, pre_no) references prescription(dssn, pre_no), 
#foreign key (pname, trade_name) references drug(panme, trade_name)
CREATE TABLE Consist_of(
	dssn CHAR(9) NOT NULL,
    pre_no INTEGER NOT NULL,
    pname VARCHAR(10) NOT NULL,
    trade_name VARCHAR(10) NOT NULL,
    PRIMARY KEY(dssn,pre_no,pname,trade_name),
    FOREIGN KEY(dssn,pre_no) REFERENCES Prescription(dssn,pre_no),
    FOREIGN KEY(pname,trade_name) REFERENCES Drug(pname,trade_name)

);

#Pharmacy (name, address, phone)
#changed name to Ph_name because name is reserved word
CREATE TABLE Pharmacy(
	Ph_name VARCHAR(10) NOT NULL,
    address VARCHAR(10),
    phone CHAR(10),
    PRIMARY KEY(Ph_name)
);

#Sell (pharmacy_name, pname, trade_name, price) 
#foreign key (pname, trade_name) references drug (pname, trade_name),
# foreign key (pharmacy_name) references pharmacy(name)
CREATE TABLE Sell(
	pharmacy_name VARCHAR(10) NOT NULL,
    pname VARCHAR(10) NOT NULL,
    trade_name VARCHAR(10) NOT NULL,
    price INTEGER,
    PRIMARY KEY(pharmacy_name, pname, trade_name),
    FOREIGN KEY(pname, trade_name) REFERENCES Drug(pname, trade_name),
    FOREIGN KEY(pharmacy_name) REFERENCES Pharmacy(Ph_name)
    
);



