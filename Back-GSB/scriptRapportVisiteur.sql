#------------------------------------------------------------
#        Script MySQL.
#------------------------------------------------------------


#------------------------------------------------------------
# Table: visiteur
#------------------------------------------------------------

CREATE TABLE visiteur(
        id_visiteur   Int NOT NULL ,
        nom           Varchar (50) NOT NULL ,
        date_embauche Date NOT NULL
	,CONSTRAINT visiteur_PK PRIMARY KEY (id_visiteur)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: Rapport
#------------------------------------------------------------

CREATE TABLE Rapport(
        id_rapport  Int NOT NULL ,
        date        Date NOT NULL ,
        bilan       Varchar (300) NOT NULL ,
        motif       Varchar (250) NOT NULL ,
        id_visiteur Int NOT NULL
	,CONSTRAINT Rapport_PK PRIMARY KEY (id_rapport)

	,CONSTRAINT Rapport_visiteur_FK FOREIGN KEY (id_visiteur) REFERENCES visiteur(id_visiteur)
)ENGINE=InnoDB;
