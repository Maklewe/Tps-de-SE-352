package com.ipnet.university.dao;

import com.ipnet.university.dto.Cours;

import javax.persistence.*;
import java.util.List;

public class CoursDao {

    EntityManagerFactory entityManagerFactory = Persistence.createEntityManagerFactory("universitePU");
    EntityManager entityManager = entityManagerFactory.createEntityManager();
    EntityTransaction entityTransaction = entityManager.getTransaction();

    public Cours saveCours(Cours cours) {
        entityTransaction.begin();
        entityManager.persist(cours);
        entityTransaction.commit();
        return cours;
    }

    public Cours updateCours(Cours cours) {
        Cours c = entityManager.find(Cours.class, cours.getId());
        c.setIntitule(cours.getIntitule());
        c.setDateCreation(cours.getDateCreation());
        entityTransaction.begin();
        entityManager.merge(cours);
        entityTransaction.commit();
        return cours;
    }

    public Cours getCoursById(int id) {
        Cours cours = entityManager.find(Cours.class, id);
        return cours;
    }

    public List<Cours> getAllCours() {
        String sql = "SELECT cours FROM Cours cours";
        Query query = entityManager.createQuery(sql);
        List<Cours> coursList = query.getResultList();
        return coursList;
    }

    public Cours deleteCours(int id) {
        Cours cours = entityManager.find(Cours.class, id);
        entityTransaction.begin();
        entityManager.remove(cours);
        entityTransaction.commit();
        return cours;
    }
}
