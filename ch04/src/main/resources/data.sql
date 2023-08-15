insert into `Spring`.`Users` (username, password,enabled) values ('john', '$2a$04$RwBDAfaQyDNHHrfkaEI1reh3F/jLD5kp3rF6qwz33kpPxgqnEXC76', 1);
insert into `Spring`.`Users` (username, password,enabled) values ('maria', '$2a$04$cs.aVpWhWd4tAoLhwweX3eKyXvlNnr/ZFC0zbWatB2K/pFQYM8XdS', 0);
insert into `Spring`.`Users` (username, password,enabled) values ('pedro', '$2a$04$.jWCGJ62qABunRRM0YScfubOpvtLUJgApaQy1tflfvj.q162OIK6S', 1);


insert into `Spring`.`Authorities` (username, authority) values ('john', 'write');
insert into `Spring`.`Authorities` (username, authority) values ('maria','read');
insert into `Spring`.`Authorities` (username, authority) values ('pedro','write');