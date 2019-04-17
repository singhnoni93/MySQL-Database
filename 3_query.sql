#Lakhwinder pal Singh
#Queries

#1)	Retrieve the drugs’ information (trade name and formula) which are 
#manufactured by company “Pfizer”. 
#Order the result by trade name.
SELECT trade_name,formula, pname
FROM Drug
WHERE pname = "Pfizer"
ORDER BY trade_name;


#2) List drug information (Pharmaceutical company name, trade name, formula)
# that has been prescribed by at least one doctor.

SELECT pname, trade_name, formula
FROM DRUG
WHERE trade_name IN (SELECT trade_name
				 FROM Consist_of);
                 
#3)	Obtain all the prescription drugs (trade name, company name and 
# prescription date) given by Doctor “Elle Elmasri”.
SELECT con.trade_name, con.pname, pres.pdate, doc.dname
FROM Consist_of as con, Prescription as pres, Doctor as doc
#connect using foreign keys 
WHERE pres.dssn = doc.dssn 	and con.dssn = pres.dssn and
		con.pre_no = pres.pre_no and doc.dname = "Elle Elmasri" ;
					


#4)	Retrieve all the drugs (trade_name, formula) sold by “CVS”. 
SELECT s.pharmacy_name, d.trade_name, d.formula   #select tradename and formula from drug
FROM DRUG as d, SELL as s		
#select the foreign keys of sell to drug
WHERE s.pname = d.pname and s.trade_name = d.trade_name and s.pharmacy_name = "CVS"; 

#5)	Retrieve number of type of drugs made by “Pfizer”. (Type is distinguished by "trade_name")

SELECT pname, COUNT(*) as trade_name
FROM DRUG
WHERE pname = "Pfizer";

#6)	Obtain information (pharmacy name, address) of pharmacy that sells “Tylenol” with the 
# lowest price among all pharmacies. (“Tylenol” is trade name)

SELECT p.Ph_name, p.address, MIN(s.price)
FROM Pharmacy as p, Sell as s
WHERE s.Pharmacy_name = p.Ph_name and s.trade_name = "Tylenol"; 

#7) Retrieve the pharmacies that sell more than 2 types of drugs. List pharmacy name and number of types 
# of drugs sold. (Type is distinguished by “trade_name”. However, if two drugs with the same trade 
# name are produced by two different pharmaceutical companies, they are considered as two different types of drugs.)

SELECT s.pharmacy_name, Count(*) as type_of_drugs #select pharmacy as each tuple had drug type with pharmacy name
FROM SELL as s		
GROUP BY  s.pharmacy_name
HAVING type_of_drugs > 2








