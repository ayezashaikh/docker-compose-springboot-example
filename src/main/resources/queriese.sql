CREATE TABLE users (
username varchar(50) NOT NULL,
password VARCHAR(100) NOT NULL,
enabled  tinyint NOT NULL,
PRIMARY KEY ( username )
);

create table authorities (
username VARCHAR(100) NOT NULL,
authority VARCHAR(100) NOT NULL,
key username(username),
constraint authrities_ibfk_1 FOREIGN KEY(username)
REFERENCES users(username)
);


----------------------- https://bcrypt-generator.com/-----------------

insert record

insert into users values ('admin' , '$2a$12$TUXtBYlohyASA8N6IPWmku35UJox.HPTRmzbwVeVwVYv9neujV.8O' , 1 );
insert into users values ('user' , '$2a$12$OaYQ/1pkkS0hnVK.Fu9NaOrAz6io7KHHMKXfe2T.Rys1NPPd36L2S' , 1 );
insert into authorities values('admin' , 'ROLE_ADMIN');
insert into authorities values('admin' , 'ROLE_USER');
insert into authorities values('user' , 'ROLE_USER');