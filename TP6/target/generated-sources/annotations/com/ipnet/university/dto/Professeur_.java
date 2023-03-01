package com.ipnet.university.dto;

import com.ipnet.university.dto.Cours;
import com.ipnet.university.dto.Departement;
import javax.annotation.Generated;
import javax.persistence.metamodel.SetAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.7.9.v20210604-rNA", date="2023-02-14T18:03:09")
@StaticMetamodel(Professeur.class)
public class Professeur_ extends Personne_ {

    public static volatile SetAttribute<Professeur, Departement> departements;
    public static volatile SingularAttribute<Professeur, String> grade;
    public static volatile SetAttribute<Professeur, Cours> cours;

}