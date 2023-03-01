package com.ipnet.university.dto;

import com.ipnet.university.dto.Cours;
import com.ipnet.university.dto.Etudiant;
import com.ipnet.university.dto.Professeur;
import javax.annotation.Generated;
import javax.persistence.metamodel.SetAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.7.9.v20210604-rNA", date="2023-02-14T18:03:09")
@StaticMetamodel(Departement.class)
public class Departement_ extends BaseEntity_ {

    public static volatile SetAttribute<Departement, Professeur> professeurs;
    public static volatile SetAttribute<Departement, Etudiant> etudiants;
    public static volatile SingularAttribute<Departement, String> nom;
    public static volatile SetAttribute<Departement, Cours> cours;
    public static volatile SingularAttribute<Departement, String> adresseWeb;

}