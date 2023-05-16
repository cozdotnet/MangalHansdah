create database FinalExam

drop table Finance


create table Users(
	userid varchar(40) not null,
	username varchar(40),
	password varchar(40),
	role varchar(40),
	primary key (userid)
	);

create table Finance(
	financeid varchar(40) not null,
	userid varchar(40) ,
	income varchar(40),
	expense varchar(40),
	primary key (financeid),
	FOREIGN KEY (userid) REFERENCES Users(userid)
	);

insert into Users(userid,username,password,role)
		values(
		1,'admin123@cozentus.com','Admin@123','admin'
		);

insert into Finance(financeid,userid,income,expense)
	values(
	1,1,70000,35000);