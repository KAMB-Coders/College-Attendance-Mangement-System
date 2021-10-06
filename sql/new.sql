/*inserting initial data for Admins table*/
insert into Admins(a_id, a_name, email, phone, pass) values
('Ad0001','Krithik Jain','krithikjain@gmail.com','9876543201','123'),
('Ad0002','Muskan Panjwani','muskanpanjwani@gmail.com','9876543202','123'),
('Ad0003','Bhavika Bhatnagar','bhavikabhatnagar@gmail.com','9876543203','123'),
('Ad0004','Ayush Gadiya','ayushgadiya@gmail.com','9876543204','123');
select * from Admins;

/*inserting data for Teacher table*/
insert into Teacher(t_id, t_name, email, phone, t_dept, pass) values
('Te0001','Hannah Baker','hannahbaker@gmail.com','9638520741','CSE','123'),
('Te0002','Clay Jensen','clayjensen@gmail.com','9638520742','CSE','123'),
('Te0003','Justin Foley','justinfoley@gmail.com','9638520743','IT','123'),
('Te0004','Alex Standall','alexstandall@gmail.com','9638520744','IT','123'),
('Te0005','Skye Miller','skyemiller@gmail.com','9638520745','CE','123'),
('Te0006','Ryan Shaver','ryanshaver@gmail.com','9638520746','CE','123'),
('Te0007','Casey Ford','caseyford@gmail.com','9638520747','ME','123'),
('Te0008','Marcus Cole','marcuscole@gmail.com','9638520748','ME','123'),
('Te0009','Jeff Atkins','jeffatkins@gmail.com','9638520749','EC','123'),
('Te0010','Jessica','jessica@gmail.com','9638520750','EC','123'),
('Te0011','Arya Stark','aryastark@gmail.com','9638520751','EE','123'),
('Te0012','Sansa Stark','sansastark@gmail.com','9638520752','EE','123'),
('Te0013','Ramsay Bolton','ramsaybolton@gmail.com','9638520753','EEE','123'),
('Te0014','Jon Snow','jonsnow@gmail.com','9638520754','EEE','123'),
('Te0015','Khal Drogo','khaldrogo@gmail.com','9638520755','BS','123');
select * from Teacher;

/*inserting data into Department table*/
insert into Department(d_id, d_name, hod) values
('CSE','Computer Science Engineering','Te0001'),
('IT','Information Technology','Te0003'),
('CE','Civil Engineering','Te0005'),
('ME','Mechanical Engineering','Te0007'),
('EC','Electrical And Communication Engineering','Te0009'),
('EE','Electrical Engineering','Te0011'),
('EEE','Electrical And Electronics Engineering','Te0013'),
('BS','Basic Science','Te0015');
select * from Department;

/*inserting data to Course table*/
insert into Course(c_id, semester, branch, n_sub) values
(101,1,'CSE',5),(102,1,'IT',5),(103,1,'CE',5),(104,1,'ME',5),(105,1,'EC',5),(106,1,'EE',5),(107,1,'EEE',5),
(201,2,'CSE',5),(202,2,'IT',5),(203,2,'CE',5),(204,2,'ME',5),(205,2,'EC',5),(206,2,'EE',5),(207,2,'EEE',5),
(301,3,'CSE',6),(302,3,'IT',6),(303,3,'CE',6),(304,3,'ME',6),(305,3,'EC',6),(306,3,'EE',6),(307,3,'EEE',6),
(401,4,'CSE',6),(402,4,'IT',6),(403,4,'CE',6),(404,4,'ME',6),(405,4,'EC',6),(406,4,'EE',6),(407,4,'EEE',6),
(501,5,'CSE',7),(502,5,'IT',7),(503,5,'CE',7),(504,5,'ME',7),(505,5,'EC',7),(506,5,'EE',7),(507,5,'EEE',7),
(601,6,'CSE',7),(602,6,'IT',7),(603,6,'CE',7),(604,6,'ME',7),(605,6,'EC',7),(606,6,'EE',7),(607,6,'EEE',7),
(701,7,'CSE',8),(702,7,'IT',8),(703,7,'CE',8),(704,7,'ME',8),(705,7,'EC',8),(706,7,'EE',8),(707,7,'EEE',8),
(801,8,'CSE',8),(802,8,'IT',8),(803,8,'CE',8),(804,8,'ME',8),(805,8,'EC',8),(806,8,'EE',8),(807,8,'EEE',8);

select * from Course;

insert into Subjects values
('CSE101','Java',101),('CSE102','C',101),('CSE103','Python',101),('CSE104','C++',101),('CSE105','Visual Basic .NET',101),
('CSE201','JavaScript',201),('CSE202','C#',201),('CSE203','PHP',201),('CSE204','SQL',201),('CSE205','Objective-C',201),
('CSE301','Assembly Language',301),('CSE302','MATLAB',301),('CSE303','Perl',301),('CSE304','Object Pascal',301),('CSE305','R',301),('CSE306','Ruby',301),
('CSE401','Go',401),('CSE402','Groovy',401),('CSE403','Swift',401),('CSE404','PL/SQL',401),('CSE405','SAS',401),('CSE406','D',401),
('CSE501','Lua',501),('CSE502','Dart',501),('CSE503','Fortran',501),('CSE504','COBOL',501),('CSE505','Scratch',501),('CSE506','Scala',501),('CSE507','ABAP',501),
('CSE601','Lisp',601),('CSE602','Logo',601),('CSE603','Ada',601),('CSE604','Transact-SQL',601),('CSE605','Prolog',601),('CSE606','Scheme',601),('CSE607','Rust',601),
('CSE701','Kotlin',701),('CSE702','Haskell',701),('CSE703','G',701),('CSE704','Julia',701),('CSE705','Tcl',701),('CSE706','PostScript',701),('CSE707','Ladder Logic',701),('CSE708','PL/I',701),
('CSE801','Hack',801),('CSE802','Erlang',801),('CSE803','Standard ML',801),('CSE804','RPG',801),('CSE805','Bash',801),('CSE806','Apache',801),('CSE807','Spark',801),('CSE808','HTML',801),

('IT101','Java',102),('IT102','C',102),('IT103','Python',102),('IT104','C++',102),('IT105','Visual Basic .NET',102),
('IT201','JavaScript',202),('IT202','C#',202),('IT203','PHP',202),('IT204','SQL',202),('IT205','Objective-C',202),
('IT301','Assembly Language',302),('IT302','MATLAB',302),('IT303','Perl',302),('IT304','Object Pascal',302),('IT305','R',302),('IT306','Ruby',302),
('IT401','Go',402),('IT402','Groovy',402),('IT403','Swift',402),('IT404','PL/SQL',402),('IT405','SAS',402),('IT406','D',402),
('IT501','Lua',502),('IT502','Dart',502),('IT503','Fortran',502),('IT504','COBOL',502),('IT505','Scratch',502),('IT506','Scala',502),('IT507','ABAP',502),
('IT601','Lisp',602),('IT602','Logo',602),('IT603','Ada',602),('IT604','Transact-SQL',602),('IT605','Prolog',602),('IT606','Scheme',602),('IT607','Rust',602),
('IT701','Kotlin',702),('IT702','Haskell',702),('IT703','G',702),('IT704','Julia',702),('IT705','Tcl',702),('IT706','PostScript',702),('IT707','Ladder Logic',702),('IT708','PL/I',702),
('IT801','Hack',802),('IT802','Erlang',802),('IT803','Standard ML',802),('IT804','RPG',802),('IT805','Bash',802),('IT806','Apache',802),('IT807','Spark',802),('IT808','HTML',802),

('CE101','Java',103),('CE102','C',103),('CE103','Python',103),('CE104','C++',103),('CE105','Visual Basic .NET',103),
('CE201','JavaScript',203),('CE202','C#',203),('CE203','PHP',203),('CE204','SQL',203),('CE205','Objective-C',203),
('CE301','Assembly Language',303),('CE302','MATLAB',303),('CE303','Perl',303),('CE304','Object Pascal',303),('CE305','R',303),('CE306','Ruby',303),
('CE401','Go',403),('CE402','Groovy',403),('CE403','Swift',403),('CE404','PL/SQL',403),('CE405','SAS',403),('CE406','D',403),
('CE501','Lua',503),('CE502','Dart',503),('CE503','Fortran',503),('CE504','COBOL',503),('CE505','Scratch',503),('CE506','Scala',503),('CE507','ABAP',503),
('CE601','Lisp',603),('CE602','Logo',603),('CE603','Ada',603),('CE604','Transact-SQL',603),('CE605','Prolog',603),('CE606','Scheme',603),('CE607','Rust',603),
('CE701','Kotlin',703),('CE702','Haskell',703),('CE703','G',703),('CE704','Julia',703),('CE705','Tcl',703),('CE706','PostScript',703),('CE707','Ladder Logic',703),('CE708','PL/I',703),
('CE801','Hack',803),('CE802','Erlang',803),('CE803','Standard ML',803),('CE804','RPG',803),('CE805','Bash',803),('CE806','Apache',803),('CE807','Spark',803),('CE808','HTML',803),

('ME101','Java',104),('ME102','C',104),('ME103','Python',104),('ME104','C++',104),('ME105','Visual Basic .NET',104),
('ME201','JavaScript',204),('ME202','C#',204),('ME203','PHP',204),('ME204','SQL',204),('ME205','Objective-C',204),
('ME301','Assembly Language',304),('ME302','MATLAB',304),('ME303','Perl',304),('ME304','Object Pascal',304),('ME305','R',304),('ME306','Ruby',304),
('ME401','Go',404),('ME402','Groovy',404),('ME403','Swift',404),('ME404','PL/SQL',404),('ME405','SAS',404),('ME406','D',404),
('ME501','Lua',504),('ME502','Dart',504),('ME503','Fortran',504),('ME504','COBOL',504),('ME505','Scratch',504),('ME506','Scala',504),('ME507','ABAP',504),
('ME601','Lisp',604),('ME602','Logo',604),('ME603','Ada',604),('ME604','Transact-SQL',604),('ME605','Prolog',604),('ME606','Scheme',604),('ME607','Rust',604),
('ME701','Kotlin',704),('ME702','Haskell',704),('ME703','G',704),('ME704','Julia',704),('ME705','Tcl',704),('ME706','PostScript',704),('ME707','Ladder Logic',704),('ME708','PL/I',704),
('ME801','Hack',804),('ME802','Erlang',804),('ME803','Standard ML',804),('ME804','RPG',804),('ME805','Bash',804),('ME806','Apache',804),('ME807','Spark',804),('ME808','HTML',804),

('EC101','Java',105),('EC102','C',105),('EC103','Python',105),('EC104','C++',105),('EC105','Visual Basic .NET',105),
('EC201','JavaScript',205),('EC202','C#',205),('EC203','PHP',205),('EC204','SQL',205),('EC205','Objective-C',205),
('EC301','Assembly Language',305),('EC302','MATLAB',305),('EC303','Perl',305),('EC304','Object Pascal',305),('EC305','R',305),('EC306','Ruby',305),
('EC401','Go',405),('EC402','Groovy',405),('EC403','Swift',405),('EC404','PL/SQL',405),('EC405','SAS',405),('EC406','D',405),
('EC501','Lua',505),('EC502','Dart',505),('EC503','Fortran',505),('EC504','COBOL',505),('EC505','Scratch',505),('EC506','Scala',505),('EC507','ABAP',505),
('EC601','Lisp',605),('EC602','Logo',605),('EC603','Ada',605),('EC604','Transact-SQL',605),('EC605','Prolog',605),('EC606','Scheme',605),('EC607','Rust',605),
('EC701','Kotlin',705),('EC702','Haskell',705),('EC703','G',705),('EC704','Julia',705),('EC705','Tcl',705),('EC706','PostScript',705),('EC707','Ladder Logic',705),('EC708','PL/I',705),
('EC801','Hack',805),('EC802','Erlang',805),('EC803','Standard ML',805),('EC804','RPG',805),('EC805','Bash',805),('EC806','Apache',805),('EC807','Spark',805),('EC808','HTML',805),

('EE101','Java',106),('EE102','C',106),('EE103','Python',106),('EE104','C++',106),('EE105','Visual Basic .NET',106),
('EE201','JavaScript',206),('EE202','C#',206),('EE203','PHP',206),('EE204','SQL',206),('EE205','Objective-C',206),
('EE301','Assembly Language',306),('EE302','MATLAB',306),('EE303','Perl',306),('EE304','Object Pascal',306),('EE305','R',306),('EE306','Ruby',306),
('EE401','Go',406),('EE402','Groovy',406),('EE403','Swift',406),('EE404','PL/SQL',406),('EE405','SAS',406),('EE406','D',406),
('EE501','Lua',506),('EE502','Dart',506),('EE503','Fortran',506),('EE504','COBOL',506),('EE505','Scratch',506),('EE506','Scala',506),('EE507','ABAP',506),
('EE601','Lisp',606),('EE602','Logo',606),('EE603','Ada',606),('EE604','Transact-SQL',606),('EE605','Prolog',606),('EE606','Scheme',606),('EE607','Rust',606),
('EE701','Kotlin',706),('EE702','Haskell',706),('EE703','G',706),('EE704','Julia',706),('EE705','Tcl',706),('EE706','PostScript',706),('EE707','Ladder Logic',706),('EE708','PL/I',706),
('EE801','Hack',806),('EE802','Erlang',806),('EE803','Standard ML',806),('EE804','RPG',806),('EE805','Bash',806),('EE806','Apache',806),('EE807','Spark',806),('EE808','HTML',806),

('EEE101','Java',107),('EEE102','C',107),('EEE103','Python',107),('EEE104','C++',107),('EEE105','Visual Basic .NET',107),
('EEE201','JavaScript',207),('EEE202','C#',207),('EEE203','PHP',207),('EEE204','SQL',207),('EEE205','Objective-C',207),
('EEE301','Assembly Language',307),('EEE302','MATLAB',307),('EEE303','Perl',307),('EEE304','Object Pascal',307),('EEE305','R',307),('EEE306','Ruby',307),
('EEE401','Go',407),('EEE402','Groovy',407),('EEE403','Swift',407),('EEE404','PL/SQL',407),('EEE405','SAS',407),('EEE406','D',407),
('EEE501','Lua',507),('EEE502','Dart',507),('EEE503','Fortran',507),('EEE504','COBOL',507),('EEE505','Scratch',507),('EEE506','Scala',507),('EEE507','ABAP',507),
('EEE601','Lisp',607),('EEE602','Logo',607),('EEE603','Ada',607),('EEE604','Transact-SQL',607),('EEE605','Prolog',607),('EEE606','Scheme',607),('EEE607','Rust',607),
('EEE701','Kotlin',707),('EEE702','Haskell',707),('EEE703','G',707),('EEE704','Julia',707),('EEE705','Tcl',707),('EEE706','PostScript',707),('EEE707','Ladder Logic',707),('EEE708','PL/I',707),
('EEE801','Hack',807),('EEE802','Erlang',807),('EEE803','Standard ML',807),('EEE804','RPG',807),('EEE805','Bash',807),('EEE806','Apache',807),('EEE807','Spark',807),('EEE808','HTML',807);
select * from Subjects;

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
('St0021','Scrooge McDuck','scroogemcduck@gmail.com',9876543231,'123',105),
('St0022','Speedy Gonzales','speedygonzales@gmail.com',9876543232,'123',105),
('St0023','Courage','courage@gmail.com',9876543233,'123',105),
('St0024','Velma Dinkley','velmadinkley@gmail.com',9876543234,'123',105),
('St0025','Ostwald','ostwald@gmail.com',9876543235,'123',105),
('St0026','Pluto','pluto@gmail.com',9876543236,'123',106),
('St0027','Papa Smurf','papasmurf@gmail.com',9876543237,'123',106),
('St0028','Road Runner','roadrunner@gmail.com',9876543238,'123',106),
('St0029','Super Man','superman@gmail.com',9876543239,'123',106),
('St0030','Droopy','droopy@gmail.com',9876543240,'123',106),
('St0031','Perry Platypus','perryplatypus@gmail.com',9876543241,'123',107),
('St0032','Pikachu','pikachu@gmail.com',9876543242,'123',107),
('St0033','Minnie Mouse','minniemouse@gmail.com',9876543243,'123',107),
('St0034','Dead Pool','deadpool@gmail.com',9876543244,'123',107),
('St0035','Ichan','ichan@gmail.com',9876543245,'123',107),
('St0036','Iron Man','ironman@gmail.com',9876543246,'123',301),
('St0037','Snow White','snowwhite@gmail.com',9876543247,'123',301),
('St0038','Lola Bunny','lolabunny@gmail.com',9876543248,'123',301),
('St0039','Captain Hook','captainhook@gmail.com',9876543249,'123',301),
('St0040','Darkwing Duck','dwarkingduck@gmail.com',9876543250,'123',301),
('St0041','Fred Jones','fredjones@gmail.com',9876543251,'123',302),
('St0042','The Minion','theminion@gmail.com',9876543252,'123',302),
('St0043','Heinz Doofenshmirtz','heinzdoofenshmirtz@gmail.com',9876543253,'123',302),
('St0044','Scrappy Doo','scrappydoo@gmail.com',9876543254,'123',302),
('St0045','Johnny Bravo','johnnybravo@gmail.com',9876543255,'123',302),
('St0046','Jessie','jessie@gmail.com',9876543256,'123',303),
('St0047','Ash Ketchum','ashketchum@gmail.com',9876543257,'123',303),
('St0048','Daisy','daisy@gmail.com',9876543258,'123',303),
('St0049','Henery Hawk','heneryhawk@gmail.com',9876543259,'123',303),
('St0050','Shadow Hedgehog','shadowhedgehog@gmail.com',9876543260,'123',303),
('St0051','Mr. Bean','mrbean@gmail.com',9876543261,'123',304),
('St0052','Ben Tennyson','bentennyson@gmail.com',9876543262,'123',304),
('St0053','Raphael Turtle','raphaelturtle@gmail.com',9876543263,'123',304),
('St0054','Donatello Turtle','donatelloturtle@gmail.com',9876543264,'123',304),
('St0055','Misty','misty@gmail.com',9876543265,'123',304),
('St0056','Vegeta Ballz','vegetaballz@gmail.com',9876543266,'123',305),
('St0057','Doc Hudson','dochudson@gmail.com',9876543267,'123',305),
('St0058','Gwen Tennyson','gwentennyson@gmail.com',9876543268,'123',305),
('St0059','Hello Kitty','hellokitty@gmail.com',9876543269,'123',305),
('St0060','Piglet','pigleyt@gmail.com',9876543270,'123',305),
('St0061','Nobita Nobi','nobitanobi@gmail.com',9876543271,'123',306),
('St0062','Doremon','doremon@gmail.com',9876543272,'123',306),
('St0063','Doremi','doremi@gmail.com',9876543273,'123',306),
('St0064','Shinchan Noraha','shinchannohara@gmail.com',9876543274,'123',306),
('St0065','Oggy','oggy@gmail.com',9876543275,'123',306),
('St0066','Bob The Builder','bobthebuilder@gmail.com',9876543276,'123',307),
('St0067','Thomas Train','thomasthetrain@gmail.com',9876543277,'123',307),
('St0068','Motu','motu@gmail.com',9876543278,'123',307),
('St0069','Patlu','patlu@gmail.com',9876543279,'123',307),
('St0070','Don','don@gmail.com',9876543280,'123',307),
('St0071','Homer Simpson','homersimpson@gmail.com',9876543281,'123',501),
('St0072','Goofy','goofy@gmail.com',9876543282,'123',501),
('St0073','Olive Oyl','oliveoyl@gmail.com',9876543283,'123',501),
('St0074','Tasmanian Devil','tasmaniandevil@gmail.com',9876543284,'123',501),
('St0075','Wilma Flinstone','wilmaflinstone@gmail.com',9876543285,'123',501),
('St0076','Pluto','pluto@gmail.com',9876543286,'123',502),
('St0077','Droopy','droopy@gmail.com',9876543287,'123',502),
('St0078','Richie Rich','richierich@gmail.com',9876543288,'123',502),
('St0079','Mrs Granny','granny@gmail.com',9876543289,'123',502),
('St0080','Miss Prissy','missprissy@gmail.com',9876543290,'123',502),
('St0081','Hiroshi Nohara','hiroshinohara@gmail.com',9876543291,'123',503),
('St0082','Himawari Nohara','himawarinohara@gmail.com',9876543292,'123',503),
('St0083','Misae Nohara','misaenohara@gmail.com',9876543293,'123',503),
('St0084','Action Kamen','actionkamen@gmail.com',9876543294,'123',503),
('St0085','Nene Sakurada','nenesakurada@gmail.com',9876543295,'123',503),
('St0086','Midori Yoshinaga','midoriyoshinaga@gmail.com',9876543296,'123',504),
('St0087','Shiro','shiro@gmail.com',9876543297,'123',504),
('St0088','BuriBuri','buriburi@gmail.com',9876543298,'123',504),
('St0089','Ai Suotome','aisuotome@gmail.com',9876543299,'123',504),
('St0090','Yoshirin','yoshirin@gmail.com',9876543300,'123',504),
('St0091','Bochan','bochan',9876543301,'123',505),
('St0092','Masao Sato','masaosato@gmail.com',9876543302,'123',505),
('St0093','Ench','ench@gmail.com',9876543303,'123',505),
('St0094','Micchi','micchi@gmail.com',9876543304,'123',505),
('St0095','Nanako Oohara','nanakooohara@gmail.com',9876543305,'123',505),
('St0096','Kiteretsu','kiteretsu@gmail.com',9876543306,'123',506),
('St0097','Korosuke','korosuke@gmail.com',9876543307,'123',506),
('St0098','Miyoko Nonohana','miyokononohana@gmail.com',9876543308,'123',506),
('St0099','Kaoru Kumada','kaorukumada@gmail.com',9876543309,'123',506),
('St0100','Kouji Tongari','koujitongari@gmail.com',9876543310,'123',506),
('St0101','Mr. Benzuo','mrbenzuo@gmail.com',9876543311,'123',507),
('St0102','Michiko Kite','michikokite@gmail.com',9876543312,'123',507),
('St0103','Itaro Kite','itarokite@gmail.com',9876543313,'123',507),
('St0104','Suneo Honekawa','suneohonekawa@gmail.com',9876543314,'123',507),
('St0105','Shizuka Minamoto','shizukaminamoto@gmail.com',9876543315,'123',507),
('St0106','Takeshi Goda','takeshigoda@gmail.com',9876543316,'123',701),
('St0107','Regina Rich','reginarich@gmail.com',9876543317,'123',701),
('St0108','Noovo Rich','noovorich@gmail.com',9876543318,'123',701),
('St0109','Titus','titus@gmail.com',9876543319,'123',701),
('St0110','Mintley','mintley@gmail.com',9876543320,'123',701),
('St0111','Cleo','cleo@gmail.com',987654321,'123',702),
('St0112','Worry','worry@gmail.com',9876543322,'123',702),
('St0113','Stormy','stormy@gmail.com',9876543323,'123',702),
('St0114','Spender','spender@gmail.com',9876543324,'123',702),
('St0115','Gussie','gussie@gmail.com',9876543325,'123',702),
('St0116','Surprise','surprise@gmail.com',9876543326,'123',703),
('St0117','Dollar','dollar@gmail.com',9876543327,'123',703),
('St0118','Gloria Glad','gloriaglad@gmail.com',9876543328,'123',703),
('St0119','Mayda Munny','maydamunny@gmail.com',9876543329,'123',703),
('St0120','Billy Bellhops','billybellhops@gmail.com',9876543330,'123',703),
('St0121','Hagemaru Hageda','hageamruhageda@gmail.com',9876543331,'123',704),
('St0122','Pesu','pesu@gmail.com',9876543332,'123',704),
('St0123','Aiko','aiko@gmail.com',9876543333,'123',704),
('St0124','Kondo Maseru','kondomaseru@gmail.com',9876543334,'123',704),
('St0125','Yuji','yuji@gmail.com',9876543335,'123',704),
('St0126','Weenie','weenie@gmail.com',9876543336,'123',705),
('St0127','Pongo','pongo@gmail.com',9876543337,'123',705),
('St0128','Daisy','daisy@gmail.com',987654338,'123',705),
('St0129','Leo','leo@gmail.com',9876543339,'123',705),
('St0130','Egbert','egbert@gmail.com',9876543340,'123',705),
('St0131','Henry','henry@gmail.com',9876543341,'123',706),
('St0132','Chutki','chutki@gmail.com',9876543342,'123',706),
('St0133','Kirmada','kirmada@gmail.com',9876543343,'123',706),
('St0134','Indraverma','indraverma@gmail.com',9876543344,'123',706),
('St0135','Indumati','indumati@gmail.com',9876543345,'123',706),
('St0136','Kalia','kalia@gmail.com',9876543346,'123',707),
('St0137','Dholu','dholu@gmail.com',9876543347,'123',707),
('St0138','Bholu','bholu@gmail.com',9876543348,'123',707),
('St0139','Jaggu','jaggu@gmail.com',9876543349,'123',707),
('St0140','Raju','raju@gmail.com',9876543350,'123',707);
select * from Student;