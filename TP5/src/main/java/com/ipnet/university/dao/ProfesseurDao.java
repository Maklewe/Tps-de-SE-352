package com.ipnet.university.dao;

import com.ipnet.university.dto.Professeur;

import javax.persistence.*;
import java.util.List;

public class ProfesseurDao {

    EntityManagerFactory entityManagerFactory = Persistence.createEntityManagerFactory("universitePU");
    EntityManager entityManager = entityManagerFactory.createEntityManager();
    EntityTransaction entityTransaction = entityManager.getTransaction();

    public Professeur saveProfesseur(Professeur professeur) {
        entityTransaction.begin();
        entityManager.persist(professeur);
        entityTransaction.commit();
        return professeur;
    }

    public Professeur updateProfesseur(Professeur professeur) {
        Professeur p = entityManager.find(Professeur.class , professeur.getId());
        p.setNom(professeur.getNom());
        p.setPrenom(professeur.getPrenom());
        p.setEmail(professeur.getEmail());
        p.setGrade(professeur.getGrade());
        entityTransaction.begin();
        entityManager.merge(professeur);
        entityTransaction.commit();
        return professeur;
    }

    public Professeur getProfesseurById(int id) {
        Professeur professeur = entityManager.find(Professeur.class , id);
        return professeur;
    }

    public List<Professeur> getAllProfesseur(){
        String sql = "SELECT professeur FROM Professeur professeur";
        Query query = entityManager.createQuery(sql);
        List<Professeur> professeurList = query.getResultList();
        return professeurList;
    }

    public Professeur deleteProfesseur(int id) {
        Professeur professeur = entityManager.find(Professeur.class , id);
        entityTransaction.begin();
        entityManager.remove(professeur);
        entityTransaction.commit();
        return professeur;
    }
}
