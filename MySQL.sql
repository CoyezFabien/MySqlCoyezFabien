EX3

-- Créer une base de données mediaBank avec l’encodage utf-8.

CREATE DATABASE IF NOT EXISTS`mediaBank`

EX5

-- Créer une table images contenant 8 colonnes :

-- id INT AUTO INCREMENT
-- name varchar(50)
-- link varchar(255)
-- width INT
-- height INT
-- format varchar(5)
-- description TEXT
-- publicationDate DATE

--  Créer une table videos avec 6 colonnes :

--  id INT AUTO INCREMENT
-- name varchar(50)
-- link varchar(255)
-- duration TIME
-- description TEXT
-- publicationDate DATE


CREATE TABLE `images`/*magique cote `` alt+7*/
( 
    `id` INT PRIMARY KEY NOT NULL AUTO_INCREMENT, /*int nombre nombre entier c'est un id qui est une clé primaire qui s'incrémente id c'est le numero unique permet d'identifier une ligne on termine par une virgule pour terminer l'instruction*/
    `name` VARCHAR(50), /*varchar champs de caractere on doit lui specifier le nombre de caractère*/
    `link` VARCHAR(255), /*varchar on va utiliser pour des choses courte nom, prenom, metier... par un enorme texte*/
    `width` INT, /**/
    `height` INT, /**/
    `format` VARCHAR(5), /**/
    `description` TEXT, /*text peut contenir les chiffre caractère spéciaux .. la différence avec le varchar il n'est pas de limite on l'utilise du coup à contrario de varchar pour des grands texte*/
    `publicationDate `DATE/*combien une jour mois année jour en ManSQL il ny a pas de virgule à la fin car il n'y pas d'instruction apres*/
)
CREATE TABLE `videos`
( 
    `id` INT PRIMARY KEY NOT NULL AUTO_INCREMENT, 
    `name` VARCHAR(50), 
    `link` VARCHAR(255), 
    `duration` TIME,  /*lheur*/
    `description` TEXT, 
    `publicationDate` DATE
);/*le points virgule apres la parenthèse pour pouvoir créer un autre tableau à la suite*/
CREATE TABLE `toto`/*deux table ne peux avoir les meme non*/
( 
    `id` INT PRIMARY KEY NOT NULL AUTO_INCREMENT, 
    `name` VARCHAR(50), 
    `link` VARCHAR(255), 
    `duration` TIME,  /*lheur*/
    `description` TEXT, 
    `publicationDate` DATE
)

EX6

--  Insérez ces deux lignes dans la table images.

 

-- id

-- name

-- link

-- width

-- height

-- format

-- description

-- publicationDate

-- 1

-- orwellPortrait

-- https://upload.wikimedia.org/wikipedia/commons/7/7e/George_Orwell_press_photo.jpg

-- 1176

-- 1596

-- jpg

-- Portrait de l’auteur Geroge Orwell

-- 2020-05-10

-- 2

-- steinbeckPortrait

-- https://live.staticflickr.com/525/18306511889_1c9606e8ea_z.jpg

-- 640

-- 476

-- jpg

-- Portrait de l’auteur John Steinbeck

2020-01-02
INSERT INTO images (`name`, `link`, `width`, `height`, `format`, `description`, `publicationDate`) VALUES 
('orwellPortrait', 'https://upload.wikimedia.org/wikipedia/commons/7/7e/George_Orwell_press_photo.jpg', 1176, 1596, 'jpg', ' Portrait de l’auteur Geroge Orwell', '2020-05-10'), ('steinbeckPortrait', 'https://live.staticflickr.com/525/18306511889_1c9606e8ea_z.jpg', '640', '476', 'jpg', 'Portrait de l’auteur John Steinbeck', '2020-01-02')

-- Insérez ces deux lignes dans la table videos.

 

-- id

-- name

-- link

-- duration

-- description

-- publicationDate

-- 1

-- 1984_trailer

-- https://www.youtube.com/watch?v=Z4rBDUJTnNU&t=4s

-- 2 :39

-- Bande annonce du film 1984

-- 2020-05-15

-- 2

-- micemen_trailer

-- https://www.youtube.com/watch?v=2QnM6hsXxNE

-- 10 :41

-- Bande annonce du film des Souris et des hommes

-- 2020-01-02

INSERT INTO `videos` (`name`, `link`, `duration`, `description`, `publicationDate`) VALUES ('1984_trailer', 'https://www.youtube.com/watch?v=Z4rBDUJTnNU&t=4s', '2 :39', 'Bande annonce du film 1984', '2020-05-15'), ('micemen_trailer', 'https://www.youtube.com/watch?v=2QnM6hsXxNE', '10 :41', 'Bande annonce du film des Souris et des hommes', '2020-01-02') /*de simple cote dans les parenthèses si on met des magique cote cela ne fonctionnera pas*/


EX7

UPDATE `images`
SET 'publicationDate' = '2020-11-23'/*avec set on choisis quelle partie va etre modifié le = pour lui attribuer une nouvelle valeur*/
WHERE 'id' =1


-- UPDATE `image`
-- SET `publicationDate` = CURDATE curdate pour mettre à la date d'aujourd'hui
-- WHERE `id` = 1


UPDATE `videos`
SET `duration` = '00:01:41'
WHERE `id` = 2




/*La commande UPDATE permet d’effectuer des modifications sur des lignes existantes. Très souvent cette commande est utilisée avec WHERE pour spécifier sur quelles lignes doivent porter la ou les modifications.

Cette syntaxe permet d’attribuer une nouvelle valeur à la colonne nom_colonne_1 pour les lignes qui respectent la condition stipulé avec WHERE. Il est aussi possible d’attribuer la même valeur à la colonne nom_colonne_1 pour toutes les lignes d’une table si la condition WHERE n’était pas utilisée.

A noter, pour spécifier en une seule fois plusieurs modification, il faut séparer les attributions de valeur par des virgules. Ainsi la syntaxe deviendrait la suivante :

UPDATE table
SET colonne_1 = 'valeur 1', colonne_2 = 'valeur 2', colonne_3 = 'valeur 3'
WHERE condition
*/

EX8

-- Supprimer la deuxième ligne de la table images.

-- Supprimer la première ligne de la table videos.

DELETE FROM `images`
WHERE `id` = 2/*on met un where sans le where on supprimera tout*/

DELETE FROM `videos`
WHERE `id` = 1

-- La commande utilisée pour supprimer des données est DELETE. Cette opération est irréversible, soyez très prudent !
-- On utilise la clause WHERE  de la même manière qu'avec la commande SELECT  pour préciser quelles lignes doivent être supprimées.

-- Exercice 9
DROP TABLE `videos`

-- La commande DROP TABLE en SQL permet de supprimer définitivement une table d’une base de données. Cela supprime en même temps les éventuels index, trigger, contraintes et permissions associées à cette table.

-- Attention : il faut utiliser cette commande avec attention car une fois supprimée, les données sont perdues. Avant de l’utiliser sur une base importante il peut être judicieux d’effectuer un backup (une sauvegarde) pour éviter les mauvaises surprises.

-- Syntaxe
-- Pour supprimer une table “nom_table” il suffit simplement d’utiliser la syntaxe suivante :

-- DROP TABLE nom_table
