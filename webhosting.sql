create database webhosting

CREATE TABLE client (
  id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(255),
  description VARCHAR(255), 
  date VARCHAR(255),
  web VARCHAR(255) 
);
INSERT INTO client (id, name, description, date, web)
VALUES ('1', 'Alza', 'alzák je zlo','19.4.1998','www.alza.cz');

INSERT INTO client (id, name, description, date, web)
VALUES ('2', 'Facebook', 'Obličej kniha','7.8.2009','www.facebook.com');

INSERT INTO client (id, name, description, date, web)
VALUES ('3', 'Novinky', 'Nové zprávy','10-10-2015','www.novinky.cz');

INSERT INTO client (id, name, description, date, web)
VALUES ('4', 'Discord', 'hráči','5-11-1992','www.discord.com');

INSERT INTO client (id, name, description, date, web)
VALUES ('5', 'OSSP', 'škola','26-8-2022','www.ossp.cz');


CREATE TABLE website (
  id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  domain VARCHAR(255),
  date VARCHAR(255),
  description VARCHAR(255), 
  category VARCHAR(255),
  client VARCHAR(255) 
);

INSERT INTO website (id, domain, date, description, category, client)
VALUES ('1', 'www.alza.cz','20-4-1999','sto tabletů týdně', '1', 'Alza');

INSERT INTO website (id, domain, date, description, category, client)
VALUES ('2', 'www.facebook.com', '8-8-2000','ztráta času', '2', 'Facebook');

INSERT INTO website (id, domain, date, description, category, client)
VALUES ('3', 'www.novinky.cz','11-6-2010','novinky ze světa', '3','Novinky');

INSERT INTO website (id, domain, date, description, category, client)
VALUES ('4', 'www.discord.com', '6-7-2018','discorddddddddddd','2', 'Discord');

INSERT INTO website (id, domain, date, description, category, client)
VALUES ('5', 'www.ossp.cz', '21-2-2016','SCHULEN','1', 'OSSP');

CREATE TABLE category (
  id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(255),
  description VARCHAR(255)
);

INSERT INTO category (id, name, description)
VALUES ('1', 'eshop', 'Internetový obchod');

INSERT INTO category (id, name, description)
VALUES ('2', 'socialmedia', 'Socialní média');

INSERT INTO category (id, name, description)
VALUES ('3', 'news', 'Zprávy');


CREATE TABLE website_client (
    website_id INT UNSIGNED,
    client_id INT UNSIGNED
);


ALTER TABLE website_client
ADD FOREIGN KEY (website_id) REFERENCES website(id);
ALTER TABLE website_client
ADD FOREIGN KEY (client_id) REFERENCES client(id);


INSERT INTO website_client
VALUES ('1', '1');

INSERT INTO website_client
VALUES ('2', '2');

INSERT INTO website_client
VALUES ('3', '3');

INSERT INTO website_client
VALUES ('4', '4');

INSERT INTO website_client
VALUES ('5', '5');

INSERT INTO website_client
VALUES ('6', '6');

CREATE TABLE website_category (
    website_id INT UNSIGNED,
    category_id INT UNSIGNED
);

ALTER TABLE website_category
ADD FOREIGN KEY (website_id) REFERENCES website(id);
ALTER TABLE website_category
ADD FOREIGN KEY (category_id) REFERENCES category(id);


INSERT INTO website_category
VALUES ('1', '1');

INSERT INTO website_category
VALUES ('2', '2');

INSERT INTO website_category
VALUES ('3', '3');

INSERT INTO website_category
VALUES ('4', '3');

INSERT INTO website_category
VALUES ('5', '2');

INSERT INTO website_category
VALUES ('6', '6');

