create table token_offers(
                             id_token_offer int not null auto_increment primary key,
                             token_number int(16) not null,
                             tax_free_price float(10) not null,
                             created_at datetime not null default now(),
                             validity_date datetime default null
);

create table bought_token_offers(
                                    id_user int not null,
                                    id_token_offer int not null,
                                    ordered_at datetime not null default now(),
                                    including_tax_price float(10) not null
);

create table order_items(
                            id_order_item int not null auto_increment primary key,
                            id_user int not null,
                            ordered_at datetime not null default now()
);

create table items(
                      id_item int auto_increment primary key not null,
                      item_name varchar(255) not null,
                      token_quantity int(16) not null,
                      created_at datetime not null default now(),
                      validity_date datetime default null
);

create table order_composition(
                            id_user int not null,
                            id_item int not null,
                            quantity int(3) not null
);

insert into countries(country_name, tax_country, legal_age, currency_name, currency_symbol)
values
    ('Spain', 0.15, 18, 'euro', '€'),
    ('USA', 0.225, 18, 'US dollars', '$');

insert into family(family_name)
values
    ('Hernandez'),
    ('Washington');

insert into user(email_user, password_user, birth_date, pseudo_user, id_country, id_family)
values
    ('juanhernandez@email.com', 'vivamadrid', 01/15/2010, 'juanitoHer', 'ES', 3),
    ('donaldwashington@email.com', 'gohawks', 01/15/2000, 'donaldTheBig', 'USA', 4),
    ('claudiapello@email.com', 'medicina', 01/15/1980, 'juanitoHer', 'ES', 3),
    ('aaronthefourth@email.com', 'gobulls', 06/15/2000, 'jordanthebest', 'USA', 4);    

