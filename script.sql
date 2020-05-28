--Exo 1
CREATE DATABASE `stockimages` DEFAULT CHARACTER SET 'utf8';--création de stockimages
--Exo 2
DROP DATABASE `stockimages`;--suppression de stockimages
--Exo 3
CREATE DATABASE `mediaBank` DEFAULT CHARACTER SET 'utf8'; --création de mediabank
--Exo 4
CREATE USER `sido`@`localhost`; --IDENTIFIED BY `pw` création de l'user sido et attribution d'un pw si nécéssaire
GRANT ALL PRIVILEGES ON `mediabank` TO `sido`@`localhost`;--don de tous les privilèges sur mediabank à sido 
--Exo 5
CREATE TABLE images --création du tableau images
(
    id INT PRIMARY KEY AUTO_INCREMENT,
    name varchar(50),
    link varchar(255),
    width INT,
    height INT,
    format varchar(5),
    description TEXT,
    publicationDate DATE
)
CREATE TABLE videos --création du tableau videos
(
    id INT PRIMARY KEY AUTO_INCREMENT,
    name varchar(50),
    link varchar(255),
    duration TIME,
    description TEXT,
    publicationDate DATE
)
--Exo 6
INSERT INTO `images`(`id`,`name`,`link`,`width`,`height`,`format`,`description`) VALUES --ajout de 2 lignes au tableau images
(1,'orwellPortrait','https://upload.wikimedia.org/wikipedia/commons/7/7e/George_Orwell_press_photo.jpg','1176','1596','jpg','Portrait de l\'auteur Georges Orwell'),
(2,'steinbeckPortrait','https://live.staticflickr.com/525/18306511889_1c9606e8ea_z.jpg','640','476','jpg','Portrait de l\'auteur John Steinbeck');
SELECT `id`,`name`,`link`,`width`,`height`,`format`,`description` FROM `images`; --montre toutes les colonnes de images
INSERT INTO `videos`(`id`,`name`,`link`,`duration`,`description`,`publicationDate`) VALUES --ajout de 2 lignes au tableau videos
(1,'1984_trailer','https://www.youtube.com/watch?v=Z4rBDUJTnNU&t=4s','2:39','Bande annonce du film 1984','2020-05-15'),
(2,'micemen_trailer','https://www.youtube.com/watch?v=2QnM6hsXxNE','10:41','Bande annonce du film des Souris et des hommes','2020-01-02');
SELECT `id`,`name`,`link`,`duration`,`description`,`publicationDate` FROM `videos`; --montre toutes les colonnes de videos
--Exo 7
UPDATE `mediabank`.`videos` SET `publicationDate`='2020-05-27' WHERE `id`='1'; --change la data de publicationDate
SELECT `id`,`name`,`link`,`width`,`height`,`format`,`description` FROM `videos` LIMIT 1; --montre la ligne 1 de videos
UPDATE `mediabank`.`videos` SET `duration`='1:41' WHERE `id`='2'; --change la data de duration
SELECT `id`,`name`,`link`,`duration`,`description`,`publicationDate` FROM `videos` LIMIT 1,3; --montre la ligne 2 de videos
--Exo 8
DELETE FROM `images` WHERE `id` = 2; --supprime la ligne 2 de images
DELETE FROM `videos` WHERE `id` = 1; --supprime la ligne 1 de videos
--Exo 9
DROP TABLE `videos`; --supprime le tableau videos