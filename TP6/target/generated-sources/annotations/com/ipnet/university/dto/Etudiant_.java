package com.ipnet.university.dto;

import com.ipnet.university.dto.Cours;
import com.ipnet.university.dto.Departement;
import javax.annotation.Generated;
import javax.persistence.metamodel.SetAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.7.9.v20210604-rNA", date="2023-02-14T18:03:09")
@StaticMetamodel(Etudiant.class)
public class Etudiant_ extends Personne_ {

    public static volatile SingularAttribute<Etudiant, Departement> departement;
    public static volatile SingularAttribute<Etudiant, String> adresse;
    public static volatile SingularAttribute<Etudiant, String> telephone;
    public static volatile SetAttribute<Etudiant, Cours> cours;

}