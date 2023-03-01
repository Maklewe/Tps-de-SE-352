package com.ipnet.university.service;

import com.ipnet.university.dao.ProfesseurDao;
import com.ipnet.university.dto.Professeur;

import java.util.List;

public class ProfesseurService {

    public Professeur saveProfesseur(Professeur professeur){
        ProfesseurDao professeurDao = new ProfesseurDao();
        return professeurDao.saveProfesseur(professeur);
    }

    public Professeur updateProfesseur(Professeur professeur){
        ProfesseurDao professeurDao = new ProfesseurDao();
        return professeurDao.updateProfesseur(professeur);
    }

    public Professeur getProfesseurById(int id){
        ProfesseurDao professeurDao = new ProfesseurDao();
        return professeurDao.getProfesseurById(id);
    }

    public List<Professeur> getAllProfesseur(){
        ProfesseurDao professeurDao = new ProfesseurDao();
        return professeurDao.getAllProfesseur();
    }

    public Professeur deleteProfesseur(int id){
        ProfesseurDao professeurDao = new ProfesseurDao();
        return professeurDao.deleteProfesseur(id);
    }
}
