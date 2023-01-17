insert into countries (id_country, country_name, tax_country, legal_age, currency_name, currency_symbol)
values ('FR', 'France', 0.2, 15, 'euro','€'),('TR', 'Turquie', 0.1, 14, 'Turk Lira', 'TL');

insert into family (family_name)
values ('Simpson'),('McCormick');

insert into countries(id_country, country_name, tax_country, legal_age, currency_name, currency_symbol)
values
    ('ES', 'Spain', 0.15, 18, 'euro', '€'),
    ('USA', 'USA', 0.225, 18, 'US dollars', '$');

insert into family(family_name)
values
    ('Hernandez'),
    ('Washington');

insert into user(email_user, password_user, birth_date, pseudo_user, id_country, id_family)
values
    ('juanhernandez@email.com', 'vivamadrid', '2010/01/15', 'juanitoHer', 'ES', 3),
    ('donaldwashington@email.com', 'gohawks', '2000/01/15', 'donaldTheBig', 'USA', 4),
    ('claudiapello@email.com', 'medicina', '1980/01/15', 'clauclau', 'ES', 3),
    ('aaronthefourth@email.com', 'gobulls', '2000/06/15', 'jordanthebest', 'USA', 4);

insert into user (email_user, password_user, birth_date, pseudo_user, avatar_user, id_country, id_family)
values ('bart@simpsons.com','azerty', '1970-03-06','El Barto','oufhqeirufq.png','FR',2)
,('kenny@southpark.com','123456','1980-12-23','Kenny','fuvhiqrhnosencois.jpg','FR',2),
 ('homer@simpsons.com','qsdfghjklm','1950-07-01','El Homo', 'rohvqoero.png','FR',1),
 ('eric@cartman.com','wxcvbn','1980-08-09','Cartman','reivheriierh.jpg','FR',2);