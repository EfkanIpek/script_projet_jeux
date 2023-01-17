create database square_games;

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
                     id_family int not null
);

alter table user
add foreign key (id_country) references countries(id_country),
add foreign key (id_family) references family(id_family);

alter table transfer
add foreign key (id_user_giver) references user(id_user),
add foreign key (id_user_receiver) references user(id_user);

alter table bought_token_offers
add foreign key (id_user) references user(id_user),
add foreign key (id_token_offer) references token_offers (id_token_offer);

alter table order_items
add foreign key (id_user) references user(id_user);

alter table order_composition
add foreign key (id_user) references order_items(id_user),
add foreign key (id_item) references items(id_item);


