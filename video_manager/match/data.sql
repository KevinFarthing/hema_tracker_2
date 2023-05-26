INSERT INTO tournaments (name,start_date,end_date,id) VALUES
	 ('Ars Gladii Open','2023-05-05','2023-05-07',1),
	 ('Icebreaker','2023-04-21','2023-04-23',2),
	 ('Ars Gladii Open','2022-04-23','2022-04-24',3),
	 ('Midwinter Armizare','2022-03-12','2022-03-13',4),
	 ('Midwinter Armizare','2023-01-28','2023-01-29',5);

INSERT INTO colors (color,id) VALUES
	 ('orange',1),
	 ('green',2),
	 ('unknown',3),
	 ('white',4);


INSERT INTO schools (name,id) VALUES
	 ('Fenris Kunst des Fechtens',1),
	 ('Ram''s Head Fencing',2),
	 ('Indianapolis Fencing Club',3),
	 ('Wiktenauer',4),
	 ('Lonin',5),
	 ('Système d’Armes, New Orleans',6),
	 ('Austin HWG',7),
	 ('Goliath Fencing',8),
	 ('Lansing Longsword Guild',10),
	 ('Two Ravens',11),
	 ('Hilt and Helm Pittsburgh Fencing Club',12),
	 ('SoCal Swords',13),
	 ('River Heron HEMA',14),
	 ('Capital KDF',15),
	 ('Edmonton Historical Martial Arts',16),
	 ('Ars Gladii',18),
	 ('Zwingers Club',19),
	 ('Maryland KDF',20),
	 ('Youngstown',21),
	 ('Philadelphia Common Fencers Guild',22),
	 ('Auckland Sword & Shield',23),
	 ('MEMAG',24),
	 ('En Garde Fencing',25),
	 ('Bold City',26),
	 ('Royal Arts Fencing Academy',27),
	 ('Scuffletown',28),
	 ('Steelhead WMA',29),
	 ('Atlanta Historical Fencing Academy',30),
	 ('Ann Arbor',31),
	 ('Mordhau',32),
	 ('Order of the Broken Sword',33),
	 ('Steel City',34),
	 ('Crossing Fight School',35),
	 ('Hudson Valley Fencing',36),
	 ('L''Arte',37),
	 ('Nachreisen',38),
	 ('Metropolitan Historical Fencing Academy',39),
	 ('Ironhide Combative',41),
	 ('Salida Historical Fencing Academy',42),
	 ('Chicago Swordplay Guild',43),
	 ('Arena Weapon Arts',44),
	 ('HEMA Titans',45),
	 ('University of Western Ontario',46),
	 ('Gem City',47),
	 ('Heartland HEMA',48),
	 ('Swordplay Guild of Romeo',49),
	 ('Bucks Historical Longsword',50),
	 ('WHFA',51),
	 ('Swordsmanship Museum and Academy',52),
	 ('Nickel City Longsword Academy',53),
	 ('Wasatch HEMA',54),
	 ('Centerline Sword School',55);




INSERT INTO fighters (name,school_id,id) VALUES
	 ('Christopher Morgan',21,1),
	 ('Christopher Yang',33,2),
	 ('Colin McConnell',11,3),
	 ('Collin Vredenberg',39,4),
	 ('Craig Anderson',51,5),
	 ('Cristina Tamer',31,6),
	 ('Dana Shoffstall',24,7),
	 ('Daniel Evans',34,8),
	 ('Daniel Krauss',10,9),
	 ('David Miller',38,10),
	 ('David Reddy',47,11),
	 ('David Socha',11,12),
	 ('Derek Ray',27,13),
	 ('DJ Nero',45,14),
	 ('Donald Schumitsh',11,15),
	 ('Drew Wunderlich',18,16),
	 ('Eric Dalshaug',16,17),
	 ('Eric Roge',14,18),
	 ('Ezekiel Town',2,19),
	 ('Gabe Sweet',18,20),
	 ('Gabriel Pottebaum',48,21),
	 ('Genevieve Kelly',28,22),
	 ('Geoff Lehman',53,23),
	 ('Henry Reynolds',50,24),
	 ('Hershel-Mars Auberon',2,25),
	 ('Ian Kaferle',18,26),
	 ('Jack Seyler',18,27),
	 ('Jack Stewart',54,28),
	 ('Jacob Pigeon',18,29),
	 ('James Reilly',8,30),
	 ('Jane Strange',NULL,31),
	 ('Janna Datahan',19,32),
	 ('Jason Murdey',10,33),
	 ('Jason Roggenbuck',18,34),
	 ('Jeffrey Ebeling',31,35),
	 ('Jeffrey Will',50,36),
	 ('Jen Nagle',18,37),
	 ('Jeremiah Becker',33,38),
	 ('Jerry Berg',52,39),
	 ('Jesse Kulla',43,40),
	 ('JJ Conlon',47,41),
	 ('Joe Walther',38,42),
	 ('Joel Overly',25,43),
	 ('John Crum',20,44),
	 ('Jonathan Paulino',22,45),
	 ('Jonathan Ying',33,46),
	 ('Joseph Mundo',18,47),
	 ('Josh Furrate',38,48),
	 ('Josh Little',18,49),
	 ('Joshua Barnett',26,50),
	 ('Josias Arcadia',2,51),
	 ('Kaitlin McClendon',7,52),
	 ('RJ McKeehan',13,53),
	 ('Robert Myers',31,54),
	 ('Robert Sherry',24,55),
	 ('Rose Vanderley',41,56),
	 ('Ryan Hayes',52,57),
	 ('Ryan Leonard',34,58),
	 ('Ryan Wannerton',41,59),
	 ('Sam Halote',43,60),
	 ('Samuel Ryals',47,61),
	 ('Sean Franklin',18,62),
	 ('Sean Sles',52,63),
	 ('Sean Thummachart',43,64),
	 ('Stephen Briggs',16,65),
	 ('Stephen Cheney',50,66),
	 ('Stephen Dougherty',24,67),
	 ('Stephen Patrias',10,68),
	 ('Steven York',52,69),
	 ('Stevi Parker',50,70),
	 ('Tasia Socha',11,71),
	 ('Thomas Baker',49,72),
	 ('Thomas Kesler',47,73),
	 ('Thomas Nagle',18,74),
	 ('Thomas Nguyen',26,75),
	 ('Timothy Wallace',21,76),
	 ('Travis Hugan',31,77),
	 ('Tyler Dunham',18,78),
	 ('Tyler VanSyckle',10,79),
	 ('Victor Marchetto',11,80),
	 ('Xuanran Qi',46,81),
	 ('Zachary Showalter',28,82),
	 ('Aaron Karnuta',42,83),
	 ('Adam Franti',10,84),
	 ('Adam Severa',21,85),
	 ('Aidan Witherspoon',35,86),
	 ('AJ Trefney',11,87),
	 ('Al Layman',6,88),
	 ('Alanna Punch',18,89),
	 ('Alexander Kotarakos',NULL,90),
	 ('Allison Crump',43,91),
	 ('Alyssa Capel',50,92),
	 ('Amanda Webber',11,93),
	 ('Amber Damare',38,94),
	 ('Andrew Sell',2,95),
	 ('Anthony Buonomo',7,96),
	 ('Anthony Klon',24,97),
	 ('Arwin Depue',52,98),
	 ('Beau Hulgan',44,99),
	 ('Benjamin Aycrigg',30,100),
	 ('Benjamin Marie',2,101),
	 ('Beth Hammer',5,102),
	 ('Blake Schrock',31,103),
	 ('Branden Zipplinger',27,104),
	 ('Brandon Nguyen',18,105),
	 ('Brian Puckett',36,106),
	 ('Brian Stone',11,107),
	 ('Brittany Reeves',32,108),
	 ('Bryant Coston',44,109),
	 ('Bryce Johns',54,110),
	 ('Cale Rainkie',16,111),
	 ('Camilla Fraizer',24,112),
	 ('Chandler Brown',25,113),
	 ('Chris Shelton',12,114),
	 ('Kari Baker',32,115),
	 ('Kat Dunham',18,116),
	 ('Katharine Keller',18,117),
	 ('Keith Cotter-Reilly',30,118),
	 ('Kevin Brough',34,119),
	 ('Kevin Farthing',43,120),
	 ('Kevin Spencer',1,121),
	 ('Kiana Shurkin',15,122),
	 ('Kirby Smith III',41,123),
	 ('Kirsten Meredith',54,124),
	 ('Lacey Eck',11,125),
	 ('LeRoy Brown',3,126),
	 ('Lexi Seiler',18,127),
	 ('Lucie Biros',2,128),
	 ('Mariana López Rodriguez',39,129),
	 ('Marilyn Smith',34,130),
	 ('Marten Dollinger',11,131),
	 ('Matthew Dicken',27,132),
	 ('Maurice Chojecki',31,133),
	 ('Mel Collins',18,134),
	 ('Michael Chidester',4,135),
	 ('Michael Miller',16,136),
	 ('Michael Nordby',18,137),
	 ('Mikko Lehto',NULL,138),
	 ('Mitchell Skiera',18,139),
	 ('Morgan Sinko',7,140),
	 ('Myles Cupp',13,141),
	 ('Natalie Chaykina',3,142),
	 ('Nathan Antill',25,143),
	 ('Nathan King',54,144),
	 ('Nathan Wallace',27,145),
	 ('Nathaniel Tinker',31,146),
	 ('Nick Chiapazzi',29,147),
	 ('Niles Cerro',23,148),
	 ('Pam Marvinney',11,149),
	 ('Patrick McCook',50,150),
	 ('Quoc Lieu',26,151),
	 ('Raphael Ku',31,152),
	 ('Ray Crane',18,153),
	 ('Rebecca Glass',37,154),
	 ('Regina Mendicino',NULL,155),
	 ('Reya George',50,156),
	 ('Rhys Grayson',34,157),
	 ('Shane James Michael Hillen',55,158),
	 ('Patrick Garry Fuller',55,159),
	 ('Davis Vader',43,160),
	 ('Nat Morse Noland',43,161);


INSERT INTO matches (tournament_id,notes,winner,id) VALUES
	 (2,'',NULL,1),
	 (2,NULL,NULL,2),
	 (2,NULL,NULL,3),
	 (2,NULL,NULL,4),
	 (2,NULL,NULL,5),
	 (2,NULL,NULL,6),
	 (2,NULL,NULL,7),
	 (2,NULL,NULL,8),
	 (2,NULL,NULL,9),
	 (2,NULL,NULL,10),
	 (2,NULL,NULL,11),
	 (2,NULL,NULL,12),
	 (2,NULL,NULL,13),
	 (2,NULL,NULL,14),
	 (2,NULL,NULL,15),
	 (2,NULL,NULL,16),
	 (2,NULL,NULL,17),
	 (2,NULL,NULL,18),
	 (2,NULL,NULL,19),
	 (2,NULL,NULL,20),
	 (2,NULL,NULL,21),
	 (2,NULL,NULL,22),
	 (2,NULL,NULL,23),
	 (2,NULL,NULL,24),
	 (2,NULL,NULL,25),
	 (2,NULL,NULL,26),
	 (2,NULL,NULL,27),
	 (2,NULL,NULL,28),
	 (2,NULL,NULL,29),
	 (2,NULL,NULL,30),
	 (2,NULL,NULL,31),
	 (2,NULL,NULL,32),
	 (1,NULL,NULL,33),
	 (1,NULL,NULL,34),
	 (1,NULL,NULL,35),
	 (1,NULL,NULL,36),
	 (1,NULL,NULL,37),
	 (1,NULL,NULL,38),
	 (1,NULL,NULL,39),
	 (1,NULL,NULL,40),
	 (1,NULL,NULL,41),
	 (1,NULL,NULL,42),
	 (1,NULL,NULL,43),
	 (1,NULL,NULL,44),
	 (1,NULL,NULL,45),
	 (1,NULL,NULL,46),
	 (1,NULL,NULL,47),
	 (1,NULL,NULL,48),
	 (1,NULL,NULL,49),
	 (1,NULL,NULL,50),
	 (1,NULL,NULL,51),
	 (1,NULL,NULL,52),
	 (1,NULL,NULL,53),
	 (1,NULL,NULL,54),
	 (1,NULL,NULL,55),
	 (1,NULL,NULL,56);





INSERT INTO match_fighter_map (match_id,fighter_id,color_id,"order",id) VALUES
	 (2,120,3,1,2),
	 (3,51,1,1,3),
	 (3,120,2,1,4),
	 (4,120,3,1,5),
	 (5,120,3,1,8),
	 (6,120,3,1,9),
	 (7,120,3,1,10),
	 (8,160,3,1,11),
	 (9,160,3,1,12),
	 (10,160,3,1,13),
	 (11,160,3,1,14),
	 (12,160,3,1,15),
	 (13,160,3,1,18),
	 (14,160,3,1,19),
	 (15,160,3,1,20),
	 (16,158,3,1,21),
	 (17,158,3,1,22),
	 (18,160,3,1,23),
	 (19,158,3,1,24),
	 (19,160,3,1,25),
	 (20,160,3,1,26),
	 (21,158,3,1,27),
	 (22,159,3,1,28),
	 (23,158,3,1,29),
	 (24,160,3,1,30),
	 (25,120,3,1,31),
	 (26,120,3,1,32),
	 (27,161,3,1,39),
	 (28,120,3,1,40),
	 (29,120,3,1,48),
	 (30,120,3,1,49),
	 (31,120,3,1,55),
	 (32,120,3,1,58),
	 (33,91,3,1,59),
	 (34,91,3,1,60),
	 (35,120,3,1,61),
	 (36,120,3,1,62),
	 (37,120,3,1,63),
	 (38,128,3,1,64),
	 (41,91,3,1,65),
	 (41,91,3,1,66),
	 (42,91,3,1,67),
	 (42,91,3,1,68),
	 (42,91,3,1,69),
	 (43,91,3,1,70),
	 (43,91,3,1,71),
	 (43,91,3,1,72),
	 (44,91,3,1,73),
	 (44,91,3,1,74),
	 (44,91,3,1,75),
	 (45,40,3,1,76),
	 (46,40,3,1,77),
	 (47,40,3,1,78),
	 (48,91,3,1,79),
	 (48,91,3,1,80),
	 (49,91,3,1,81),
	 (50,91,3,1,82),
	 (51,91,3,1,83),
	 (52,91,2,1,84),
	 (53,128,3,1,85),
	 (54,91,3,1,86),
	 (55,91,3,1,87),
	 (56,128,3,1,88),
	 (52,128,4,1,89),
	 (1,120,1,1,90);


INSERT INTO tags (tag,id) VALUES
	 ('low guard',1),
	 ('finals match',2),
	 ('hand snipe',3),
	 ('longsword',4),
	 ('rapier',5),
	 ('sidesword',6),
	 ('saber',7),
	 ('zwerchhau',8);




INSERT INTO tag_match_map (tag_id,match_id) VALUES
	 (4,1),
	 (1,1),
	 (4,2),
	 (4,3),
	 (4,4),
	 (4,5),
	 (4,6),
	 (4,7),
	 (4,8),
	 (4,9),
	 (4,10),
	 (4,11),
	 (4,12),
	 (4,13),
	 (4,14),
	 (3,1);



INSERT INTO videos (match_id,url,id) VALUES
	 (1,'NGeq0QAUouc',1),
	 (2,'DJxx822lfbY',2),
	 (3,'51Pyn7xz82s',3),
	 (4,'ImhqUvF0nME',4),
	 (4,'y1w4d-vk6EY',5),
	 (4,'O1VbGgVhmwA',6),
	 (5,'CxyO13VndTY',7),
	 (6,'fXBhv3WXv60',8),
	 (7,'qgQUppjCdEs',9),
	 (8,'_dCwEvC8d08',10),
	 (9,'FbgilCXGlYI',11),
	 (10,'IPJMHnq5kdo',12),
	 (11,'k3HU5bYc5zE',13),
	 (12,'CX7wb_n__tk',14),
	 (12,'yMfdjfc-pok',15),
	 (12,'KLxKxufpbPQ',16),
	 (13,'p8V-zWsYSZY',17),
	 (14,'UmNCVNKKmIo',18),
	 (15,'cFc6MEq-Lto',19),
	 (16,'HwPeRjN8WIs',20),
	 (17,'Lvp2hstwPsY',21),
	 (18,'hgv1VxjPOq8',22),
	 (19,'UKbT79Wdh7E',23),
	 (20,'r0tSwLdqbCg',24),
	 (21,'pbFTaseXKNg',25),
	 (22,'krXoWQFeGt0',26),
	 (23,'waIq-J2OIV4',27),
	 (24,'3je0Ydr36HU',28),
	 (25,'4A15j77E2Oc',29),
	 (26,'9gL-GHsbf9Y',30),
	 (26,'s6DAi8N4QO0',31),
	 (26,'NUkYeoieCH8',32),
	 (26,'hzOGjKw8sLY',33),
	 (26,'tX1qmQ8WjFM',34),
	 (26,'VYczZHh9mh8',35),
	 (26,'0o_-H5AVkIk',36),
	 (27,'ZTtECowSYbY',37),
	 (28,'lQ2XKIbEJwA',38),
	 (28,'dWkmUHWKrIY',39),
	 (28,'nM0I4K0JPZE',40),
	 (28,'eq1qSo2Dor8',41),
	 (28,'-vXOddNE8Oo',42),
	 (28,'CtQxDO4u8iw',43),
	 (28,'4fWznIdhgYI',44),
	 (28,'mBywgJbitpo',45),
	 (29,'sE77mR1-u5Y',46),
	 (30,'bIhXQ3rMn3w',47),
	 (30,'iKmhRO0sbi4',48),
	 (30,'87tPWut3kMQ',49),
	 (30,'rwLG7QAZUnU',50),
	 (30,'Ogq1PrqpyeY',51),
	 (30,'DnweUxg5Wc0',52),
	 (31,'n8l24tWw1eg',53),
	 (31,'ch_mCkZZrdI',54),
	 (31,'9JrZCuBInIE',55),
	 (32,'pq6aQ2fDroY',56),
	 (32,'eb1GztDi9Cw',57),
	 (32,'Oa2e9d5u1Hc',58),
	 (33,'b1y9oK5fxVU',59),
	 (34,'grEUbDKvpmk',60),
	 (35,'rrOoVQ4OS_c',61),
	 (36,'0qNcDa0Mp1Q',62),
	 (37,'23LkbbE79so',63),
	 (38,'SW2RzmMqk7Q',64),
	 (39,'xDV3nldW6S8',65),
	 (39,'Qye2dCLulbY',66),
	 (39,'GQeqbzw_0Jw',67),
	 (40,'aL6k88MpBAE',68),
	 (41,'QQTsJh_mimM',69),
	 (41,'_BkP6_7f6a4',70),
	 (42,'e8fVKD4tIG4',71),
	 (42,'V3uAw4f2Cx4',72),
	 (42,'nZRzWTG4WWA',73),
	 (43,'0DoIiTBJ8aU',74),
	 (43,'Whj6TNkb8ps',75),
	 (43,'wQPVZTZqgOg',76),
	 (44,'zBneOAt8Hd4',77),
	 (44,'YsNkYfF_Yuk',78),
	 (44,'J84QT5zcEvg',79),
	 (45,'Da3E9skVgl4',80),
	 (46,'nZdj8ADmzdM',81),
	 (47,'hIbZs-ccWZs',82),
	 (48,'Lm-RGWQzW6I',83),
	 (48,'YJ7REnZzCS0',84),
	 (49,'hoUVMOxSOnI',85),
	 (50,'uW5FyNTQFZ0',86),
	 (51,'C8BmuqsVemk',87),
	 (52,'bn4A9MMHUhw',88),
	 (53,'zZqbbInyG4o',89),
	 (54,'sYVnk0ombgc',90),
	 (55,'1NGmTTfQra4',91),
	 (56,'LzQY_I0RRXc',92);

