CREATE DATABASE universe;

\c universe;

CREATE TABLE galaxy(galaxy_id SERIAL PRIMARY KEY,
name VARCHAR(30) UNIQUE,
thanosproof BOOLEAN NOT NULL,
visible TEXT,
habibi BOOLEAN);

CREATE TABLE star(star_id SERIAL PRIMARY KEY,
name VARCHAR(30) UNIQUE,
color TEXT,
vogue_rated INT NOT NULL,
galaxy_id INT,
FOREIGN KEY(galaxy_id) REFERENCES public.galaxy(galaxy_id));

CREATE TABLE planet(planet_id SERIAL PRIMARY KEY,
name VARCHAR(30) UNIQUE,
reporting VARCHAR(50),
nr_musk_villas INT NOT NULL,
star_id INT,
FOREIGN KEY(star_id) REFERENCES public.star(star_id));

CREATE TABLE moon(moon_id SERIAL PRIMARY KEY,
name VARCHAR(30) UNIQUE,
pouvoir NUMERIC(4,2),
alana_level INT NOT NULL,
planet_id INT,
FOREIGN KEY(planet_id) REFERENCES public.planet(planet_id));

CREATE TABLE desire(desire_id SERIAL PRIMARY KEY,
name VARCHAR(30) UNIQUE,
skin NUMERIC(4,2),
sl_madonna INT NOT NULL,
planet_id INT,
FOREIGN KEY(planet_id) REFERENCES public.planet(planet_id));

INSERT INTO galaxy VALUES(1,'Andromeda',TRUE,'Seems like a star',FALSE),
(2,'Alanaxy',FALSE,'On youtube and getty',TRUE),
(3,'ZHEDRAGON',TRUE,'Going strong',TRUE),
(4,'Flatwhite',FALSE,'Looks jummy',TRUE),
(5,'Bluelove',TRUE,'Ejyhoo',TRUE),
(6,'Santaway',TRUE,'Hohoho',TRUE);

INSERT INTO star VALUES(1,'Nap','Sarga',7,3),
(2,'Alpha Centauri','White',3,4),
(3,'Shiny One 3','Colors of Benetton',6,4),
(4,'Sepherenya','Behind Blue Eyes',9,5),
(5,'Alpha Testouri','Magiccolors',4,6),
(6,'Mass Effect Star','Voyager_grey',2,1);

INSERT INTO planet VALUES(1,'Hello Universe','Basic',7,3),
(2,'Felszivnam','Very nice',1,3),
(3,'Boratplane','US AND A',4,2),
(4,'Alanaria','Absolute f',10,3),
(5,'Mistery love','Tell me',7,3),
(6,'Bulbaba','Pillanatra',6,3),
(7,'Terra','Pale blue dot',6,4),
(8,'Flaggelum Dei','Unintelligible',3,6),
(9,'Shapes 7','Blue, Black, White',10,3),
(10,'Amor Instates','VS Red',8,2),
(11,'Habibi Aphrodite','My mind is broken',9,3),
(12,'Strex','Magenta',5,2);

INSERT INTO moon VALUES(1,'Luna',8.2,5,6),
(2,'Pedro',7.89,3,4),
(3,'The Lust',54.12,10,1),
(4,'Divah',7.69,9,3),
(5,'Working on the levels',6.9,9,5),
(6,'Caption Amazon',5.00,2,1),
(7,'Inclinee mon cheri',99,10,3),
(8,'Monaco and Hermes',5.6,4,4),
(9,'Long Legs Nation',7.8,7,5),
(10,'Basic Instinct',44.6,8,3),
(11,'Zheeeeee',33.5,5,1),
(12,'The Love',44,3,3),
(13,'Hunted',11,8,6),
(14,'Give me that candy',7,7,3),
(15,'Europa',95,8,4),
(16,'Mediterran Amor',9,9,3),
(17,'Hello girl',10,6,4),
(18,'Helene aux Troy',60,5,2),
(19,'Skin is love',77.5,9,5),
(20,'The magic',99.32,5,1);


INSERT INTO desire VALUES(1,'Eros',99.3,5,1),
(2,'Malibu',10.11,1,6),
(3,'Ibiza',77,2,4);




