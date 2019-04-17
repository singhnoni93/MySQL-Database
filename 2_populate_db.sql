/*
Lakhwinder pal Singh
Populate the database.  

*/


INSERT INTO Ph_company(pname, phone)
VALUES
('Pfizer','9161234567'),
('Pharma','9160010001'),
('Chevron','9161112222');
SELECT * FROM Ph_company;

INSERT INTO Doctor(dssn,dname,Specialty)
VALUES
('123456789','Elle Elmasri','Pediatric'),
('999888777','Singh','Dental'),
('444999123','Yusuf','Labor');
SELECT * FROM Doctor;

INSERT INTO Drug(pname, trade_name, formula)
VALUES
('Pfizer','Tylenol','H2+O=H2O'),
('Pfizer','Advil','Co3'),
('Pharma','Bengay','02'),
('Chevron','Ethanol','Eth91');
SELECT * FROM Drug;


INSERT INTO Pharmacy(Ph_name, address, phone)
VALUES
('CVS','Sacramento','916983108'),
('Walgreen','Folsom','916000123'),
('Walmart','SFO','2997891546');
SELECT * FROM Pharmacy;

INSERT INTO Sell(pharmacy_name, pname, trade_name, price)
VALUES
('CVS','Pfizer','Tylenol',5),
('CVS','Pfizer','Advil',14),
('CVS','Pharma','Bengay',4),
('Walgreen','Pfizer','Tylenol',8),
('Walgreen','Pharma','Bengay',9),
('Walmart','Pfizer','Advil',10),
('Walmart','Chevron','Ethanol',3);
SELECT * FROM Sell;



INSERT INTO Prescription(dssn,pre_no,pdate)
VALUES
('123456789',1,'2018-11-24'),
('999888777',3,'2018-11-25'),
('444999123',4,'2018-12-02');
SELECT * FROM Prescription;


INSERT INTO Consist_of(dssn,pre_no,pname,trade_name)
VALUES
('123456789',1,'Pfizer','Tylenol'),
('999888777',3,'Chevron','Ethanol'),
('444999123',4,'Pharma','Bengay');
SELECT * FROM Consist_of;




