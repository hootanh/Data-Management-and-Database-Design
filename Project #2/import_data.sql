INSERT INTO flights.Airport (
Airport_code, Name, City, State
)

VALUES
('SFO','San-Francisco-International','San-Francisco','CA'),
('OAK','Oakland-International','Oakland','CA'),
('LAS','McCarren-International','Las-Vegas','NV'),
('HNL','Honolulu-International','Honolulu','HI'),
('JFK','John-F-Kennedy-International','New-York','NY'),
('FAT','Fresno-Yosemite-International','Fresno','CA'),
('MSY','Louis-Armstrong','New-Orleans','LA'),
('ORD','Chicago-OHare-International','Chicago','IL'),
('MDW','Midway','Chicago','IL'),
('SMF','Sacramento-International','Sacramento','CA'),
('SCK','Stockton-Metropolitan','Stockton','CA'),
('PHX','Phoenix-Sky-Harbor','Phoenix','AZ'),
('DEN','Denver-Interational','Denver','CO'),
('EWR','Newark-International','Newark','NJ'),
('IAH','Bush-Intercontinental','Houston','TX'),
('LAX','Los-Angeles-International','Los-Angeles','CA'),
('DCA','Ronald-Reagan-National','Arlington','VA'),
('IAD','Washington-Dulles-International','Dulles','VA'),
('MSN','Dane-County-Regional','Madison','WI'),
('MSP','Minneapolis-St-Paul','Minneapolis-St-Paul','MN'),
('SLC','Salt-Lake-City-International','Salt-Lake-City','UT'),
('DFW','Dallas-Fort-Worth','DFW','TX'),
('SAN','San-Diego-International','San-Diego','CA'),
('IWA','Phoenix-Mesa-Gateway','Phoenix','AZ'),
('SJC','San-Jose-International','San-Jose','CA'),
('ONT','Ontario-International','Ontario','CA');


INSERT INTO flights.Flight (
Flight_number, Airline, Weekdays
)

VALUES
('UA560','United','Yes'),
('B6624','Jetblue','Yes'),
('DL5841','Delta','Yes'),
('DL1149','Delta','Yes'),
('G4529','Allegiant','No'),
('G4154','Allegiant','No'),
('G4155','Allegiant','No'),
('HA48','Hawaiian','No'),
('AA1522','American','Yes'),
('AA3472','American','Yes'),
('Hootan', 'Best', 'Yes'),
('Sahra', 'Best', 'Yes'),
('WN380','Southwest','Yes');

INSERT INTO flights.Fare (
Flight_number, Fare_code, Amount, Restrictions
)

VALUES
('UA560','L',350,'No'),
('G4154','Y',106,'No'),
('G4155','Y',142,'No'),
('DL5841','Y',100,'Yes'),
('DL1149','B',500,'Yes'),
('HA48','F',1000,'Yes'),
('AA1522','Y',250,'No'),
('AA3472','Y',150,'Yes'),
('WN380','Y',256,'No'),
('Hootan','Y',5,'No'),
('Sahra','Y',5,'No'),
('B6624','Y',98,'No');



INSERT INTO flights.Airplane_type  (
Airplane_type_name, Max_seats, Company
)

VALUES
('A320',180,'Airbus'),
('A319',156,'Airbus'),
('A321',236,'Airbus'),
('A332',200,'Airbus'),
('707',189,'Boeing'),
('737',124,'Boeing'),
('747',550,'Boeing'),
('757',228,'Boeing'),
('727',189,'Boeing'),
('767',290,'Boeing'),
('777',440,'Boeing'),
('787',323,'Boeing'),
('ERJ145',50,'Embraer'),
('190',114,'Embraer'),
('170',80,'Embraer'),
('CRJ440',44,'Bombardier'),
('CRJ100',50,'Bombardier'),
('CRJ700',78,'Bombardier'),
('MD80',166,'McDonnell-Douglas');



INSERT INTO flights.Airplane (
Airplane_id, Total_number_of_seats, Airplane_type
)

VALUES
(1,180,'A320'),
(2,175,'A320'),
(3,156,'A319'),
(4,150,'A319'),
(5,145,'A319'),
(6,188,'707'),
(7,187,'707'),
(8,124,'727'),
(9,123,'737'),
(10,120,'737'),
(11,550,'747'),
(12,500,'747'),
(13,225,'757'),
(14,290,'767'),
(15,285,'767'),
(16,440,'777'),
(17,323,'787'),
(18,50,'ERJ145'),
(19,50,'ERJ145'),
(20,110,'190'),
(21,80,'170'),
(22,44,'CRJ440'),
(23,40,'CRJ440'),
(24,50,'CRJ100'),
(25,70,'CRJ700'),
(26,75,'CRJ700'),
(27,77,'CRJ700'),
(28,166,'MD80'),
(29,200,'A321'),
(30,180,'A332');




INSERT INTO flights.Can_land (
Airplane_type_name, Airport_code
)

VALUES
('MD80','SCK'),
('MD80','SAN'),
('MD80','IWA'),
('MD80','LAS'),
('ERJ145','IWA'),
('ERJ145','FAT'),
('ERJ145','ORD'),
('ERJ145','MSN'),
('CRJ440','MSN'),
('CRJ440','MSP'),
('CRJ100','MSN'),
('CRJ100','MSP'),
('CRJ700','MSN'),
('CRJ700','SLC'),
('CRJ700','ORD'),
('170','OAK'),
('170','LAX'),
('190','SLC'),
('190','OAK'),
('707','HNL'),
('707','OAK'),
('707','MDW'),
('707','SJC'),
('727','SMF'),
('727','SJC'),
('727','LAX'),
('737','OAK'),
('737','SFO'),
('737','ORD'),
('737','MDW'),
('737','ONT'),
('737','SMF'),
('737','SJC'),
('737','SAN'),
('737','LAS'),
('747','SFO'),
('747','JFK'),
('747','ORD'),
('747','MSP'),
('747','DEN'),
('757','LAS'),
('757','PHX'),
('757','DCA'),
('757','LAX'),
('757','HNL'),
('777','ORD'),
('777','LAX'),
('777','IAD'),
('787','IAH'),
('787','JFK'),
('787','EWR'),
('A321','DFW'),
('A321','DEN'),
('A332','OAK'),
('A332','HNL'),
('A320','JFK'),
('A320','LAX'),
('A320','IAH'),
('A319','SLC'),
('A319','PHX'),
('A319','MSP'),
('A319','SFO'),
('A319','MDW');



INSERT INTO flights.Flight_leg  (
Flight_number, Leg_number, Departure_airport_code, Scheduled_departure_time, Arrival_airport_code, Scheduled_arrival_time
)

VALUES
('G4155',1,'SCK','531PM','IWA','814PM'),
('G4154',1,'IWA','406PM','SCK','451PM'),
('DL5841',1,'OAK','1240PM','LAX','200PM'),
('DL1149',1,'LAX','645PM','HNL','1043PM'),
('HA48',1,'HNL','215PM','OAK','930PM'),
('AA1522',1,'SFO','1159PM','ORD','604AM'),
('AA3472',1,'ORD','719AM','MSN','819AM'),
('WN380',1,'MDW','755AM','ONT','1010AM'),
('WN380',2,'ONT','1045AM','SMF','1145AM'),
('Hootan',1,'SFO','1205AM','ORD','604AM'),
('Sahra',3,'SCK','535PM','IWA','819PM'),
('B6624',1,'LAX','915PM','JFK','522AM');




INSERT INTO flights.Leg_instance  (
Flight_number, Leg_number, leg_date, Number_of_available_seats, Airplane_id, Departure_airport_code, Departure_time, Arrival_airport_code, Arrival_time
)

VALUES
('G4155',1,'2018-01-28',3,28,'SCK','535PM','IWA','819PM'),
('G4155',1,'2018-01-31',16,28,'SCK','531PM','IWA','813PM'),
('G4154',1,'2018-02-03',19,28,'SCK','406PM','IWA','451PM'),
('DL5841',1,'2018-02-09',5,21,'OAK','1245PM','LAX','205PM'),
('DL1149',1,'2018-02-09',20,13,'LAX','645PM','HNL','1043PM'),
('HA48',1,'2018-02-24',10,30,'HNL','215PM','OAK','910PM'),
('AA1522',1,'2018-08-05',70,9,'SFO','1205AM','ORD','604AM'),
('AA3472',1,'2018-08-05',15,18,'ORD','719AM','MSN','819AM'),
('WN380',1,'2018-08-05',130,10,'MDW','755AM','ONT','1010AM'),
('WN380',2,'2018-08-05',130,10,'ONT','1045AM','SMF','1145AM'),
('Hootan', 1,'2018-08-05',70,9,'SFO','1205AM','ORD','604AM'),
('Sahra',3,'2018-01-28',3,28,'SCK','535PM','IWA','819PM'),
('B6624',1,'2018-02-09',100,1,'LAX','915PM','JFK','522AM');




INSERT INTO flights.Seat_reservation  (
Flight_number, Leg_number, reservation_date, Seat_number, Customer_name, Customer_phone
)

VALUES
('G4155',1,'2018-01-28','1A','Osvaldo','555-55-5555'),
('G4155',1,'2018-01-28','2A','Deana','867-5309'),
('G4154',1,'2018-01-31','1A','Mike','555-5309'),
('G4154',1,'2018-01-31','11A','Dan','555-0000'),
('G4154',1,'2018-01-31','3A','Ryan','555-0001'),
('DL1149',1,'2018-02-09','17A','Mark','555-0002'),
('DL5841',1,'2018-02-09','7A','Edgar','555-0003'),
('DL1149',1,'2018-02-09','11B','Naomi','555-0004'),
('DL5841',1,'2018-02-09','7F','Mitchell','555-0005'),
('DL5841',1,'2018-02-09','7D','KC','555-0006'),
('DL5841',1,'2018-02-09','7C','Jillian','555-0007'),
('DL1149',1,'2018-02-09','8A','Carissa','555-0008'),
('HA48',1,'2018-02-24','7E','Clement','555-0009'),
('HA48',1,'2018-02-24','10A','John','555-0010'),
('HA48',1,'2018-02-24','13A','Sahib','555-0011'),
('HA48',1,'2018-02-24','1E','Alex','555-0012'),
('HA48',1,'2018-02-24','14A','KH','555-0013'),
('HA48',1,'2018-02-24','15E','Lisa','555-0014'),
('HA48',1,'2018-02-24','6A','Kyla','555-0015'),
('AA1522',1,'2018-08-05','6A','Dorothy','555-0016'),
('AA1522',1,'2018-08-05','7E','Max','555-0017'),
('B6624',1,'2018-02-09','2A','Jillian','555-0018'),
('AA1522',1,'2018-08-05','7F','Michael','555-0019'),
('AA1522',1,'2018-08-05','13A','Lisa','555-0020'),
('B6624',1,'2018-02-09','7D','Drew','555-0021'),
('AA1522',1,'2018-08-05','7F','An','555-0022'),
('AA3472',1,'2018-08-05','1A','Edgar','555-0023'),
('B6624',1,'2018-02-09','7B','Jeremy','555-0024'),
('AA3472',1,'2018-08-05','6A','KH','555-0025'),
('B6624',1,'2018-02-09','7C','Katya','555-0026'),
('AA3472',1,'2018-08-05','7A','Alicia','555-0027'),
('B6624',1,'2018-02-09','3D','Hillary','555-0028'),
('AA3472',1,'2018-08-05','7E','Antonio','555-0029'),
('AA3472',1,'2018-08-05','2B','Jaskaran','555-0030'),
('WN380',1,'2018-08-05','7C','Tom','555-0031'),
('WN380',1,'2018-08-05','7A','Norlan','555-0032'),
('WN380',1,'2018-08-05','9B','Ryan','555-0033'),
('WN380',1,'2018-08-05','8A','Naomi','555-0034'),
('WN380',1,'2018-08-05','7F','Mitchell','555-0035'),
('WN380',1,'2018-08-05','8F','Clement','555-0036'),
('WN380',2,'2018-08-05','23D','Danilo','555-0037'),
('WN380',2,'2018-08-05','19A','Sahib','555-0038'),
('WN380',2,'2018-08-05','7E','Alex','555-0039'),
('WN380',2,'2018-08-05','9A','KC','555-0040'),
('WN380',2,'2018-08-05','7B','Kyla','555-0041'),
('WN380',2,'2018-08-05','10C','Drew','555-0042');
