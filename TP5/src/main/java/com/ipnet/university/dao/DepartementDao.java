package com.ipnet.university.dao;

import com.ipnet.university.dto.Departement;

import javax.persistence.*;
import java.util.List;

public class DepartementDao {

    EntityManagerFactory entityManagerFactory = Persistence.createEntityManagerFactory("universitePU");
    EntityManager entityManager = entityManagerFactory.createEntityManager();
    EntityTransaction entityTransaction = entityManager.getTransaction();

    public Departement saveDepartement(Departement departement) {
        entityTransaction.begin();
        entityManager.persist(departement);
        entityTransaction.commit();
        return departement;
    }

    public Departement updateDepartement(Departement departement) {
        Departement d = entityManager.find(Departement.class , departement.getId());
        d.setNom(departement.getNom());
        d.setAdresseWeb(departement.getAdresseWeb());
        entityTransaction.begin();
        entityManager.merge(departement);
        entityTransaction.commit();
        return departement;
    }

    public Departement getDepartementById(int id) {
        Departement departement = entityManager.find(Departement.class , id);
        return departement;
    }

    public List<Departement> getAllDepartement(){
        String sql = "SELECT departement FROM Departement departement";
        Query query = entityManager.createQuery(sql);
        List<Departement> departementList = query.getResultList();
        return departementList;
    }

    public Departement deleteDepartement(int id) {
        Departement departement = entityManager.find(Departement.class , id);
        entityTransaction.begin();
        entityManager.remove(departement);
        entityTransaction.commit();
        return departement;
    }
}
