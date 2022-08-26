CREATE DATABASE eshop

CREATE TABLE customer (
    id int NOT NULL AUTO_INCREMENT,
    firstname varchar(255) NOT NULL,
    lastname varchar(255) NOT NULL,
    dateofbirth varchar(255)  NOT NULL,
    mobilenumber varchar(255)  NOT NULL,
    email varchar(255) NOT NULL,
    password varchar(10) NOT NULL
 
);

INSERT INTO customer (id, firstname, lastname, dateofbirth, mobilenumber, email, password)
VALUES (1, 'Filip','Zahrada','21.8.1990','111111111', 'filipzahrada@gmail.com', 'Heslo1');
INSERT INTO customer (id, firstname, lastname, dateofbirth, mobilenumber, email, password)
VALUES (2, 'Aleš','Hruška', '21.8.1990','222222222', 'aleshruska@gmail.com', 'Heslo2');
INSERT INTO customer (id, firstname, lastname, dateofbirth, mobilenumber, email, password)
VALUES (3, 'Bohumil','Zátopa', '21.8.1990','33333333', 'bohumilzatopa@gmail.com', 'Heslo3');
INSERT INTO customer (id, firstname, lastname, dateofbirth, mobilenumber, email, password)
VALUES (4, 'Pavel','Cifra', '21.8.1990', '444444444', 'pavelcifra@gmail.com', 'Heslo4');
INSERT INTO customer (id, firstname, lastname, dateofbirth, mobilenumber, email, password)
VALUES (5, 'Karel','Václav', '21.8.1990','555555555', 'karelvaclav@gmail.com', 'Heslo5');



CREATE TABLE order (
    id int NOT NULL AUTO_INCREMENT,
    variablechar char NOT NULL,
    dateofcreation int NOT NULL,
    description text NOT NULL,
    item_id int NOT NULL,
    FOREIGN KEY (item_id) REFERENCES item(id),
    PRIMARY KEY (id)
);


INSERT INTO order (id,variablechar, dateofcreation, description. item_id)
VALUES (1, '11111111855', 2022, 'objednavka iPhone X', 1);
INSERT INTO order (id,variablechar, dateofcreation, description. item_id)
VALUES (2, '92828285855', 2022, 'objednavka Apple Macbook', 2);
INSERT INTO order (id,variablechar, dateofcreation, description. item_id)
VALUES (3, '58269242953', 2022, 'objednavka Apple AirPods', 3);
INSERT INTO order (id,variablechar, dateofcreation, description. item_id)
VALUES (4, '19829382682', 2022, 'objednavka Apple Watch', 4);
INSERT INTO order (id,variablechar, dateofcreation, description. item_id)
VALUES (5, '98268265486', 2022, 'objednavka iPod', 5);


CREATE TABLE item (
    id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    name varchar(255) NOT NULL,
    creationdate int NOT NULL,
    shortdescription tinytext NOT NULL,
    longdescription longtext NOT NULL,
    notaxprice int NOT NULL,
    taxprice int NOT NULL

);

INSERT INTO item (id, name, creationdate, shortdescription, longdescription,notaxprice, taxprice)
VALUES (1,'iPhone X', '7.8.2009', 'Mobilní telefon značky Apple','Výkonný telefon od Apple', '33000', '35000');
INSERT INTO item (id, name, creationdate, shortdescription, longdescription,notaxprice, taxprice)
VALUES (2,  'Macbook', '19.4.1998', 'notebook' , 'kvalitní notebook na práci', '25000', '27000');
INSERT INTO item (id, name, creationdate, shortdescription, longdescription,notaxprice, taxprice)
VALUES (3, 'Apple AirPods', '10-10-2015', 'sluchátka', 'Sluchátka od společnosti Apple bezdrátová', '4000', '5000');
INSERT INTO item (id, name, creationdate, shortdescription, longdescription,notaxprice, taxprice)
VALUES (4, 'Apple Watch', '5-11-1992', 'hodinky', 'Výkonné hodinky', '9000', '10000');
INSERT INTO item (id, name, creationdate, shortdescription, longdescription,notaxprice, taxprice)
VALUES (5,  'iPod','26-8-2022', 'přehrávač muziky', 'Jeden z nejlepších mp3 přehrávačů', '8000', '7000');
INSERT INTO item (id, name, creationdate, shortdescription, longdescription,notaxprice, taxprice)
VALUES (6, 'Mac', '20-8-2020','Počítač', 'Jeden z nejvýkonějších počítačů', '40000', '50000');


CREATE TABLE order_item (
    order_id int NOT NULL,
    item_id int NOT NULL,
    FOREIGN KEY (order_id) REFERENCES order(id),
    FOREIGN KEY (item_id) REFERENCES item(id)

);


INSERT INTO order_item (order_id, item_id)
VALUES (1,1);
INSERT INTO order_item (order_id, item_id)
VALUES (2,2);
INSERT INTO order_item (order_id, item_id)
VALUES (3,3);
INSERT INTO order_item (order_id, item_id)
VALUES (4,4);
INSERT INTO order_item (order_id, item_id)
VALUES (5,5);
