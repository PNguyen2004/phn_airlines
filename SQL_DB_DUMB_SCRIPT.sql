--CREATE DATABASE phn_airlines
--Phuc Nguyen
--INFO 330 BB Sam Otim
--'Flight Booking' Project

CREATE TABLE Passenger(
   Passenger_ID  INTEGER  NOT NULL PRIMARY KEY 
  ,First_Name    VARCHAR(50) NOT NULL
  ,Last_Name     VARCHAR(50) NOT NULL
  ,Phone         VARCHAR(50) NOT NULL
  ,Email         VARCHAR(50) NOT NULL
  ,Date_Of_Birth DATE  NOT NULL
);
INSERT INTO Passenger(Passenger_ID,First_Name,Last_Name,Phone,Email,Date_Of_Birth) VALUES (1,'Kassandra','Brockest','131-206-0430','kbrockest0@sun.com','6/29/1982');
INSERT INTO Passenger(Passenger_ID,First_Name,Last_Name,Phone,Email,Date_Of_Birth) VALUES (2,'Letizia','Gebbe','833-928-9828','lgebbe1@amazon.com','2/1/1996');
INSERT INTO Passenger(Passenger_ID,First_Name,Last_Name,Phone,Email,Date_Of_Birth) VALUES (3,'Cindelyn','Bearfoot','509-847-9823','cbearfoot2@lycos.com','5/7/1984');
INSERT INTO Passenger(Passenger_ID,First_Name,Last_Name,Phone,Email,Date_Of_Birth) VALUES (4,'Lida','Maytum','775-262-2127','lmaytum3@spiegel.de','9/22/1985');
INSERT INTO Passenger(Passenger_ID,First_Name,Last_Name,Phone,Email,Date_Of_Birth) VALUES (5,'Kirsteni','Baynton','717-372-9411','kbaynton4@nih.gov','7/9/1968');
INSERT INTO Passenger(Passenger_ID,First_Name,Last_Name,Phone,Email,Date_Of_Birth) VALUES (6,'Benedikt','Giovanazzi','831-876-8242','bgiovanazzi5@google.com.au','7/3/1976');
INSERT INTO Passenger(Passenger_ID,First_Name,Last_Name,Phone,Email,Date_Of_Birth) VALUES (7,'Jesus','Speek','976-471-1247','jspeek6@yandex.ru','12/15/1930');
INSERT INTO Passenger(Passenger_ID,First_Name,Last_Name,Phone,Email,Date_Of_Birth) VALUES (8,'Saxon','Stallybrass','219-615-1553','sstallybrass7@aboutads.info','11/18/1943');
INSERT INTO Passenger(Passenger_ID,First_Name,Last_Name,Phone,Email,Date_Of_Birth) VALUES (9,'Veronike','Ingleston','672-617-4187','vingleston8@usa.gov','12/19/1945');
INSERT INTO Passenger(Passenger_ID,First_Name,Last_Name,Phone,Email,Date_Of_Birth) VALUES (10,'Carey','Mussen','586-933-5559','cmussen9@alexa.com','8/22/1924');
INSERT INTO Passenger(Passenger_ID,First_Name,Last_Name,Phone,Email,Date_Of_Birth) VALUES (11,'Stormie','Cathrall','117-674-9140','scathralla@dedecms.com','11/21/1978');
INSERT INTO Passenger(Passenger_ID,First_Name,Last_Name,Phone,Email,Date_Of_Birth) VALUES (12,'Miquela','Jakubovsky','873-480-8282','mjakubovskyb@blogtalkradio.com','10/9/1990');
INSERT INTO Passenger(Passenger_ID,First_Name,Last_Name,Phone,Email,Date_Of_Birth) VALUES (13,'Retha','Castelyn','471-854-9399','rcastelync@tamu.edu','4/19/2003');
INSERT INTO Passenger(Passenger_ID,First_Name,Last_Name,Phone,Email,Date_Of_Birth) VALUES (14,'Marcus','Schimek','770-810-7757','mschimekd@chronoengine.com','3/31/1954');
INSERT INTO Passenger(Passenger_ID,First_Name,Last_Name,Phone,Email,Date_Of_Birth) VALUES (15,'Marcela','Lukasen','405-625-3568','mlukasene@amazon.co.jp','10/9/1986');

CREATE TABLE Books(
   Passenger_ID INTEGER  NOT NULL
  ,Booking_ID   INTEGER  NOT NULL
  ,PRIMARY KEY(Passenger_ID,Booking_ID)
  ,FOREIGN KEY (Passenger_ID) REFERENCES Passenger
  ,FOREIGN KEY (Booking_ID) REFERENCES Booking
);
INSERT INTO Books(Passenger_ID,Booking_ID) VALUES (12,1);
INSERT INTO Books(Passenger_ID,Booking_ID) VALUES (5,2);
INSERT INTO Books(Passenger_ID,Booking_ID) VALUES (12,3);
INSERT INTO Books(Passenger_ID,Booking_ID) VALUES (11,4);
INSERT INTO Books(Passenger_ID,Booking_ID) VALUES (14,5);
INSERT INTO Books(Passenger_ID,Booking_ID) VALUES (11,6);
INSERT INTO Books(Passenger_ID,Booking_ID) VALUES (7,7);
INSERT INTO Books(Passenger_ID,Booking_ID) VALUES (9,8);
INSERT INTO Books(Passenger_ID,Booking_ID) VALUES (12,9);
INSERT INTO Books(Passenger_ID,Booking_ID) VALUES (11,10);
INSERT INTO Books(Passenger_ID,Booking_ID) VALUES (7,11);
INSERT INTO Books(Passenger_ID,Booking_ID) VALUES (8,12);
INSERT INTO Books(Passenger_ID,Booking_ID) VALUES (13,13);
INSERT INTO Books(Passenger_ID,Booking_ID) VALUES (13,14);
INSERT INTO Books(Passenger_ID,Booking_ID) VALUES (5,15);
INSERT INTO Books(Passenger_ID,Booking_ID) VALUES (2,16);
INSERT INTO Books(Passenger_ID,Booking_ID) VALUES (13,17);
INSERT INTO Books(Passenger_ID,Booking_ID) VALUES (13,18);
INSERT INTO Books(Passenger_ID,Booking_ID) VALUES (11,19);
INSERT INTO Books(Passenger_ID,Booking_ID) VALUES (9,20);
INSERT INTO Books(Passenger_ID,Booking_ID) VALUES (15,21);
INSERT INTO Books(Passenger_ID,Booking_ID) VALUES (3,22);
INSERT INTO Books(Passenger_ID,Booking_ID) VALUES (1,23);
INSERT INTO Books(Passenger_ID,Booking_ID) VALUES (11,24);
INSERT INTO Books(Passenger_ID,Booking_ID) VALUES (7,25);
INSERT INTO Books(Passenger_ID,Booking_ID) VALUES (6,26);
INSERT INTO Books(Passenger_ID,Booking_ID) VALUES (1,27);
INSERT INTO Books(Passenger_ID,Booking_ID) VALUES (12,28);
INSERT INTO Books(Passenger_ID,Booking_ID) VALUES (6,29);
INSERT INTO Books(Passenger_ID,Booking_ID) VALUES (13,30);
INSERT INTO Books(Passenger_ID,Booking_ID) VALUES (3,31);
INSERT INTO Books(Passenger_ID,Booking_ID) VALUES (13,32);
INSERT INTO Books(Passenger_ID,Booking_ID) VALUES (7,33);
INSERT INTO Books(Passenger_ID,Booking_ID) VALUES (7,34);
INSERT INTO Books(Passenger_ID,Booking_ID) VALUES (6,35);
INSERT INTO Books(Passenger_ID,Booking_ID) VALUES (12,36);
INSERT INTO Books(Passenger_ID,Booking_ID) VALUES (9,37);
INSERT INTO Books(Passenger_ID,Booking_ID) VALUES (7,38);
INSERT INTO Books(Passenger_ID,Booking_ID) VALUES (15,39);
INSERT INTO Books(Passenger_ID,Booking_ID) VALUES (8,40);
INSERT INTO Books(Passenger_ID,Booking_ID) VALUES (10,41);
INSERT INTO Books(Passenger_ID,Booking_ID) VALUES (11,42);
INSERT INTO Books(Passenger_ID,Booking_ID) VALUES (1,43);
INSERT INTO Books(Passenger_ID,Booking_ID) VALUES (13,44);
INSERT INTO Books(Passenger_ID,Booking_ID) VALUES (14,45);

CREATE TABLE Booking(
   Booking_ID   INTEGER  NOT NULL PRIMARY KEY 
  ,Price        DECIMAL(10,2) NOT NULL
  ,Booking_Date DATE  NOT NULL
);
INSERT INTO Booking(Booking_ID,Price,Booking_Date) VALUES (1,4503.06,'4/6/2021');
INSERT INTO Booking(Booking_ID,Price,Booking_Date) VALUES (2,3788.91,'4/19/2021');
INSERT INTO Booking(Booking_ID,Price,Booking_Date) VALUES (3,1872.91,'2/9/2021');
INSERT INTO Booking(Booking_ID,Price,Booking_Date) VALUES (4,2502.19,'5/11/2021');
INSERT INTO Booking(Booking_ID,Price,Booking_Date) VALUES (5,2413.32,'1/14/2022');
INSERT INTO Booking(Booking_ID,Price,Booking_Date) VALUES (6,2869.34,'11/8/2020');
INSERT INTO Booking(Booking_ID,Price,Booking_Date) VALUES (7,4390.0,'11/15/2020');
INSERT INTO Booking(Booking_ID,Price,Booking_Date) VALUES (8,2558.42,'12/30/2020');
INSERT INTO Booking(Booking_ID,Price,Booking_Date) VALUES (9,767.61,'7/25/2022');
INSERT INTO Booking(Booking_ID,Price,Booking_Date) VALUES (10,2300.58,'4/20/2022');
INSERT INTO Booking(Booking_ID,Price,Booking_Date) VALUES (11,4395.59,'8/27/2022');
INSERT INTO Booking(Booking_ID,Price,Booking_Date) VALUES (12,3675.54,'7/3/2022');
INSERT INTO Booking(Booking_ID,Price,Booking_Date) VALUES (13,4158.58,'2/15/2022');
INSERT INTO Booking(Booking_ID,Price,Booking_Date) VALUES (14,2895.04,'2/27/2021');
INSERT INTO Booking(Booking_ID,Price,Booking_Date) VALUES (15,3980.06,'5/31/2020');
INSERT INTO Booking(Booking_ID,Price,Booking_Date) VALUES (16,2551.11,'8/27/2021');
INSERT INTO Booking(Booking_ID,Price,Booking_Date) VALUES (17,2763.7,'9/12/2021');
INSERT INTO Booking(Booking_ID,Price,Booking_Date) VALUES (18,2294.39,'3/20/2022');
INSERT INTO Booking(Booking_ID,Price,Booking_Date) VALUES (19,4362.88,'4/27/2020');
INSERT INTO Booking(Booking_ID,Price,Booking_Date) VALUES (20,1820.45,'1/1/2021');
INSERT INTO Booking(Booking_ID,Price,Booking_Date) VALUES (21,1603.84,'9/15/2021');
INSERT INTO Booking(Booking_ID,Price,Booking_Date) VALUES (22,3553.92,'5/28/2021');
INSERT INTO Booking(Booking_ID,Price,Booking_Date) VALUES (23,1.66,'1/27/2020');
INSERT INTO Booking(Booking_ID,Price,Booking_Date) VALUES (24,3746.53,'4/26/2022');
INSERT INTO Booking(Booking_ID,Price,Booking_Date) VALUES (25,519.45,'11/29/2022');
INSERT INTO Booking(Booking_ID,Price,Booking_Date) VALUES (26,2316.06,'8/31/2021');
INSERT INTO Booking(Booking_ID,Price,Booking_Date) VALUES (27,2339.27,'6/13/2021');
INSERT INTO Booking(Booking_ID,Price,Booking_Date) VALUES (28,1416.33,'12/9/2021');
INSERT INTO Booking(Booking_ID,Price,Booking_Date) VALUES (29,4040.54,'2/27/2021');
INSERT INTO Booking(Booking_ID,Price,Booking_Date) VALUES (30,4528.71,'12/12/2021');
INSERT INTO Booking(Booking_ID,Price,Booking_Date) VALUES (31,3820.73,'6/15/2020');
INSERT INTO Booking(Booking_ID,Price,Booking_Date) VALUES (32,4138.81,'12/16/2022');
INSERT INTO Booking(Booking_ID,Price,Booking_Date) VALUES (33,677.81,'10/6/2021');
INSERT INTO Booking(Booking_ID,Price,Booking_Date) VALUES (34,1019.49,'7/30/2022');
INSERT INTO Booking(Booking_ID,Price,Booking_Date) VALUES (35,2454.82,'6/21/2021');
INSERT INTO Booking(Booking_ID,Price,Booking_Date) VALUES (36,3351.08,'5/23/2020');
INSERT INTO Booking(Booking_ID,Price,Booking_Date) VALUES (37,4309.43,'11/5/2022');
INSERT INTO Booking(Booking_ID,Price,Booking_Date) VALUES (38,4582.16,'5/31/2021');
INSERT INTO Booking(Booking_ID,Price,Booking_Date) VALUES (39,1116.15,'2/26/2021');
INSERT INTO Booking(Booking_ID,Price,Booking_Date) VALUES (40,4272.7,'3/14/2021');
INSERT INTO Booking(Booking_ID,Price,Booking_Date) VALUES (41,3186.7,'7/22/2021');
INSERT INTO Booking(Booking_ID,Price,Booking_Date) VALUES (42,996.69,'8/29/2020');
INSERT INTO Booking(Booking_ID,Price,Booking_Date) VALUES (43,484.65,'4/22/2020');
INSERT INTO Booking(Booking_ID,Price,Booking_Date) VALUES (44,2749.96,'2/15/2022');
INSERT INTO Booking(Booking_ID,Price,Booking_Date) VALUES (45,2102.8,'4/16/2021');

CREATE TABLE MultiFlightBooking(
   Booking_ID      INTEGER  NOT NULL 
  ,Flight_ID       INTEGER  NOT NULL 
  ,Flight_Sequence INTEGER  NOT NULL
  ,PRIMARY KEY (Booking_ID, Flight_ID)
  ,FOREIGN KEY (Booking_ID) REFERENCES Booking
  ,FOREIGN KEY (Flight_ID) REFERENCES Flight
);
INSERT INTO MultiFlightBooking(Booking_ID,Flight_ID,Flight_Sequence) VALUES (1,32,1);
INSERT INTO MultiFlightBooking(Booking_ID,Flight_ID,Flight_Sequence) VALUES (1,28,2);
INSERT INTO MultiFlightBooking(Booking_ID,Flight_ID,Flight_Sequence) VALUES (2,2,1);
INSERT INTO MultiFlightBooking(Booking_ID,Flight_ID,Flight_Sequence) VALUES (3,3,1);
INSERT INTO MultiFlightBooking(Booking_ID,Flight_ID,Flight_Sequence) VALUES (4,4,1);
INSERT INTO MultiFlightBooking(Booking_ID,Flight_ID,Flight_Sequence) VALUES (5,5,1);
INSERT INTO MultiFlightBooking(Booking_ID,Flight_ID,Flight_Sequence) VALUES (5,4,2);
INSERT INTO MultiFlightBooking(Booking_ID,Flight_ID,Flight_Sequence) VALUES (6,6,1);
INSERT INTO MultiFlightBooking(Booking_ID,Flight_ID,Flight_Sequence) VALUES (7,7,1);
INSERT INTO MultiFlightBooking(Booking_ID,Flight_ID,Flight_Sequence) VALUES (8,8,1);
INSERT INTO MultiFlightBooking(Booking_ID,Flight_ID,Flight_Sequence) VALUES (9,9,1);
INSERT INTO MultiFlightBooking(Booking_ID,Flight_ID,Flight_Sequence) VALUES (10,10,1);
INSERT INTO MultiFlightBooking(Booking_ID,Flight_ID,Flight_Sequence) VALUES (11,11,1);
INSERT INTO MultiFlightBooking(Booking_ID,Flight_ID,Flight_Sequence) VALUES (12,12,1);
INSERT INTO MultiFlightBooking(Booking_ID,Flight_ID,Flight_Sequence) VALUES (13,13,1);
INSERT INTO MultiFlightBooking(Booking_ID,Flight_ID,Flight_Sequence) VALUES (14,14,1);
INSERT INTO MultiFlightBooking(Booking_ID,Flight_ID,Flight_Sequence) VALUES (15,15,1);
INSERT INTO MultiFlightBooking(Booking_ID,Flight_ID,Flight_Sequence) VALUES (16,16,1);
INSERT INTO MultiFlightBooking(Booking_ID,Flight_ID,Flight_Sequence) VALUES (17,17,1);
INSERT INTO MultiFlightBooking(Booking_ID,Flight_ID,Flight_Sequence) VALUES (17,42,2);
INSERT INTO MultiFlightBooking(Booking_ID,Flight_ID,Flight_Sequence) VALUES (18,18,1);
INSERT INTO MultiFlightBooking(Booking_ID,Flight_ID,Flight_Sequence) VALUES (19,19,1);
INSERT INTO MultiFlightBooking(Booking_ID,Flight_ID,Flight_Sequence) VALUES (20,20,1);
INSERT INTO MultiFlightBooking(Booking_ID,Flight_ID,Flight_Sequence) VALUES (21,21,1);
INSERT INTO MultiFlightBooking(Booking_ID,Flight_ID,Flight_Sequence) VALUES (22,22,1);
INSERT INTO MultiFlightBooking(Booking_ID,Flight_ID,Flight_Sequence) VALUES (23,23,1);
INSERT INTO MultiFlightBooking(Booking_ID,Flight_ID,Flight_Sequence) VALUES (24,24,1);
INSERT INTO MultiFlightBooking(Booking_ID,Flight_ID,Flight_Sequence) VALUES (25,25,1);
INSERT INTO MultiFlightBooking(Booking_ID,Flight_ID,Flight_Sequence) VALUES (26,26,1);
INSERT INTO MultiFlightBooking(Booking_ID,Flight_ID,Flight_Sequence) VALUES (27,27,1);
INSERT INTO MultiFlightBooking(Booking_ID,Flight_ID,Flight_Sequence) VALUES (28,28,1);
INSERT INTO MultiFlightBooking(Booking_ID,Flight_ID,Flight_Sequence) VALUES (29,29,1);
INSERT INTO MultiFlightBooking(Booking_ID,Flight_ID,Flight_Sequence) VALUES (30,30,1);
INSERT INTO MultiFlightBooking(Booking_ID,Flight_ID,Flight_Sequence) VALUES (31,31,1);
INSERT INTO MultiFlightBooking(Booking_ID,Flight_ID,Flight_Sequence) VALUES (32,32,1);
INSERT INTO MultiFlightBooking(Booking_ID,Flight_ID,Flight_Sequence) VALUES (32,8,2);
INSERT INTO MultiFlightBooking(Booking_ID,Flight_ID,Flight_Sequence) VALUES (32,12,3);
INSERT INTO MultiFlightBooking(Booking_ID,Flight_ID,Flight_Sequence) VALUES (33,33,1);
INSERT INTO MultiFlightBooking(Booking_ID,Flight_ID,Flight_Sequence) VALUES (34,34,1);
INSERT INTO MultiFlightBooking(Booking_ID,Flight_ID,Flight_Sequence) VALUES (35,35,1);
INSERT INTO MultiFlightBooking(Booking_ID,Flight_ID,Flight_Sequence) VALUES (36,36,1);
INSERT INTO MultiFlightBooking(Booking_ID,Flight_ID,Flight_Sequence) VALUES (37,37,1);
INSERT INTO MultiFlightBooking(Booking_ID,Flight_ID,Flight_Sequence) VALUES (38,38,1);
INSERT INTO MultiFlightBooking(Booking_ID,Flight_ID,Flight_Sequence) VALUES (39,39,1);
INSERT INTO MultiFlightBooking(Booking_ID,Flight_ID,Flight_Sequence) VALUES (40,40,1);
INSERT INTO MultiFlightBooking(Booking_ID,Flight_ID,Flight_Sequence) VALUES (41,41,1);
INSERT INTO MultiFlightBooking(Booking_ID,Flight_ID,Flight_Sequence) VALUES (41,3,2);
INSERT INTO MultiFlightBooking(Booking_ID,Flight_ID,Flight_Sequence) VALUES (42,42,1);
INSERT INTO MultiFlightBooking(Booking_ID,Flight_ID,Flight_Sequence) VALUES (43,43,1);
INSERT INTO MultiFlightBooking(Booking_ID,Flight_ID,Flight_Sequence) VALUES (44,44,1);
INSERT INTO MultiFlightBooking(Booking_ID,Flight_ID,Flight_Sequence) VALUES (45,45,1);

CREATE TABLE Flight(
   Flight_ID           INTEGER  NOT NULL PRIMARY KEY 
  ,Departure_Date_Time VARCHAR(25) NOT NULL
  ,Arrival_Date_Time   VARCHAR(25) NOT NULL
  ,Departure_Airport   VARCHAR(25) NOT NULL
  ,Arrival_Airport     VARCHAR(25) NOT NULL
);
INSERT INTO Flight(Flight_ID,Departure_Date_Time,Arrival_Date_Time,Departure_Airport,Arrival_Airport) VALUES (1,'12/7/2022 8:35','12/8/2022 11:23','ATL','LAS');
INSERT INTO Flight(Flight_ID,Departure_Date_Time,Arrival_Date_Time,Departure_Airport,Arrival_Airport) VALUES (2,'12/7/2022 14:18','12/9/2022 18:37','LAX','LAS');
INSERT INTO Flight(Flight_ID,Departure_Date_Time,Arrival_Date_Time,Departure_Airport,Arrival_Airport) VALUES (3,'12/9/2022 18:12','12/9/2022 21:31','SEA','DEN');
INSERT INTO Flight(Flight_ID,Departure_Date_Time,Arrival_Date_Time,Departure_Airport,Arrival_Airport) VALUES (4,'12/7/2022 9:34','12/7/2022 13:29','MIA','SFO');
INSERT INTO Flight(Flight_ID,Departure_Date_Time,Arrival_Date_Time,Departure_Airport,Arrival_Airport) VALUES (5,'12/7/2022 1:04','12/7/2022 7:59','LAS','SEA');
INSERT INTO Flight(Flight_ID,Departure_Date_Time,Arrival_Date_Time,Departure_Airport,Arrival_Airport) VALUES (6,'12/7/2022 11:11','12/9/2022 14:28','SFO','DFW');
INSERT INTO Flight(Flight_ID,Departure_Date_Time,Arrival_Date_Time,Departure_Airport,Arrival_Airport) VALUES (7,'12/7/2022 4:43','12/9/2022 5:59','DFW','SFO');
INSERT INTO Flight(Flight_ID,Departure_Date_Time,Arrival_Date_Time,Departure_Airport,Arrival_Airport) VALUES (8,'12/7/2022 2:08','12/8/2022 2:07','ORD','SFO');
INSERT INTO Flight(Flight_ID,Departure_Date_Time,Arrival_Date_Time,Departure_Airport,Arrival_Airport) VALUES (9,'12/7/2022 17:04','12/9/2022 3:51','LAX','LAX');
INSERT INTO Flight(Flight_ID,Departure_Date_Time,Arrival_Date_Time,Departure_Airport,Arrival_Airport) VALUES (10,'12/7/2022 8:02','12/9/2022 5:28','LAX','SFO');
INSERT INTO Flight(Flight_ID,Departure_Date_Time,Arrival_Date_Time,Departure_Airport,Arrival_Airport) VALUES (11,'12/8/2022 12:34','12/9/2022 4:57','SFO','MIA');
INSERT INTO Flight(Flight_ID,Departure_Date_Time,Arrival_Date_Time,Departure_Airport,Arrival_Airport) VALUES (12,'12/7/2022 3:03','12/9/2022 18:44','ATL','LAX');
INSERT INTO Flight(Flight_ID,Departure_Date_Time,Arrival_Date_Time,Departure_Airport,Arrival_Airport) VALUES (13,'12/7/2022 0:40','12/9/2022 2:38','SEA','ORD');
INSERT INTO Flight(Flight_ID,Departure_Date_Time,Arrival_Date_Time,Departure_Airport,Arrival_Airport) VALUES (14,'12/7/2022 0:18','12/7/2022 5:33','LAX','LAS');
INSERT INTO Flight(Flight_ID,Departure_Date_Time,Arrival_Date_Time,Departure_Airport,Arrival_Airport) VALUES (15,'12/7/2022 12:01','12/9/2022 0:19','SFO','LAS');
INSERT INTO Flight(Flight_ID,Departure_Date_Time,Arrival_Date_Time,Departure_Airport,Arrival_Airport) VALUES (16,'12/7/2022 21:03','12/7/2022 7:23','LAS','DFW');
INSERT INTO Flight(Flight_ID,Departure_Date_Time,Arrival_Date_Time,Departure_Airport,Arrival_Airport) VALUES (17,'12/7/2022 8:35','12/7/2022 16:00','LAX','DEN');
INSERT INTO Flight(Flight_ID,Departure_Date_Time,Arrival_Date_Time,Departure_Airport,Arrival_Airport) VALUES (18,'12/7/2022 18:59','12/10/2022 23:24','MIA','SEA');
INSERT INTO Flight(Flight_ID,Departure_Date_Time,Arrival_Date_Time,Departure_Airport,Arrival_Airport) VALUES (19,'12/7/2022 18:59','12/8/2022 6:52','MIA','SFO');
INSERT INTO Flight(Flight_ID,Departure_Date_Time,Arrival_Date_Time,Departure_Airport,Arrival_Airport) VALUES (20,'12/7/2022 11:03','12/9/2022 20:24','MIA','LAS');
INSERT INTO Flight(Flight_ID,Departure_Date_Time,Arrival_Date_Time,Departure_Airport,Arrival_Airport) VALUES (21,'12/7/2022 21:00','12/9/2022 17:28','SFO','LAX');
INSERT INTO Flight(Flight_ID,Departure_Date_Time,Arrival_Date_Time,Departure_Airport,Arrival_Airport) VALUES (22,'12/7/2022 8:49','12/9/2022 18:32','DFW','SEA');
INSERT INTO Flight(Flight_ID,Departure_Date_Time,Arrival_Date_Time,Departure_Airport,Arrival_Airport) VALUES (23,'12/7/2022 4:56','12/9/2022 23:55','JFK','ORD');
INSERT INTO Flight(Flight_ID,Departure_Date_Time,Arrival_Date_Time,Departure_Airport,Arrival_Airport) VALUES (24,'12/7/2022 6:22','12/9/2022 9:11','SFO','MIA');
INSERT INTO Flight(Flight_ID,Departure_Date_Time,Arrival_Date_Time,Departure_Airport,Arrival_Airport) VALUES (25,'12/9/2022 10:01','12/10/2022 0:01','JFK','SEA');
INSERT INTO Flight(Flight_ID,Departure_Date_Time,Arrival_Date_Time,Departure_Airport,Arrival_Airport) VALUES (26,'12/8/2022 15:08','12/10/2022 7:30','ATL','DEN');
INSERT INTO Flight(Flight_ID,Departure_Date_Time,Arrival_Date_Time,Departure_Airport,Arrival_Airport) VALUES (27,'12/7/2022 7:57','12/8/2022 18:16','SFO','ATL');
INSERT INTO Flight(Flight_ID,Departure_Date_Time,Arrival_Date_Time,Departure_Airport,Arrival_Airport) VALUES (28,'12/7/2022 9:30','12/8/2022 16:37','ORD','DFW');
INSERT INTO Flight(Flight_ID,Departure_Date_Time,Arrival_Date_Time,Departure_Airport,Arrival_Airport) VALUES (29,'12/7/2022 5:11','12/9/2022 23:58','SEA','ORD');
INSERT INTO Flight(Flight_ID,Departure_Date_Time,Arrival_Date_Time,Departure_Airport,Arrival_Airport) VALUES (30,'12/7/2022 0:26','12/8/2022 4:23','JFK','MIA');
INSERT INTO Flight(Flight_ID,Departure_Date_Time,Arrival_Date_Time,Departure_Airport,Arrival_Airport) VALUES (31,'12/7/2022 11:35','12/8/2022 1:45','LAS','ATL');
INSERT INTO Flight(Flight_ID,Departure_Date_Time,Arrival_Date_Time,Departure_Airport,Arrival_Airport) VALUES (32,'12/7/2022 2:32','12/7/2022 6:46','LAS','ORD');
INSERT INTO Flight(Flight_ID,Departure_Date_Time,Arrival_Date_Time,Departure_Airport,Arrival_Airport) VALUES (33,'12/7/2022 6:42','12/9/2022 0:24','LAX','DFW');
INSERT INTO Flight(Flight_ID,Departure_Date_Time,Arrival_Date_Time,Departure_Airport,Arrival_Airport) VALUES (34,'12/7/2022 13:50','12/9/2022 5:32','ATL','LAX');
INSERT INTO Flight(Flight_ID,Departure_Date_Time,Arrival_Date_Time,Departure_Airport,Arrival_Airport) VALUES (35,'12/7/2022 15:51','12/9/2022 14:54','ATL','DEN');
INSERT INTO Flight(Flight_ID,Departure_Date_Time,Arrival_Date_Time,Departure_Airport,Arrival_Airport) VALUES (36,'12/7/2022 20:53','12/7/2022 23:42','MIA','ATL');
INSERT INTO Flight(Flight_ID,Departure_Date_Time,Arrival_Date_Time,Departure_Airport,Arrival_Airport) VALUES (37,'12/7/2022 20:19','12/9/2022 15:50','LAX','JFK');
INSERT INTO Flight(Flight_ID,Departure_Date_Time,Arrival_Date_Time,Departure_Airport,Arrival_Airport) VALUES (38,'12/7/2022 4:31','12/9/2022 11:47','SEA','SFO');
INSERT INTO Flight(Flight_ID,Departure_Date_Time,Arrival_Date_Time,Departure_Airport,Arrival_Airport) VALUES (39,'12/7/2022 16:19','12/9/2022 2:13','MIA','DFW');
INSERT INTO Flight(Flight_ID,Departure_Date_Time,Arrival_Date_Time,Departure_Airport,Arrival_Airport) VALUES (40,'12/7/2022 20:41','12/9/2022 4:29','ATL','SEA');
INSERT INTO Flight(Flight_ID,Departure_Date_Time,Arrival_Date_Time,Departure_Airport,Arrival_Airport) VALUES (41,'12/8/2022 23:30','12/9/2022 15:03','ATL','SEA');
INSERT INTO Flight(Flight_ID,Departure_Date_Time,Arrival_Date_Time,Departure_Airport,Arrival_Airport) VALUES (42,'12/7/2022 7:26','12/9/2022 11:57','DEN','SEA');
INSERT INTO Flight(Flight_ID,Departure_Date_Time,Arrival_Date_Time,Departure_Airport,Arrival_Airport) VALUES (43,'12/7/2022 3:53','12/8/2022 13:12','LAX','ATL');
INSERT INTO Flight(Flight_ID,Departure_Date_Time,Arrival_Date_Time,Departure_Airport,Arrival_Airport) VALUES (44,'12/7/2022 21:54','12/9/2022 23:37','JFK','DFW');
INSERT INTO Flight(Flight_ID,Departure_Date_Time,Arrival_Date_Time,Departure_Airport,Arrival_Airport) VALUES (45,'12/7/2022 4:05','12/9/2022 22:35','ATL','JFK');

CREATE TABLE FlightAssignment(
   Flight_ID   INTEGER  NOT NULL
  ,Airline_ID  VARCHAR(10) NOT NULL
  ,Aircraft_ID VARCHAR(10) NOT NULL
  ,PRIMARY KEY (Flight_ID, Airline_ID)
  ,FOREIGN KEY (Flight_ID) REFERENCES Flight
  ,FOREIGN KEY (Airline_ID) REFERENCES Airline
);
INSERT INTO FlightAssignment(Flight_ID,Airline_ID,Aircraft_ID) VALUES (1,'LH901','567YZA');
INSERT INTO FlightAssignment(Flight_ID,Airline_ID,Aircraft_ID) VALUES (2,'AF678','IJK123');
INSERT INTO FlightAssignment(Flight_ID,Airline_ID,Aircraft_ID) VALUES (3,'QF890','UVW345');
INSERT INTO FlightAssignment(Flight_ID,Airline_ID,Aircraft_ID) VALUES (4,'AA123','HIJ456');
INSERT INTO FlightAssignment(Flight_ID,Airline_ID,Aircraft_ID) VALUES (5,'WN012','789GHI');
INSERT INTO FlightAssignment(Flight_ID,Airline_ID,Aircraft_ID) VALUES (6,'DL456','XYZ678');
INSERT INTO FlightAssignment(Flight_ID,Airline_ID,Aircraft_ID) VALUES (7,'WN012','234VWX');
INSERT INTO FlightAssignment(Flight_ID,Airline_ID,Aircraft_ID) VALUES (8,'WN012','789KLM');
INSERT INTO FlightAssignment(Flight_ID,Airline_ID,Aircraft_ID) VALUES (9,'EK234','YZA567');
INSERT INTO FlightAssignment(Flight_ID,Airline_ID,Aircraft_ID) VALUES (10,'UA789','DEF456');
INSERT INTO FlightAssignment(Flight_ID,Airline_ID,Aircraft_ID) VALUES (11,'BA345','VWX234');
INSERT INTO FlightAssignment(Flight_ID,Airline_ID,Aircraft_ID) VALUES (12,'LH901','345MNO');
INSERT INTO FlightAssignment(Flight_ID,Airline_ID,Aircraft_ID) VALUES (13,'QF890','XYZ678');
INSERT INTO FlightAssignment(Flight_ID,Airline_ID,Aircraft_ID) VALUES (14,'QF890','CDE567');
INSERT INTO FlightAssignment(Flight_ID,Airline_ID,Aircraft_ID) VALUES (15,'AA123','IJK123');
INSERT INTO FlightAssignment(Flight_ID,Airline_ID,Aircraft_ID) VALUES (16,'AA123','890BCD');
INSERT INTO FlightAssignment(Flight_ID,Airline_ID,Aircraft_ID) VALUES (17,'LH901','GHI789');
INSERT INTO FlightAssignment(Flight_ID,Airline_ID,Aircraft_ID) VALUES (18,'AA123','345MNO');
INSERT INTO FlightAssignment(Flight_ID,Airline_ID,Aircraft_ID) VALUES (19,'AA123','NOP012');
INSERT INTO FlightAssignment(Flight_ID,Airline_ID,Aircraft_ID) VALUES (20,'QF890','012NOP');
INSERT INTO FlightAssignment(Flight_ID,Airline_ID,Aircraft_ID) VALUES (21,'UA789','EFG123');
INSERT INTO FlightAssignment(Flight_ID,Airline_ID,Aircraft_ID) VALUES (22,'AF678','123ABC');
INSERT INTO FlightAssignment(Flight_ID,Airline_ID,Aircraft_ID) VALUES (23,'SQ567','NOP012');
INSERT INTO FlightAssignment(Flight_ID,Airline_ID,Aircraft_ID) VALUES (24,'DL456','890FGH');
INSERT INTO FlightAssignment(Flight_ID,Airline_ID,Aircraft_ID) VALUES (25,'SQ567','YZA567');
INSERT INTO FlightAssignment(Flight_ID,Airline_ID,Aircraft_ID) VALUES (26,'SQ567','VWX234');
INSERT INTO FlightAssignment(Flight_ID,Airline_ID,Aircraft_ID) VALUES (27,'UA789','STU901');
INSERT INTO FlightAssignment(Flight_ID,Airline_ID,Aircraft_ID) VALUES (28,'BA345','VWX234');
INSERT INTO FlightAssignment(Flight_ID,Airline_ID,Aircraft_ID) VALUES (29,'AF678','789GHI');
INSERT INTO FlightAssignment(Flight_ID,Airline_ID,Aircraft_ID) VALUES (30,'UA789','ZAB234');
INSERT INTO FlightAssignment(Flight_ID,Airline_ID,Aircraft_ID) VALUES (31,'UA789','789KLM');
INSERT INTO FlightAssignment(Flight_ID,Airline_ID,Aircraft_ID) VALUES (32,'WN012','012JKL');
INSERT INTO FlightAssignment(Flight_ID,Airline_ID,Aircraft_ID) VALUES (33,'EK234','901STU');
INSERT INTO FlightAssignment(Flight_ID,Airline_ID,Aircraft_ID) VALUES (34,'UA789','789GHI');
INSERT INTO FlightAssignment(Flight_ID,Airline_ID,Aircraft_ID) VALUES (35,'QF890','123ABC');
INSERT INTO FlightAssignment(Flight_ID,Airline_ID,Aircraft_ID) VALUES (36,'BA345','JKL012');
INSERT INTO FlightAssignment(Flight_ID,Airline_ID,Aircraft_ID) VALUES (37,'EK234','WXY901');
INSERT INTO FlightAssignment(Flight_ID,Airline_ID,Aircraft_ID) VALUES (38,'UA789','PQR678');
INSERT INTO FlightAssignment(Flight_ID,Airline_ID,Aircraft_ID) VALUES (39,'WN012','HIJ456');
INSERT INTO FlightAssignment(Flight_ID,Airline_ID,Aircraft_ID) VALUES (40,'UA789','567YZA');
INSERT INTO FlightAssignment(Flight_ID,Airline_ID,Aircraft_ID) VALUES (41,'AF678','567CDE');
INSERT INTO FlightAssignment(Flight_ID,Airline_ID,Aircraft_ID) VALUES (42,'WN012','456HIJ');
INSERT INTO FlightAssignment(Flight_ID,Airline_ID,Aircraft_ID) VALUES (43,'EK234','GHI789');
INSERT INTO FlightAssignment(Flight_ID,Airline_ID,Aircraft_ID) VALUES (44,'DL456','OPQ789');
INSERT INTO FlightAssignment(Flight_ID,Airline_ID,Aircraft_ID) VALUES (45,'AA123','234ZAB');

CREATE TABLE Aircraft(
   Airline_ID  VARCHAR(10) NOT NULL
  ,Aircraft_ID VARCHAR(10) NOT NULL
  ,PRIMARY KEY (Airline_ID, Aircraft_ID)
  ,Capacity    INTEGER  NOT NULL
  ,Model       VARCHAR(25) NOT NULL
  ,FOREIGN KEY (Airline_ID) REFERENCES Airline
);
INSERT INTO Aircraft(Airline_ID,Aircraft_ID,Capacity,Model) VALUES ('LH901','XYZ678',147,'Bombardier CRJ900');
INSERT INTO Aircraft(Airline_ID,Aircraft_ID,Capacity,Model) VALUES ('EK234','CDE567',178,'Cessna 172');
INSERT INTO Aircraft(Airline_ID,Aircraft_ID,Capacity,Model) VALUES ('UA789','IJK123',178,'Cessna 172');
INSERT INTO Aircraft(Airline_ID,Aircraft_ID,Capacity,Model) VALUES ('EK234','HIJ456',140,'Gulfstream G650');
INSERT INTO Aircraft(Airline_ID,Aircraft_ID,Capacity,Model) VALUES ('AA123','789GHI',119,'Airbus A320');
INSERT INTO Aircraft(Airline_ID,Aircraft_ID,Capacity,Model) VALUES ('UA789','DEF456',144,'Embraer E190');
INSERT INTO Aircraft(Airline_ID,Aircraft_ID,Capacity,Model) VALUES ('LH901','HIJ456',163,'Bombardier Global 6000');
INSERT INTO Aircraft(Airline_ID,Aircraft_ID,Capacity,Model) VALUES ('WN012','UVW345',166,'Airbus A380');
INSERT INTO Aircraft(Airline_ID,Aircraft_ID,Capacity,Model) VALUES ('EK234','345MNO',114,'Bombardier CRJ900');
INSERT INTO Aircraft(Airline_ID,Aircraft_ID,Capacity,Model) VALUES ('AA123','567YZA',190,'Bombardier CRJ900');
INSERT INTO Aircraft(Airline_ID,Aircraft_ID,Capacity,Model) VALUES ('LH901','UVW345',100,'Embraer Phenom 300');
INSERT INTO Aircraft(Airline_ID,Aircraft_ID,Capacity,Model) VALUES ('BA345','XYZ678',119,'Bombardier Global 6000');
INSERT INTO Aircraft(Airline_ID,Aircraft_ID,Capacity,Model) VALUES ('QF890','567YZA',179,'Boeing 747');
INSERT INTO Aircraft(Airline_ID,Aircraft_ID,Capacity,Model) VALUES ('WN012','789KLM',125,'Bombardier CRJ900');
INSERT INTO Aircraft(Airline_ID,Aircraft_ID,Capacity,Model) VALUES ('QF890','CDE567',154,'Airbus A380');
INSERT INTO Aircraft(Airline_ID,Aircraft_ID,Capacity,Model) VALUES ('EK234','XYZ678',123,'Cessna 172');
INSERT INTO Aircraft(Airline_ID,Aircraft_ID,Capacity,Model) VALUES ('QF890','789KLM',125,'Embraer Phenom 300');
INSERT INTO Aircraft(Airline_ID,Aircraft_ID,Capacity,Model) VALUES ('QF890','890BCD',195,'Airbus A320');
INSERT INTO Aircraft(Airline_ID,Aircraft_ID,Capacity,Model) VALUES ('AA123','XYZ678',164,'Airbus A320');
INSERT INTO Aircraft(Airline_ID,Aircraft_ID,Capacity,Model) VALUES ('UA789','XYZ678',187,'Airbus A320');
INSERT INTO Aircraft(Airline_ID,Aircraft_ID,Capacity,Model) VALUES ('QF890','XYZ678',162,'Gulfstream G650');
INSERT INTO Aircraft(Airline_ID,Aircraft_ID,Capacity,Model) VALUES ('BA345','890BCD',180,'Airbus A320');
INSERT INTO Aircraft(Airline_ID,Aircraft_ID,Capacity,Model) VALUES ('EK234','DEF456',172,'Boeing 747');
INSERT INTO Aircraft(Airline_ID,Aircraft_ID,Capacity,Model) VALUES ('WN012','HIJ456',148,'Embraer Phenom 300');
INSERT INTO Aircraft(Airline_ID,Aircraft_ID,Capacity,Model) VALUES ('LH901','567YZA',194,'Bombardier CRJ900');
INSERT INTO Aircraft(Airline_ID,Aircraft_ID,Capacity,Model) VALUES ('BA345','VWX234',114,'Airbus A380');
INSERT INTO Aircraft(Airline_ID,Aircraft_ID,Capacity,Model) VALUES ('BA345','567YZA',189,'Bombardier CRJ900');
INSERT INTO Aircraft(Airline_ID,Aircraft_ID,Capacity,Model) VALUES ('UA789','345MNO',166,'Airbus A320');
INSERT INTO Aircraft(Airline_ID,Aircraft_ID,Capacity,Model) VALUES ('AA123','IJK123',133,'Airbus A380');
INSERT INTO Aircraft(Airline_ID,Aircraft_ID,Capacity,Model) VALUES ('AF678','VWX234',173,'Airbus A320');
INSERT INTO Aircraft(Airline_ID,Aircraft_ID,Capacity,Model) VALUES ('AF678','890BCD',115,'Cessna 172');
INSERT INTO Aircraft(Airline_ID,Aircraft_ID,Capacity,Model) VALUES ('EK234','789GHI',190,'Bombardier CRJ900');
INSERT INTO Aircraft(Airline_ID,Aircraft_ID,Capacity,Model) VALUES ('DL456','YZA567',131,'Embraer Phenom 300');
INSERT INTO Aircraft(Airline_ID,Aircraft_ID,Capacity,Model) VALUES ('EK234','UVW345',104,'Bombardier CRJ900');
INSERT INTO Aircraft(Airline_ID,Aircraft_ID,Capacity,Model) VALUES ('WN012','789GHI',156,'Embraer E190');
INSERT INTO Aircraft(Airline_ID,Aircraft_ID,Capacity,Model) VALUES ('BA345','789GHI',142,'Gulfstream G650');
INSERT INTO Aircraft(Airline_ID,Aircraft_ID,Capacity,Model) VALUES ('WN012','VWX234',183,'Bombardier Global 6000');
INSERT INTO Aircraft(Airline_ID,Aircraft_ID,Capacity,Model) VALUES ('AF678','789KLM',131,'Boeing 747');
INSERT INTO Aircraft(Airline_ID,Aircraft_ID,Capacity,Model) VALUES ('WN012','567YZA',179,'Bombardier CRJ900');
INSERT INTO Aircraft(Airline_ID,Aircraft_ID,Capacity,Model) VALUES ('EK234','VWX234',167,'Gulfstream G650');
INSERT INTO Aircraft(Airline_ID,Aircraft_ID,Capacity,Model) VALUES ('WN012','DEF456',161,'Airbus A320');
INSERT INTO Aircraft(Airline_ID,Aircraft_ID,Capacity,Model) VALUES ('LH901','789KLM',188,'Bombardier Global 6000');
INSERT INTO Aircraft(Airline_ID,Aircraft_ID,Capacity,Model) VALUES ('EK234','789KLM',155,'Boeing 787');
INSERT INTO Aircraft(Airline_ID,Aircraft_ID,Capacity,Model) VALUES ('BA345','234VWX',124,'Boeing 787');
INSERT INTO Aircraft(Airline_ID,Aircraft_ID,Capacity,Model) VALUES ('WN012','890BCD',127,'Airbus A320');

CREATE TABLE Airline(
   Airline_ID   VARCHAR(10) NOT NULL PRIMARY KEY
  ,Airline_Name VARCHAR(25) NOT NULL
);
INSERT INTO Airline(Airline_ID,Airline_Name) VALUES ('LH901','Delta Airlines');
INSERT INTO Airline(Airline_ID,Airline_Name) VALUES ('AF678','United Airlines');
INSERT INTO Airline(Airline_ID,Airline_Name) VALUES ('QF890','American Airlines');
INSERT INTO Airline(Airline_ID,Airline_Name) VALUES ('AA123','Southwest Airlines');
INSERT INTO Airline(Airline_ID,Airline_Name) VALUES ('WN012','JetBlue Airways');
INSERT INTO Airline(Airline_ID,Airline_Name) VALUES ('DL456','British Airways');
INSERT INTO Airline(Airline_ID,Airline_Name) VALUES ('EK234','Lufthansa');
INSERT INTO Airline(Airline_ID,Airline_Name) VALUES ('UA789','Emirates');
INSERT INTO Airline(Airline_ID,Airline_Name) VALUES ('BA345','Air France');
INSERT INTO Airline(Airline_ID, Airline_Name) VALUES ('SQ567', 'Singapore Airlines');
INSERT INTO Airline(Airline_ID, Airline_Name) VALUES ('CX890', 'Cathay Pacific');
INSERT INTO Airline(Airline_ID, Airline_Name) VALUES ('EK456', 'Qatar Airways');
INSERT INTO Airline(Airline_ID, Airline_Name) VALUES ('AA678', 'Alaska Airlines');
INSERT INTO Airline(Airline_ID, Airline_Name) VALUES ('DL901', 'Hawaiian Airlines');
INSERT INTO Airline(Airline_ID, Airline_Name) VALUES ('BA678', 'Virgin Atlantic');