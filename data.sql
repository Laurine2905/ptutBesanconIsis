-- -----------------------------------------------------------------------------
--      Nom de la base : Inventaire
--      Projet : Ptut Musée de l'anesthésie
--      Auteur :Laurine RAT
--      Date de derniere modification : 13/02/2023
-- -----------------------------------------------------------------------------

DELETE FROM CATEGORIE ;

DELETE FROM SALLE;

DELETE FROM OBJET;

DELETE FROM MULTIMEDIACat;

DELETE FROM MULTIMEDIAObj;

-- -----------------------------------------------------------------------------
--                FIN DE GENERATION
-- -----------------------------------------------------------------------------

-- Script d'ajout de données
-- revoir l'id auto généré

--> Il faudra penser a changer les liens pour les photos définitives
-- Remplissage de la table Catégorie
INSERT INTO CATEGORIE VALUES ('1','Appareils d anesthésie', NULL,'https://photos.google.com/photo/AF1QipNpiGCTV_NsLZr6LX6TBP0xmsoKYVVcr-UM3Au8' );
INSERT INTO CATEGORIE VALUES ('2','Ventilateur d anesthésie', NULL,'https://photos.google.com/photo/AF1QipOi2cm-3IxlCJ4DjdonRC2jGf95-FwJl16kyZBk');
INSERT INTO CATEGORIE VALUES ('3', 'Ventilateur de réanimation', 'je suis une description','https://photos.google.com/photo/AF1QipOaUupqUsDpyTBMaZMIJ6TZBrnlj-QqV2hyaQ40');

-- Remplissage de la table Salle
INSERT into SALLE VALUES ('1', 'Salle 1');
-- Voir pour faire une requete SQL qui recupere l'id d'une catégorie ou d'une salle pour la clé étrangère

-- Remplissage de la table Objet
INSERT INTO OBJET VALUES ('1', 'Heidbrink', '1945', 'US Army', 'USA', 'Surplus de l US Army', '1','https://photos.google.com/photo/AF1QipMY4jS6OtFEj7M7VeaK44wgNo75fTK3gD4AZmAn', '1', '1' );

-- Remplissage de la table Multimédia objet
INSERT INTO MULTIMEDIAObj VALUES ('2', NULL, NULL, NULL, '1');

-- Remplissage de la table multimédia catégorie
INSERT INTO MULTIMEDIACat VALUES ('1', NULL, NULL, NULL,'1');
-- a revoir pour l'id auto généré
--INSERT INTO MULTIMEDIACat VALUES ('1', NULL, NULL, NULL, SELECT categorie_id FROM CATEGORIE WHERE Categorie_nom='Appareils d anesthésie');

commit;