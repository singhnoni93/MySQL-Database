# MySQL-Database
Using SQL, create tables according to the given schema shown in Figure 1. Note that this section is exactly the same as the one in Assignment 4.  You can use your Assignment 4 directly, or modify your Assignment 4 (if needed).  

Doctor (dssn, dname, specialty)

Prescription( dssn, pre_no, pdate)  foreign key (dssn) references to doctor(dssn)

Ph_company( pname, phone)

Drug (pname, trade_name, formula) foreign key (pname) references to Ph_company(pname)

Consist_of ( dssn, pre_no, pname, trade_name) foreign key (dssn, pre_no) references prescription(dssn, pre_no), foreign key (pname, trade_name) references drug(panme, trade_name)

Pharmacy (name, address, phone)

Sell (pharmacy_name, pname, trade_name, price) foreign key (pname, trade_name) references drug (pname, trade_name), foreign key (pharmacy_name) references pharmacy(name)

Figure 1 Schema


 
Figure 2 ER Diagram
Section 2
Populate the database.  

Section 3
Use SQL to specify the following queries.   When you populate the database, insert data such that at least one row will be display as the result of running each query.
1)	Retrieve the drugs’ information (trade name and formula) which are manufactured by company “Pfizer”. Order the result by trade name.
2)	List drug information (Pharmaceutical company name, trade name, formula) that has been prescribed by at least one doctor.
3)	Obtain all the prescription drugs (trade name, company name and prescription date) given by Doctor “Elle Elmasri”.
4)	Retrieve all the drugs (trade_name, formula) sold by “CVS”. (“CVS” is pharmacy name).
5)	Retrieve number of type of drugs made by “Pfizer”. (Type is distinguished by “trade_name”).
6)	Obtain information (pharmacy name, address) of pharmacy that sells “Tylenol” with the lowest price among all pharmacies. (“Tylenol” is trade name)
7)	Retrieve the pharmacies that sell more than 2 types of drugs. List pharmacy name and number of types of drugs sold. (Type is distinguished by “trade_name”. However, if two drugs with the same trade name are produced by two different pharmaceutical companies, they are considered as two different types of drugs.)



Readme change