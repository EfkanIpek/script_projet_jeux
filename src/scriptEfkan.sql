create table countries(
                          id_country int not null primary key auto_increment,
                          country_name varchar(50) not null,
                          tax_country float not null,
                          legal_age int not null,
                          currency_name varchar(25) not null,
                          currency_symbol varchar(50) not null
);

create table family(
                       id_family int not null primary key auto_increment,
                       family_name varchar(50),
                       primary key (id_family,family_name)
);

create table transfer(
                         id_user_giver int not null,
                         id_user_receiver int not null,
                         given_at DATETIME not null default now(),
                         tokens_transfered int not null,
                         primary key (id_user_giver,id_user_receiver, given_at)
);

create table user(
                     id_user int not null primary key auto_increment,
                     email_user varchar(255) not null unique check ( email_user LIKE '%@%' ),
                     password_user varchar(32) not null,
                     birth_date DATE not null,
                     pseudo_user varchar(16) not null unique,
                     avatar_user varchar(1000),
                     token_user int not null default 0,
                     id_country int not null,
                     id_family int not null,
);

insert into countries (id_country, country_name, tax_country, legal_age, currency_name, currency_symbol)
values ('FR', 'France', 0.2, 15, 'euro','€'),('TR', 'Turquie', 0.1, 14, 'Turk Lira', 'TL');

insert into family (family_name)
values ('Simpson'),('McCormick');

insert into user (email_user, password_user, birth_date, pseudo_user, avatar_user, id_country, id_family)
values ('bart@simpsons.com','azerty', 1970-03-06,'El Barto','oufhqeirufq.png',1,2)
,('kenny@southpark.com','123456',1980-12-23,'Kenny','fuvhiqrhnosencois.jpg',2,2),
 ('homer@simpsons.com','qsdfghjklm',1950-07-01,'El Homo', 'rohvqoero.png',1,1),
 ('eric@cartman.com','wxcvbn',1980-08-09,'Cartman','reivheriierh.jpg',1,2);