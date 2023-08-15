insert into `Spring`.`Users` (username, password,enabled) values ('john', '12345', 1);
insert into `Spring`.`Users` (username, password,enabled) values ('maria', '54321', 0);
insert into `Spring`.`Users` (username, password,enabled) values ('pedro', '13245', 1);


insert into `Spring`.`Authorities` (username, authority) values ('john', 'write');
insert into `Spring`.`Authorities` (username, authority) values ('maria','read');
insert into `Spring`.`Authorities` (username, authority) values ('pedro','write');