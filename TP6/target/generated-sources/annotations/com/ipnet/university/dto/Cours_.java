package com.ipnet.university.dto;

import com.ipnet.university.dto.Departement;
import com.ipnet.university.dto.Etudiant;
import com.ipnet.university.dto.Professeur;
import java.util.Date;
import javax.annotation.Generated;
import javax.persistence.metamodel.SetAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.7.9.v20210604-rNA", date="2023-02-14T18:03:09")
@StaticMetamodel(Cours.class)
public class Cours_ extends BaseEntity_ {

    public static volatile SetAttribute<Cours, Professeur> professeurs;
    public static volatile SingularAttribute<Cours, Date> dateCreation;
    public static volatile SetAttribute<Cours, Departement> departements;
    public static volatile SetAttribute<Cours, Etudiant> etudiants;
    public static volatile SingularAttribute<Cours, String> intitule;

}