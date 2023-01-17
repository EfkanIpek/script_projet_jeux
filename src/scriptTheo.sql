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

create table order_items(
                            id_order_item int not null auto_increment primary key,
                            id_user int not null,
                            ordered_at datetime not null default now()
);

