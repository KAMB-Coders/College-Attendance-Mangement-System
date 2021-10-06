/*inserting initial data for Admins table*/
insert into Admins(a_id, a_name, email, phone, pass) values
('Ad0001','Krithik Jain','krithikjain@gmail.com','9876543201','123'),
('Ad0002','Muskan Panjwani','muskanpanjwani@gmail.com','9876543202','123'),
('Ad0003','Bhavika Bhatnagar','bhavikabhatnagar@gmail.com','9876543203','qwerty'),
('Ad0004','Ayush Gadiya','ayushgadiya@gmail.com','9876543204','123');
select * from Admins;

/*update Admins set pass="qwerty" where email="bhavikabhatnagar@gmail.com";*/

/*inserting data for Teacher table*/
insert into Teacher(t_id, t_name, email, phone, t_dept, pass) values
('Te0001','Hannah Baker','hannahbaker@gmail.com','9638520741','CS','123'),
('Te0002','Clay Jensen','clayjensen@gmail.com','9638520742','IT','123'),
('Te0003','Justin Foley','justinfoley@gmail.com','9638520743','EC','123'),
('Te0004','Alex Standall','alexstandall@gmail.com','9638520744','EE','123'),
('Te0005','Skye Miller','skyemiller@gmail.com','9638520745','EEE','123'),
('Te0006','Ryan Shaver','ryanshaver@gmail.com','9638520746','CE','123'),
('Te0007','Casey Ford','caseyford@gmail.com','9638520747','ME','123'),
('Te0008','Marcus Cole','marcuscole@gmail.com','9638520748','CS','123'),
('Te0009','Jeff Atkins','jeffatkins@gmail.com','9638520749','BS','123'),
('Te0010','Jessica','jessica@gmail.com','9638520750','BS','123');
select * from Teacher;

/*inserting data into Department table*/
insert into Department(d_id, d_name, hod) values
('CSE','Computer Science Engineering','Te0001'),
('IT','Information Technology','Te0002'),
('EC','Electrical And Communication Engineering','Te0003'),
('EE','Electrical Engineering','Te0004'),
('EEE','Electrical And Electronics Engineering','Te0005'),
('CE','Civil Engineering','Te0006'),
('ME','Mechanical Engineering','Te0007'),
('BS','Basic Science','Te0009');
select * from Department;

/*inserting data to Course table*/
insert into Course(c_id, semester, branch, n_sub) values
(101,1,'CSE',5),(102,1,'EC',5),(103,1,'CE',5),(104,1,'ME',5),(105,1,'EEE',5),(106,1,'EE',5),(107,1,'IT',5),
(201,3,'CSE',6),(202,3,'EC',6),(203,3,'CE',6),(204,3,'ME',6),(205,3,'EEE',6),(206,3,'EE',6),(207,3,'IT',6),
(301,5,'CSE',7),(302,5,'EC',7),(303,5,'CE',7),(304,5,'ME',7),(305,5,'EEE',7),(306,5,'EE',7),(307,5,'IT',7),
(401,7,'CSE',8),(402,7,'EC',8),(403,7,'CE',8),(404,7,'ME',8),(405,7,'EEE',8),(406,7,'EE',8),(407,7,'IT',8);
select * from Course;

/*inserting data into Student table*/
insert into Student(s_id, s_name, email, phone, pass, s_course) values
('St0001','Bugs Bunny','bugsbunny@gmail.com',9876543211,'123',101),
('St0002','Spongebob Squarepants','spongebobsquarebants@gmail.com',9876543212,'123',101),
('St0003','Scooby Doo','scoobydoo@gmail.com',9876543213,'123',101),
('St0004','Daffy Duck','daffyduck@gmail.com',9876543214,'123',101),
('St0005','Tom','tom@gmail.com',9876543215,'123',101),
('St0006','Mickey Mouse','mickeymouse@gmail.com',9876543216,'123',102),
('St0007','Jerry','jerry@gmail.com',9876543217,'123',102),
('St0008','Shaggy Rogers','shaggyrogers@gmail.com',9876543218,'123',102),
('St0009','Donald Duck','donaldduck@gmail.com',9876543219,'123',102),
('St0010','Sylvester','sylester@gmail.com',9876543220,'123',102),
('St0011','Pink Panther','pinkpanther@gmail.com',9876543221,'123',103),
('St0012','Spider Man','spiderman@gmail.com',9876543222,'123',103),
('St0013','Bat Man','batman@gmail.com',9876543223,123,103),
('St0014','Popeye The Sailor','popeyethesailor@gmail.com',9876543224,'123',103),
('St0015','Porky Pig','porkeypig@gmail.com',9876543225,'123',103),
('St0016','Yosemite Sam','yosemitesam@gmail.com',9876543226,'123',104),
('St0017','Elmer Fudd','elmerfudd@gmail.com',9876543227,'123',104),
('St0018','Woody Woodpecker','woodywoodpecker@gmail.com',9876543228,'123',104),
('St0019','Foghorn Leghorn','foghornleghorn@gmail.com',9876543229,'123',104),
('St0020','Tweety','tweety@gmail.com',9876543230,'123',104),

('St0021','Scrooge McDuck','scroogemcduck@gmail.com',9876543231,'123',201),
('St0022','Speedy Gonzales','speedygonzales@gmail.com',9876543232,'123',201),
('St0023','Courage','courage@gmail.com',9876543233,'123',201),
('St0024','Velma Dinkley','velmadinkley@gmail.com',9876543234,'123',201),
('St0025','Ostwald','ostwald@gmail.com',9876543235,'123',201),
('St0026','Pluto','pluto@gmail.com',9876543236,'123',202),
('St0027','Papa Smurf','papasmurf@gmail.com',9876543237,'123',202),
('St0028','Road Runner','roadrunner@gmail.com',9876543238,'123',202),
('St0029','Super Man','superman@gmail.com',9876543239,'123',202),
('St0030','Droopy','droopy@gmail.com',9876543240,'123',202),
('St0031','Perry Platypus','perryplatypus@gmail.com',9876543241,'123',203),
('St0032','Pikachu','pikachu@gmail.com',9876543242,'123',203),
('St0033','Minnie Mouse','minniemouse@gmail.com',9876543243,'123',203),
('St0034','Dead Pool','deadpool@gmail.com',9876543244,'123',203),
('St0035','Ichan','ichan@gmail.com',9876543245,'123',203),
('St0036','Iron Man','ironman@gmail.com',9876543246,'123',204),
('St0037','Snow White','snowwhite@gmail.com',9876543247,'123',204),
('St0038','Lola Bunny','lolabunny@gmail.com',9876543248,'123',204),
('St0039','Captain Hook','captainhook@gmail.com',9876543249,'123',204),
('St0040','Darkwing Duck','dwarkingduck@gmail.com',9876543250,'123',204),

('St0041','Fred Jones','fredjones@gmail.com',9876543251,'123',301),
('St0042','The Minion','theminion@gmail.com',9876543252,'123',301),
('St0043','Heinz Doofenshmirtz','heinzdoofenshmirtz@gmail.com',9876543253,'123',301),
('St0044','Scrappy Doo','scrappydoo@gmail.com',9876543254,'123',301),
('St0045','Johnny Bravo','johnnybravo@gmail.com',9876543255,'123',301),
('St0046','Jessie','jessie@gmail.com',9876543256,'123',302),
('St0047','Ash Ketchum','ashketchum@gmail.com',9876543257,'123',302),
('St0048','Daisy','daisy@gmail.com',9876543258,'123',302),
('St0049','Henery Hawk','heneryhawk@gmail.com',9876543259,'123',302),
('St0050','Shadow Hedgehog','shadowhedgehog@gmail.com',9876543260,'123',302),
('St0051','Mr. Bean','mrbean@gmail.com',9876543261,'123',303),
('St0052','Ben Tennyson','bentennyson@gmail.com',9876543262,'123',303),
('St0053','Raphael Turtle','raphaelturtle@gmail.com',9876543263,'123',303),
('St0054','Donatello Turtle','donatelloturtle@gmail.com',9876543264,'123',303),
('St0055','Misty','misty@gmail.com',9876543265,'123',303),
('St0056','Vegeta Ballz','vegetaballz@gmail.com',9876543266,'123',304),
('St0057','Doc Hudson','dochudson@gmail.com',9876543267,'123',304),
('St0058','Gwen Tennyson','gwentennyson@gmail.com',9876543268,'123',304),
('St0059','Hello Kitty','hellokitty@gmail.com',9876543269,'123',304),
('St0060','Piglet','pigleyt@gmail.com',9876543270,'123',304),

('St0061','Nobita Nobi','nobitanobi@gmail.com',9876543271,'123',401),
('St0062','Doremon','doremon@gmail.com',9876543272,'123',401),
('St0063','Doremi','doremi@gmail.com',9876543273,'123',401),
('St0064','Shinchan Noraha','shinchannohara@gmail.com',9876543274,'123',401),
('St0065','Oggy','oggy@gmail.com',9876543275,'123',401),
('St0066','Bob The Builder','bobthebuilder@gmail.com',9876543276,'123',402),
('St0067','Thomas Train','thomasthetrain@gmail.com',9876543277,'123',402),
('St0068','Motu','motu@gmail.com',9876543278,'123',402),
('St0069','Patlu','patlu@gmail.com',9876543279,'123',402),
('St0070','Don','don@gmail.com',9876543280,'123',402),
('St0071','Homer Simpson','homersimpson@gmail.com',9876543281,'123',403),
('St0072','Goofy','goofy@gmail.com',9876543282,'123',403),
('St0073','Olive Oyl','oliveoyl@gmail.com',9876543283,'123',403),
('St0074','Tasmanian Devil','tasmaniandevil@gmail.com',9876543284,'123',403),
('St0075','Wilma Flinstone','wilmaflinstone@gmail.com',9876543285,'123',403),
('St0076','Pluto','pluto@gmail.com',9876543286,'123',404),
('St0077','Droopy','droopy@gmail.com',9876543287,'123',404),
('St0078','Richie Rich','richierich@gmail.com',9876543288,'123',404),
('St0079','Mrs Granny','granny@gmail.com',9876543289,'123',404),
('St0080','Miss Prissy','missprissy@gmail.com',9876543290,'123',404);
select * from Student;

insert into Subjects values
('CSE101','1',101),('CSE102','2',101),('CSE103','3',101),('CSE104','4',101),('CSE105','5',101),
('CSE201','1',201),('CSE202','2',201),('CSE203','3',201),('CSE204','4',201),('CSE205','5',201),('CSE206','6',201),
('CSE301','1',301),('CSE302','2',301),('CSE303','3',301),('CSE304','4',301),('CSE305','5',301),('CSE306','6',301),('CSE307','7',301),
('CSE401','1',401),('CSE402','2',401),('CSE403','3',401),('CSE404','4',401),('CSE405','5',401),('CSE406','6',401),('CSE407','7',401),('CSE408','8',401),

('EC101','1',102),('EC102','2',102),('EC103','3',102),('EC104','4',102),('EC105','5',102),
('EC201','1',202),('EC202','2',202),('EC203','3',202),('EC204','4',202),('EC205','5',202),('EC206','6',202),
('EC301','1',302),('EC302','2',302),('EC303','3',302),('EC304','4',302),('EC305','5',302),('EC306','6',302),('EC307','7',302),
('EC401','1',402),('EC402','2',402),('EC403','3',402),('EC404','4',402),('EC405','5',402),('EC406','6',402),('EC407','7',402),('EC408','8',402),

('CE101','1',103),('CE102','2',103),('CE103','3',103),('CE104','4',103),('CE105','5',103),
('CE201','1',203),('CE202','2',203),('CE203','3',203),('CE204','4',203),('CE205','5',203),('CE206','6',203),
('CE301','1',303),('CE302','2',303),('CE303','3',303),('CE304','4',303),('CE305','5',303),('CE306','6',303),('CE307','7',303),
('CE401','1',403),('CE402','2',403),('CE403','3',403),('CE404','4',403),('CE405','5',403),('CE406','6',403),('CE407','7',403),('CE408','8',403),

('ME101','1',104),('ME102','2',104),('ME103','3',104),('ME104','4',104),('ME105','5',104),
('ME201','1',204),('ME202','2',204),('ME203','3',204),('ME204','4',204),('ME205','5',204),('ME206','6',204),
('ME301','1',304),('ME302','2',304),('ME303','3',304),('ME304','4',304),('ME305','5',304),('ME306','6',304),('ME307','7',304),
('ME401','1',404),('ME402','2',404),('ME403','3',404),('ME404','4',404),('ME405','5',404),('ME406','6',404),('ME407','7',404),('ME408','8',404),

('EEE101','1',105),('EEE102','2',105),('EEE103','3',105),('EEE104','4',105),('EEE105','5',105),
('EEE201','1',205),('EEE202','2',205),('EEE203','3',205),('EEE204','4',205),('EEE205','5',205),('EEE206','6',205),
('EEE301','1',305),('EEE302','2',305),('EEE303','3',305),('EEE304','4',305),('EEE305','5',305),('EEE306','6',305),('EEE307','7',305),
('EEE401','1',405),('EEE402','2',405),('EEE403','3',405),('EEE404','4',405),('EEE405','5',405),('EEE406','6',405),('EEE407','7',405),('EEE408','8',405),

('EE101','1',102),('EE102','2',102),('EE103','3',102),('EE104','4',102),('EE105','5',102),
('EE201','1',202),('EE202','2',202),('EE203','3',202),('EE204','4',202),('EE205','5',202),('EE206','6',202),
('EE301','1',302),('EE302','2',302),('EE303','3',302),('EE304','4',302),('EE305','5',302),('EE306','6',302),('EE307','7',302),
('EE401','1',402),('EE402','2',402),('EE403','3',402),('EE404','4',402),('EE405','5',402),('EE406','6',402),('EE407','7',402),('EE408','8',402),

('IT101','1',102),('IT102','2',102),('IT103','3',102),('IT104','4',102),('IT105','5',102),
('IT201','1',202),('IT202','2',202),('IT203','3',202),('IT204','4',202),('IT205','5',202),('IT206','6',202),
('IT301','1',302),('IT302','2',302),('IT303','3',302),('IT304','4',302),('IT305','5',302),('IT306','6',302),('IT307','7',302),
('IT401','1',402),('IT402','2',402),('IT403','3',402),('IT404','4',402),('IT405','5',402),('IT406','6',402),('IT407','7',402),('IT408','8',402);
select * from Subjects;