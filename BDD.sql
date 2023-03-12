--             Generation d'une base de donnees 
-- -----------------------------------------------------------------------------
--      Nom de la base : Inventaire
--      Projet : Ptut Musée de l'anesthésie
--      Auteur :Laurine RAT
--      Date de derniere modification : 13/02/2023
-- -----------------------------------------------------------------------------
--\i C:/Users/lauri/OneDrive/Bureau/ISIS/FIE3/Ptut/BDD.sql;

DROP TABLE IF EXISTS CATEGORIE CASCADE;
DROP TABLE IF EXISTS OBJET CASCADE;
DROP TABLE IF EXISTS SALLE CASCADE;
DROP TABLE IF EXISTS MULTIMEDIAObj CASCADE;
DROP TABLE IF EXISTS MULTIMEDIACat CASCADE;


-- -----------------------------------------------------------------------------
--       TABLE : CATEGORIE
-- -----------------------------------------------------------------------------

CREATE TABLE CATEGORIE 
(
  categorie_id SERIAL NOT NULL,
  Categorie_nom  varchar(1000) NOT NULL, -- le nom est obligatoire
  Categorie_Description  varchar(1000) NULL,
  URL_Photo varchar(1000) NOT NULL, -- on met le lien vers un drive qui contient la photo (lien de la photo)
  CONSTRAINT pk_categorie PRIMARY KEY (categorie_id)
);

-- -----------------------------------------------------------------------------
--       TABLE : SALLE
-- -----------------------------------------------------------------------------

CREATE TABLE SALLE
(
  Salle_id SERIAL NOT NULL,
  Salle_nom  varchar(1000) NOT NULL, -- le nom est obligatoire
  CONSTRAINT PK_Salle PRIMARY KEY (Salle_id)
);

-- -----------------------------------------------------------------------------
--       TABLE : OBJET
-- -----------------------------------------------------------------------------

CREATE TABLE OBJET
(
  Objet_id SERIAL NOT NULL,
  Objet_nom  varchar(1000) NOT NULL, -- le nom est obligatoire
  Annee int NULL,
  Createur  varchar(1000) NULL,
  Pays  varchar(1000) NULL,
  Objet_Description  varchar(1000) NULL,
  Nb_Possession integer NULL,
  URL_Photo varchar(1000) NOT NULL, -- on met le lien vers un drive qui contient la photo (lien de la photo)
  categorie_id int,
  salle_id int,
  CONSTRAINT PK_Objet PRIMARY KEY (Objet_id),
  CONSTRAINT FK_CategorieObjet FOREIGN KEY (categorie_id) REFERENCES CATEGORIE(categorie_id) ON UPDATE RESTRICT ON DELETE RESTRICT,
  CONSTRAINT FK_Object_Salle FOREIGN KEY (salle_id) REFERENCES SALLE (Salle_id) ON UPDATE RESTRICT ON DELETE RESTRICT
);

-- -----------------------------------------------------------------------------
--       TABLE : MULTIMEDIA OBJET
-- -----------------------------------------------------------------------------

CREATE TABLE MULTIMEDIAObj
(
  MultiObj_id SERIAL NOT NULL,
  URL_PhotoObj varchar(1000) NULL, -- on met le lien vers un drive qui contient la photo (lien de la photo)
  URL_VideoObj varchar(1000) NULL, -- On met le lien d'une vidéo youtube
  URL_AudioObj varchar(1000) NULL, -- On met le lien d'un audio youtube
  objet_id int,
  CONSTRAINT PK_MultimediaObj PRIMARY KEY (MultiObj_id),
  CONSTRAINT FK_MultiObj_Objet FOREIGN KEY (objet_id) REFERENCES OBJET (Objet_id) ON UPDATE RESTRICT ON DELETE RESTRICT
);

-- -----------------------------------------------------------------------------
--       TABLE : MULTIMEDIA CATEGORIE
-- -----------------------------------------------------------------------------


CREATE TABLE MULTIMEDIACat
(
  MultiCat_id SERIAL NOT NULL,
  URL_PhotoCat varchar(1000) NULL, -- on met le lien vers un drive qui contient la photo (lien de la photo)
  URL_VideoCat varchar(1000) NULL, -- On met le lien d'une vidéo youtube
  URL_AudioCat varchar(1000) NULL, -- On met le lien d'un audio youtube
  categorie_id int,
  CONSTRAINT PK_MultimediaCat PRIMARY KEY (MultiCat_id),
  CONSTRAINT FK_MultiCat_Categorie FOREIGN KEY (categorie_id) REFERENCES CATEGORIE (categorie_id) ON UPDATE RESTRICT ON DELETE RESTRICT
);

