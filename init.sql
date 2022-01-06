use IE6700;

drop table if exists followBy;
drop table if exists follow;
drop table if exists member;
drop table if exists postComment;
drop table if exists postPage;
drop table if exists clubPage;
drop table if exists user;

create table user 
(
	user_ID varchar(45) NOT NULL,
	firstName varchar(45),
	lastName varchar(45),
	phoneNum varchar(45),
	street varchar(45),
	city varchar(45),
	state varchar(45),
	zipCode int,
	primary key (user_ID)
);

create table clubPage
(
	page_ID varchar(45) NOT NULL,
	pageName varchar(45),
	Description varchar(128),
	admin_ID varchar(45),
	primary key (page_ID),
	foreign key (admin_ID) references user(user_ID)
);

create table member
(
	user_ID varchar(45) NOT NULL,
	page_ID varchar(45) NOT NULL,
	level int,
	foreign key (user_ID) references user(user_ID),
	foreign key (page_ID) references clubPage(page_ID)
);

create table followBy
(
	user_ID varchar(45) NOT NULL,
	followBy varchar(45)
);

create table follow
(
	user_ID varchar(45) NOT NULL,
	follow varchar(45)
);

create table postPage
(
	post_ID varchar(45) NOT NULL,
	title varchar(128) NOT NULL,
	Content varchar(128) NOT NULL,
	user_ID varchar(45) NOT NULL,
	page_ID varchar(45) NOT NULL,
	primary key (post_ID),
	foreign key (user_ID) references user(user_ID),
	foreign key (page_ID) references clubPage(page_ID)
);

create table postComment
(
	user_ID varchar(45) NOT NULL,
	post_ID varchar(45) NOT NULL,
	Comment varchar(128),
	CommentNum int NOT NULL,
	ComOnComNum int,
	foreign key (user_ID) references user(user_ID),
	foreign key (post_ID) references postPage(post_ID)
);

#user
insert into user (user_ID, firstName, lastName, phoneNum, street, city, state, zipCode) values ('669-67-2865', 'Avrom', 'Breddy', '305-867-8070', 'Nancy', 'Miami', 'Florida', '33261');
insert into user (user_ID, firstName, lastName, phoneNum, street, city, state, zipCode) values ('154-73-1589', 'Jesse', 'Delhay', '626-284-5196', 'Delladonna', 'Corona', 'California', '92883');
insert into user (user_ID, firstName, lastName, phoneNum, street, city, state, zipCode) values ('491-89-1638', 'Ferguson', 'Montel', '214-186-2544', 'Springs', 'Dallas', 'Texas', '75387');
insert into user (user_ID, firstName, lastName, phoneNum, street, city, state, zipCode) values ('443-71-3005', 'Nevin', 'Curtois', '213-856-4622', 'Village', 'Los Angeles', 'California', '90030');
insert into user (user_ID, firstName, lastName, phoneNum, street, city, state, zipCode) values ('399-80-5040', 'Ferdinanda', 'Treasaden', '712-821-0917', 'Graedel', 'Sioux City', 'Iowa', '51110');
insert into user (user_ID, firstName, lastName, phoneNum, street, city, state, zipCode) values ('454-14-3481', 'Sandy', 'Abrahams', '417-412-7078', 'Debra', 'Springfield', 'Missouri', '65805');
insert into user (user_ID, firstName, lastName, phoneNum, street, city, state, zipCode) values ('756-75-7159', 'Abran', 'Bliss', '702-404-7690', 'Shopko', 'North Las Vegas', 'Nevada', '89036');
insert into user (user_ID, firstName, lastName, phoneNum, street, city, state, zipCode) values ('512-95-8176', 'Hugo', 'Langfat', '305-108-0111', 'Debs', 'Naples', 'Florida', '33961');
insert into user (user_ID, firstName, lastName, phoneNum, street, city, state, zipCode) values ('698-08-6716', 'Percy', 'Blackboro', '918-543-2738', 'Valley Edge', 'Tulsa', 'Oklahoma', '74170');
insert into user (user_ID, firstName, lastName, phoneNum, street, city, state, zipCode) values ('705-16-6228', 'Emelita', 'Kruschov', '509-528-7946', 'Beilfuss', 'Spokane', 'Washington', '99205');
insert into user (user_ID, firstName, lastName, phoneNum, street, city, state, zipCode) values ('771-36-7505', 'Jacklin', 'Darington', '701-952-8856', 'Namekagon', 'Fargo', 'North Dakota', '58122');
insert into user (user_ID, firstName, lastName, phoneNum, street, city, state, zipCode) values ('506-34-1359', 'Lydon', 'Spraging', '336-476-7986', 'Hollow Ridge', 'High Point', 'North Carolina', '27264');
insert into user (user_ID, firstName, lastName, phoneNum, street, city, state, zipCode) values ('885-94-6711', 'Thor', 'Betjes', '915-676-6975', 'New Castle', 'El Paso', 'Texas', '88541');
insert into user (user_ID, firstName, lastName, phoneNum, street, city, state, zipCode) values ('236-90-9702', 'Fernando', 'Woofinden', '314-570-6992', 'Sachtjen', 'Saint Louis', 'Missouri', '63121');
insert into user (user_ID, firstName, lastName, phoneNum, street, city, state, zipCode) values ('314-56-5730', 'Xavier', 'Marcum', '417-207-5242', 'Victoria', 'Springfield', 'Missouri', '65810');
insert into user (user_ID, firstName, lastName, phoneNum, street, city, state, zipCode) values ('700-14-3211', 'Anderea', 'Stutter', '405-709-2500', 'Stoughton', 'Norman', 'Oklahoma', '73071');
insert into user (user_ID, firstName, lastName, phoneNum, street, city, state, zipCode) values ('657-01-5683', 'Selia', 'Elston', '334-550-5560', 'Lawn', 'Montgomery', 'Alabama', '36177');
insert into user (user_ID, firstName, lastName, phoneNum, street, city, state, zipCode) values ('889-28-8850', 'Ewen', 'Dimbleby', '859-910-3548', 'Pleasure', 'Lexington', 'Kentucky', '40591');
insert into user (user_ID, firstName, lastName, phoneNum, street, city, state, zipCode) values ('668-92-9213', 'Lissa', 'Bannester', '205-785-3923', 'Bayside', 'Tuscaloosa', 'Alabama', '35487');
insert into user (user_ID, firstName, lastName, phoneNum, street, city, state, zipCode) values ('701-85-0322', 'Saundra', 'Exer', '402-700-4129', 'Vera', 'Omaha', 'Nebraska', '68117');
insert into user (user_ID, firstName, lastName, phoneNum, street, city, state, zipCode) values ('155-02-6633', 'Latrina', 'Gashion', '707-643-2028', 'Springview', 'Santa Rosa', 'California', '95405');
insert into user (user_ID, firstName, lastName, phoneNum, street, city, state, zipCode) values ('267-22-3335', 'Normand', 'Bontine', '617-365-9753', 'Eastlawn', 'Boston', 'Massachusetts', '02216');
insert into user (user_ID, firstName, lastName, phoneNum, street, city, state, zipCode) values ('538-65-7880', 'Alethea', 'Iwaszkiewicz', '757-962-4408', 'Dahle', 'Norfolk', 'Virginia', '23509');
insert into user (user_ID, firstName, lastName, phoneNum, street, city, state, zipCode) values ('210-35-2163', 'Elmer', 'Kondratovich', '412-520-0001', 'Waxwing', 'Pittsburgh', 'Pennsylvania', '15274');
insert into user (user_ID, firstName, lastName, phoneNum, street, city, state, zipCode) values ('238-75-7529', 'Oneida', 'Edinburgh', '212-547-0067', 'Butterfield', 'New York City', 'New York', '10090');
insert into user (user_ID, firstName, lastName, phoneNum, street, city, state, zipCode) values ('697-06-9705', 'Ira', 'Kearns', '703-530-6648', 'Lighthouse Bay', 'Alexandria', 'Virginia', '22301');
insert into user (user_ID, firstName, lastName, phoneNum, street, city, state, zipCode) values ('235-78-6321', 'Brion', 'Douris', '865-966-9329', 'Old Shore', 'Knoxville', 'Tennessee', '37924');
insert into user (user_ID, firstName, lastName, phoneNum, street, city, state, zipCode) values ('226-31-3986', 'Lazarus', 'Sancraft', '770-968-7680', 'Claremont', 'Atlanta', 'Georgia', '30306');
insert into user (user_ID, firstName, lastName, phoneNum, street, city, state, zipCode) values ('221-80-6260', 'Pernell', 'Capponeer', '406-203-9981', 'Arrowood', 'Helena', 'Montana', '59623');
insert into user (user_ID, firstName, lastName, phoneNum, street, city, state, zipCode) values ('709-63-1539', 'Stephana', 'Fishpool', '706-661-2736', 'Bayside', 'Athens', 'Georgia', '30605');
insert into user (user_ID, firstName, lastName, phoneNum, street, city, state, zipCode) values ('721-79-3001', 'Kellina', 'Wrefford', '915-712-0663', 'Butternut', 'El Paso', 'Texas', '79934');
insert into user (user_ID, firstName, lastName, phoneNum, street, city, state, zipCode) values ('621-65-3981', 'Anson', 'Delacour', '646-179-7589', 'Mcguire', 'New York City', 'New York', '10099');
insert into user (user_ID, firstName, lastName, phoneNum, street, city, state, zipCode) values ('632-46-2963', 'Patrice', 'Comini', '413-957-5287', 'Blackbird', 'Springfield', 'Massachusetts', '01114');
insert into user (user_ID, firstName, lastName, phoneNum, street, city, state, zipCode) values ('889-18-6919', 'Beaufort', 'Spencelayh', '239-998-6637', 'Hagan', 'Naples', 'Florida', '33963');
insert into user (user_ID, firstName, lastName, phoneNum, street, city, state, zipCode) values ('744-15-3877', 'Sella', 'Maith', '602-947-8980', 'Ilene', 'Glendale', 'Arizona', '85311');
insert into user (user_ID, firstName, lastName, phoneNum, street, city, state, zipCode) values ('634-03-8491', 'Raphaela', 'Dicty', '915-662-7186', 'Petterle', 'El Paso', 'Texas', '88579');
insert into user (user_ID, firstName, lastName, phoneNum, street, city, state, zipCode) values ('489-34-2511', 'Thomasine', 'Chiverstone', '712-540-3508', 'Lerdahl', 'Sioux City', 'Iowa', '51110');
insert into user (user_ID, firstName, lastName, phoneNum, street, city, state, zipCode) values ('714-13-3212', 'Finn', 'De Simoni', '208-232-1637', 'Dryden', 'Boise', 'Idaho', '83716');
insert into user (user_ID, firstName, lastName, phoneNum, street, city, state, zipCode) values ('798-24-9672', 'Allyce', 'Joist', '313-619-1896', 'Birchwood', 'Detroit', 'Michigan', '48232');
insert into user (user_ID, firstName, lastName, phoneNum, street, city, state, zipCode) values ('343-20-9576', 'Meredith', 'Goschalk', '617-183-0900', 'Mcguire', 'Boston', 'Massachusetts', '02216');
insert into user (user_ID, firstName, lastName, phoneNum, street, city, state, zipCode) values ('745-70-9437', 'Hillary', 'Flieg', '512-316-4254', 'Thierer', 'Austin', 'Texas', '78789');
insert into user (user_ID, firstName, lastName, phoneNum, street, city, state, zipCode) values ('754-84-6459', 'Doreen', 'Lerway', '563-333-5048', 'School', 'Davenport', 'Iowa', '52809');
insert into user (user_ID, firstName, lastName, phoneNum, street, city, state, zipCode) values ('846-30-6274', 'Clay', 'Inmett', '303-793-8019', 'Monica', 'Denver', 'Colorado', '80249');
insert into user (user_ID, firstName, lastName, phoneNum, street, city, state, zipCode) values ('775-71-1967', 'Kamila', 'Treacher', '408-277-8204', 'Mandrake', 'San Jose', 'California', '95155');
insert into user (user_ID, firstName, lastName, phoneNum, street, city, state, zipCode) values ('535-76-7116', 'Ki', 'Benitti', '412-133-4234', 'Clemons', 'Pittsburgh', 'Pennsylvania', '15240');
insert into user (user_ID, firstName, lastName, phoneNum, street, city, state, zipCode) values ('657-69-1519', 'Felipa', 'Blaw', '419-794-4889', 'Kenwood', 'Toledo', 'Ohio', '43666');
insert into user (user_ID, firstName, lastName, phoneNum, street, city, state, zipCode) values ('873-47-1165', 'Yvette', 'Higgonet', '910-485-4945', 'Red Cloud', 'Fayetteville', 'North Carolina', '28305');
insert into user (user_ID, firstName, lastName, phoneNum, street, city, state, zipCode) values ('430-17-6488', 'Harris', 'Dedman', '904-200-1508', 'Dryden', 'Jacksonville', 'Florida', '32204');
insert into user (user_ID, firstName, lastName, phoneNum, street, city, state, zipCode) values ('716-03-1407', 'Deeanne', 'Sailor', '916-585-2126', 'Onsgard', 'Sacramento', 'California', '94280');
insert into user (user_ID, firstName, lastName, phoneNum, street, city, state, zipCode) values ('603-81-9761', 'Waneta', 'Gratrex', '513-206-5800', 'Bowman', 'Cincinnati', 'Ohio', '45208');

#clubPage
insert into clubPage (page_ID, pageName, Description, admin_ID) values ('40-4329271', 'Schultz-Kutch', 'Nulla ut erat id mauris.',"698-08-6716");
insert into clubPage (page_ID, pageName, Description, admin_ID) values ('79-3267892', 'Parisian, Stiedemann and McLaughlin', 'Mauris enim leo.',"771-36-7505");
insert into clubPage (page_ID, pageName, Description, admin_ID) values ('02-7497635', 'Franecki-Larkin', 'Aenean lectus.',"668-92-9213");
insert into clubPage (page_ID, pageName, Description, admin_ID) values ('92-5527298', 'Mayer LLC', 'Donec diam neque, vestibulum eget.',"538-65-7880");
insert into clubPage (page_ID, pageName, Description, admin_ID) values ('99-6905221', 'Herzog and Sons', 'Mauris enim leo, .',"889-18-6919");
insert into clubPage (page_ID, pageName, Description, admin_ID) values ('98-4208928', 'Sipes, Halvorson and Beer', 'Quisque.',"721-79-3001");
insert into clubPage (page_ID, pageName, Description, admin_ID) values ('91-7808757', 'Wuckert, Gleichner and Aufderhar', 'Duis consequat dui nec.',"538-65-7880");
insert into clubPage (page_ID, pageName, Description, admin_ID) values ('02-5754483', 'Turner Inc', 'In quis justo. ',"721-79-3001");
insert into clubPage (page_ID, pageName, Description, admin_ID) values ('07-4350989', 'Lynch and Sons', 'Duis aliquam convallis nunc.',"155-02-6633");
insert into clubPage (page_ID, pageName, Description, admin_ID) values ('91-4399439', 'Wyman, Dietrich and Wilkinson', 'Lorem ipsum dolor sit amet.', NULL);
insert into clubPage (page_ID, pageName, Description, admin_ID) values ('25-4008710', 'Sporer, Feest and O''Conner', 'Sed ante. Vivamus tortor.',"538-65-7880");
insert into clubPage (page_ID, pageName, Description, admin_ID) values ('31-8900670', 'Kub, O''Conner and Mueller', 'Proin eu mi.', NULL);
insert into clubPage (page_ID, pageName, Description, admin_ID) values ('33-0251457', 'Ziemann-Boehm', 'Fusce posuere.', NULL);
insert into clubPage (page_ID, pageName, Description, admin_ID) values ('22-8914754', 'Champlin-Romaguera', 'In hac habitasse platea dictumst.',"155-02-6633");
insert into clubPage (page_ID, pageName, Description, admin_ID) values ('90-0035153', 'Reichert and Sons', 'Proin leo odio',"744-15-3877");


#member
insert into member (user_ID, page_ID, level) values ("698-08-6716",	"40-4329271", 13);
insert into member (user_ID, page_ID, level) values ("698-08-6716",	"92-5527298", 4);
insert into member (user_ID, page_ID, level) values ("698-08-6716",	"91-4399439", 8);
insert into member (user_ID, page_ID, level) values ("771-36-7505",	"79-3267892", 12);
insert into member (user_ID, page_ID, level) values ("771-36-7505",	"02-7497635", 2);
insert into member (user_ID, page_ID, level) values ("771-36-7505",	"33-0251457", 6);
insert into member (user_ID, page_ID, level) values ("771-36-7505",	"91-4399439", 4);
insert into member (user_ID, page_ID, level) values ("669-67-2865",	"40-4329271", 12);
insert into member (user_ID, page_ID, level) values ("668-92-9213",	"02-7497635", 11);
insert into member (user_ID, page_ID, level) values ("538-65-7880",	"92-5527298", 12);
insert into member (user_ID, page_ID, level) values ("889-18-6919",	"99-6905221", 12);
insert into member (user_ID, page_ID, level) values ("721-79-3001",	"98-4208928", 11);
insert into member (user_ID, page_ID, level) values ("538-65-7880",	"91-7808757", 13);
insert into member (user_ID, page_ID, level) values ("721-79-3001",	"02-5754483", 11);
insert into member (user_ID, page_ID, level) values ("155-02-6633",	"07-4350989", 13);
insert into member (user_ID, page_ID, level) values ("538-65-7880",	"25-4008710", 10);
insert into member (user_ID, page_ID, level) values ("155-02-6633",	"22-8914754", 13);
insert into member (user_ID, page_ID, level) values ("744-15-3877",	"90-0035153", 13);
insert into member (user_ID, page_ID, level) values ("657-01-5683",	"91-4399439", 1);
insert into member (user_ID, page_ID, level) values ("889-28-8850",	"91-4399439", 2);
insert into member (user_ID, page_ID, level) values ("668-92-9213",	"91-4399439", 2);
insert into member (user_ID, page_ID, level) values ("701-85-0322",	"91-4399439", 2);
insert into member (user_ID, page_ID, level) values ("155-02-6633",	"91-4399439", 2);
insert into member (user_ID, page_ID, level) values ("267-22-3335",	"91-4399439", 2);
insert into member (user_ID, page_ID, level) values ("538-65-7880",	"91-4399439", 2);
insert into member (user_ID, page_ID, level) values ("210-35-2163",	"91-4399439", 2);
insert into member (user_ID, page_ID, level) values ("238-75-7529",	"91-4399439", 2);
insert into member (user_ID, page_ID, level) values ("697-06-9705",	"91-4399439", 2);
insert into member (user_ID, page_ID, level) values ("235-78-6321",	"91-4399439", 2);
insert into member (user_ID, page_ID, level) values ("226-31-3986",	"91-4399439", 2);
insert into member (user_ID, page_ID, level) values ("221-80-6260",	"91-4399439", 2);
insert into member (user_ID, page_ID, level) values ("709-63-1539",	"91-4399439", 2);
insert into member (user_ID, page_ID, level) values ("721-79-3001",	"91-4399439", 2);
insert into member (user_ID, page_ID, level) values ("621-65-3981",	"91-4399439", 8);
insert into member (user_ID, page_ID, level) values ("632-46-2963",	"91-4399439", 5);
insert into member (user_ID, page_ID, level) values ("889-18-6919",	"91-4399439", 5);
insert into member (user_ID, page_ID, level) values ("744-15-3877",	"91-4399439", 5);
insert into member (user_ID, page_ID, level) values ("634-03-8491",	"91-4399439", 5);
insert into member (user_ID, page_ID, level) values ("489-34-2511",	"91-4399439", 5);
insert into member (user_ID, page_ID, level) values ("714-13-3212",	"91-4399439", 5);
insert into member (user_ID, page_ID, level) values ("798-24-9672",	"91-4399439", 9);
insert into member (user_ID, page_ID, level) values ("343-20-9576",	"91-4399439", 9);
insert into member (user_ID, page_ID, level) values ("745-70-9437",	"91-4399439", 9);
insert into member (user_ID, page_ID, level) values ("754-84-6459",	"91-4399439", 9);
insert into member (user_ID, page_ID, level) values ("846-30-6274",	"91-4399439", 11);
insert into member (user_ID, page_ID, level) values ("775-71-1967",	"91-4399439", 11);
insert into member (user_ID, page_ID, level) values ("657-01-5683",	"90-0035153", 5);
insert into member (user_ID, page_ID, level) values ("889-28-8850",	"90-0035153", 5);
insert into member (user_ID, page_ID, level) values ("668-92-9213",	"90-0035153", 5);
insert into member (user_ID, page_ID, level) values ("701-85-0322",	"90-0035153", 5);
insert into member (user_ID, page_ID, level) values ("155-02-6633",	"90-0035153", 5);
insert into member (user_ID, page_ID, level) values ("267-22-3335",	"90-0035153", 5);
insert into member (user_ID, page_ID, level) values ("538-65-7880",	"90-0035153", 5);
insert into member (user_ID, page_ID, level) values ("210-35-2163",	"90-0035153", 5);
insert into member (user_ID, page_ID, level) values ("238-75-7529",	"90-0035153", 5);
insert into member (user_ID, page_ID, level) values ("697-06-9705",	"90-0035153", 5);
insert into member (user_ID, page_ID, level) values ("235-78-6321",	"90-0035153", 5);
insert into member (user_ID, page_ID, level) values ("226-31-3986",	"90-0035153", 5);
insert into member (user_ID, page_ID, level) values ("221-80-6260",	"90-0035153", 7);
insert into member (user_ID, page_ID, level) values ("709-63-1539",	"90-0035153", 9);
insert into member (user_ID, page_ID, level) values ("721-79-3001",	"90-0035153", 9);
insert into member (user_ID, page_ID, level) values ("621-65-3981",	"90-0035153", 9);
insert into member (user_ID, page_ID, level) values ("632-46-2963",	"90-0035153", 9);
insert into member (user_ID, page_ID, level) values ("889-18-6919",	"90-0035153", 9);
insert into member (user_ID, page_ID, level) values ("744-15-3877",	"90-0035153", 6);
insert into member (user_ID, page_ID, level) values ("634-03-8491",	"90-0035153", 6);
insert into member (user_ID, page_ID, level) values ("489-34-2511",	"90-0035153", 6);
insert into member (user_ID, page_ID, level) values ("714-13-3212",	"90-0035153", 4);
insert into member (user_ID, page_ID, level) values ("798-24-9672",	"90-0035153", 4);
insert into member (user_ID, page_ID, level) values ("343-20-9576",	"90-0035153", 4);
insert into member (user_ID, page_ID, level) values ("745-70-9437",	"90-0035153", 4);
insert into member (user_ID, page_ID, level) values ("754-84-6459",	"90-0035153", 4);
insert into member (user_ID, page_ID, level) values ("846-30-6274",	"90-0035153", 2);
insert into member (user_ID, page_ID, level) values ("775-71-1967",	"90-0035153", 2);

#follow
insert into follow (user_ID, follow) values ("885-94-6711",	"669-67-2865");
insert into follow (user_ID, follow) values ("236-90-9702",	"669-67-2865");
insert into follow (user_ID, follow) values ("314-56-5730",	"669-67-2865");
insert into follow (user_ID, follow) values ("700-14-3211",	"669-67-2865");
insert into follow (user_ID, follow) values ("657-01-5683",	"669-67-2865");
insert into follow (user_ID, follow) values ("889-28-8850",	"669-67-2865");
insert into follow (user_ID, follow) values ("668-92-9213",	"669-67-2865");
insert into follow (user_ID, follow) values ("701-85-0322",	"669-67-2865");
insert into follow (user_ID, follow) values ("155-02-6633",	"669-67-2865");
insert into follow (user_ID, follow) values ("267-22-3335",	"669-67-2865");
insert into follow (user_ID, follow) values ("538-65-7880",	"669-67-2865");
insert into follow (user_ID, follow) values ("210-35-2163",	"669-67-2865");
insert into follow (user_ID, follow) values ("238-75-7529",	"669-67-2865");
insert into follow (user_ID, follow) values ("697-06-9705",	"669-67-2865");
insert into follow (user_ID, follow) values ("235-78-6321",	"669-67-2865");
insert into follow (user_ID, follow) values ("669-67-2865",	"154-73-1589");
insert into follow (user_ID, follow) values ("491-89-1638",	"154-73-1589");
insert into follow (user_ID, follow) values ("443-71-3005",	"154-73-1589");
insert into follow (user_ID, follow) values ("399-80-5040",	"154-73-1589");
insert into follow (user_ID, follow) values ("454-14-3481",	"154-73-1589");
insert into follow (user_ID, follow) values ("756-75-7159",	"154-73-1589");
insert into follow (user_ID, follow) values ("512-95-8176",	"154-73-1589");
insert into follow (user_ID, follow) values ("698-08-6716",	"154-73-1589");
insert into follow (user_ID, follow) values ("697-06-9705",	"491-89-1638");
insert into follow (user_ID, follow) values ("235-78-6321",	"491-89-1638");
insert into follow (user_ID, follow) values ("226-31-3986",	"491-89-1638");
insert into follow (user_ID, follow) values ("221-80-6260",	"491-89-1638");
insert into follow (user_ID, follow) values ("709-63-1539",	"491-89-1638");
insert into follow (user_ID, follow) values ("721-79-3001",	"491-89-1638");
insert into follow (user_ID, follow) values ("621-65-3981",	"491-89-1638");
insert into follow (user_ID, follow) values ("632-46-2963",	"491-89-1638");
insert into follow (user_ID, follow) values ("889-18-6919",	"491-89-1638");
insert into follow (user_ID, follow) values ("744-15-3877",	"491-89-1638");
insert into follow (user_ID, follow) values ("634-03-8491",	"491-89-1638");
insert into follow (user_ID, follow) values ("489-34-2511",	"491-89-1638");
insert into follow (user_ID, follow) values ("714-13-3212",	"491-89-1638");
insert into follow (user_ID, follow) values ("798-24-9672",	"491-89-1638");
insert into follow (user_ID, follow) values ("343-20-9576",	"491-89-1638");
insert into follow (user_ID, follow) values ("745-70-9437",	"491-89-1638");
insert into follow (user_ID, follow) values ("754-84-6459",	"491-89-1638");
insert into follow (user_ID, follow) values ("226-31-3986",	"443-71-3005");
insert into follow (user_ID, follow) values ("221-80-6260",	"443-71-3005");
insert into follow (user_ID, follow) values ("709-63-1539",	"443-71-3005");
insert into follow (user_ID, follow) values ("721-79-3001",	"443-71-3005");
insert into follow (user_ID, follow) values ("621-65-3981",	"443-71-3005");
insert into follow (user_ID, follow) values ("632-46-2963",	"443-71-3005");
insert into follow (user_ID, follow) values ("889-18-6919",	"443-71-3005");
insert into follow (user_ID, follow) values ("669-67-2865",	"399-80-5040");
insert into follow (user_ID, follow) values ("154-73-1589",	"399-80-5040");
insert into follow (user_ID, follow) values ("491-89-1638",	"399-80-5040");
insert into follow (user_ID, follow) values ("443-71-3005",	"399-80-5040");
insert into follow (user_ID, follow) values ("889-18-6919",	"399-80-5040");

#followBy
insert into followBy (user_ID, followBy) values ("669-67-2865", "885-94-6711");
insert into followBy (user_ID, followBy) values ("669-67-2865", "236-90-9702");
insert into followBy (user_ID, followBy) values ("669-67-2865", "314-56-5730");
insert into followBy (user_ID, followBy) values ("669-67-2865", "700-14-3211");
insert into followBy (user_ID, followBy) values ("669-67-2865", "657-01-5683");
insert into followBy (user_ID, followBy) values ("669-67-2865", "889-28-8850");
insert into followBy (user_ID, followBy) values ("669-67-2865", "668-92-9213");
insert into followBy (user_ID, followBy) values ("669-67-2865", "701-85-0322");
insert into followBy (user_ID, followBy) values ("669-67-2865", "155-02-6633");
insert into followBy (user_ID, followBy) values ("669-67-2865", "267-22-3335");
insert into followBy (user_ID, followBy) values ("669-67-2865", "538-65-7880");
insert into followBy (user_ID, followBy) values ("669-67-2865", "210-35-2163");
insert into followBy (user_ID, followBy) values ("669-67-2865", "238-75-7529");
insert into followBy (user_ID, followBy) values ("669-67-2865", "697-06-9705");
insert into followBy (user_ID, followBy) values ("669-67-2865", "235-78-6321");
insert into followBy (user_ID, followBy) values ("154-73-1589", "669-67-2865");
insert into followBy (user_ID, followBy) values ("154-73-1589", "491-89-1638");
insert into followBy (user_ID, followBy) values ("154-73-1589", "443-71-3005");
insert into followBy (user_ID, followBy) values ("154-73-1589", "399-80-5040");
insert into followBy (user_ID, followBy) values ("154-73-1589", "454-14-3481");
insert into followBy (user_ID, followBy) values ("154-73-1589", "756-75-7159");
insert into followBy (user_ID, followBy) values ("154-73-1589", "512-95-8176");
insert into followBy (user_ID, followBy) values ("154-73-1589", "698-08-6716");
insert into followBy (user_ID, followBy) values ("491-89-1638", "697-06-9705");
insert into followBy (user_ID, followBy) values ("491-89-1638", "235-78-6321");
insert into followBy (user_ID, followBy) values ("491-89-1638", "226-31-3986");
insert into followBy (user_ID, followBy) values ("491-89-1638", "221-80-6260");
insert into followBy (user_ID, followBy) values ("491-89-1638", "709-63-1539");
insert into followBy (user_ID, followBy) values ("491-89-1638", "721-79-3001");
insert into followBy (user_ID, followBy) values ("491-89-1638", "621-65-3981");
insert into followBy (user_ID, followBy) values ("491-89-1638", "632-46-2963");
insert into followBy (user_ID, followBy) values ("491-89-1638", "889-18-6919");
insert into followBy (user_ID, followBy) values ("491-89-1638", "744-15-3877");
insert into followBy (user_ID, followBy) values ("491-89-1638", "634-03-8491");
insert into followBy (user_ID, followBy) values ("491-89-1638", "489-34-2511");
insert into followBy (user_ID, followBy) values ("491-89-1638", "714-13-3212");
insert into followBy (user_ID, followBy) values ("491-89-1638", "798-24-9672");
insert into followBy (user_ID, followBy) values ("491-89-1638", "343-20-9576");
insert into followBy (user_ID, followBy) values ("491-89-1638", "745-70-9437");
insert into followBy (user_ID, followBy) values ("491-89-1638", "754-84-6459");
insert into followBy (user_ID, followBy) values ("443-71-3005", "226-31-3986");
insert into followBy (user_ID, followBy) values ("443-71-3005", "221-80-6260");
insert into followBy (user_ID, followBy) values ("443-71-3005", "709-63-1539");
insert into followBy (user_ID, followBy) values ("443-71-3005", "721-79-3001");
insert into followBy (user_ID, followBy) values ("443-71-3005", "621-65-3981");
insert into followBy (user_ID, followBy) values ("443-71-3005", "632-46-2963");
insert into followBy (user_ID, followBy) values ("443-71-3005", "889-18-6919");
insert into followBy (user_ID, followBy) values ("399-80-5040", "669-67-2865");
insert into followBy (user_ID, followBy) values ("399-80-5040", "154-73-1589");
insert into followBy (user_ID, followBy) values ("399-80-5040", "491-89-1638");
insert into followBy (user_ID, followBy) values ("399-80-5040", "443-71-3005");
insert into followBy (user_ID, followBy) values ("399-80-5040", "889-18-6919");

#postPage
insert into postPage (post_ID, title, Content, user_ID, page_ID) values ("33-2552444", "Assumption University of Thailand","Alectura lathami","669-67-2865","40-4329271");
insert into postPage (post_ID, title, Content, user_ID, page_ID) values ("40-4363285", "Texas A&M International University","Megaderma spasma","669-67-2865","40-4329271");
insert into postPage (post_ID, title, Content, user_ID, page_ID) values ("11-6693165", "Concordia College, Moorhead","Tetracerus quadricornis","669-67-2865","40-4329271");
insert into postPage (post_ID, title, Content, user_ID, page_ID) values ("59-7708747", "State University of New York College at Oneonta","Propithecus verreauxi","669-67-2865","40-4329271");
insert into postPage (post_ID, title, Content, user_ID, page_ID) values ("08-1053818", "Centre Universitaire de Tebessa","Papilio canadensis","771-36-7505","79-3267892");
insert into postPage (post_ID, title, Content, user_ID, page_ID) values ("01-4345432", "Santa Clara University","Actophilornis africanus","771-36-7505","79-3267892");
insert into postPage (post_ID, title, Content, user_ID, page_ID) values ("35-4229511", "Pacific Oaks College","Oncorhynchus nerka","657-01-5683","90-0035153");
insert into postPage (post_ID, title, Content, user_ID, page_ID) values ("23-7015685", "Newberry College", "Dusicyon thous","889-28-8850","90-0035153");
insert into postPage (post_ID, title, Content, user_ID, page_ID) values ("68-0571678", "Mbarara University of Science and Technology","Chauna torquata","668-92-9213","90-0035153");
insert into postPage (post_ID, title, Content, user_ID, page_ID) values ("38-9997250", "Central University of Finance and Economics", "Neotis denhami","701-85-0322","90-0035153");
insert into postPage (post_ID, title, Content, user_ID, page_ID) values ("12-9327272", "Cecos Univeristy of Information Technology", "Papio cynocephalus","155-02-6633","90-0035153");
insert into postPage (post_ID, title, Content, user_ID, page_ID) values ("66-7976271", "Messiah College", "Alopex lagopus","267-22-3335","90-0035153");
insert into postPage (post_ID, title, Content, user_ID, page_ID) values ("46-5871950", "Wayo Women's University", "Ploceus rubiginosus","709-63-1539","90-0035153");
insert into postPage (post_ID, title, Content, user_ID, page_ID) values ("87-9316887", "Gdynia Maritime Academy", "Carduelis uropygialis","657-01-5683","91-4399439");
insert into postPage (post_ID, title, Content, user_ID, page_ID) values ("27-9303903", "St. Francis Xavier University", "Plegadis falcinellus","889-28-8850","91-4399439");
insert into postPage (post_ID, title, Content, user_ID, page_ID) values ("41-8158922", "University of Bahrain", "unavailable","668-92-9213","91-4399439");
insert into postPage (post_ID, title, Content, user_ID, page_ID) values ("16-6010972", "Adventist University of Central Africa", "Hippotragus","701-85-0322","91-4399439");
insert into postPage (post_ID, title, Content, user_ID, page_ID) values ("58-5793301", "University of Hormozgan", "Tapirus terrestris","155-02-6633","91-4399439");
insert into postPage (post_ID, title, Content, user_ID, page_ID) values ("97-9522410", "Avila College",	"Gyps bengalensis","267-22-3335","91-4399439");
insert into postPage (post_ID, title, Content, user_ID, page_ID) values ("17-0831752", "Universidad Privada San Pedro",	"Amblyrhynchus cristatus","538-65-7880","91-4399439");
insert into postPage (post_ID, title, Content, user_ID, page_ID) values ("45-6642762", "Aga Khan University", "Grus canadensis","210-35-2163","91-4399439");
insert into postPage (post_ID, title, Content, user_ID, page_ID) values ("32-3518540", "Sikha 'O' Anushandhan University","Cereopsis novaehollandiae","238-75-7529","91-4399439");
insert into postPage (post_ID, title, Content, user_ID, page_ID) values ("61-9731953", "Indiana University-Purdue University at Columbus","Sciurus vulgaris","697-06-9705","91-4399439");
insert into postPage (post_ID, title, Content, user_ID, page_ID) values ("43-3962944", "California State University, Los Angeles", "Centrocercus urophasianus","889-18-6919","99-6905221");
insert into postPage (post_ID, title, Content, user_ID, page_ID) values ("44-1770163", "Bellevue University","Cacatua tenuirostris","889-18-6919","99-6905221");





