package com.ipnet.university.service;

import com.ipnet.university.dao.EtudiantDao;
import com.ipnet.university.dto.Etudiant;

import java.util.List;

public class EtudiantService {

    public Etudiant saveEtudiant(Etudiant etudiant) {
        EtudiantDao etudiantDao = new EtudiantDao();
        return etudiantDao.saveEtudiant(etudiant);
    }

    public Etudiant updateEtudiant(Etudiant etudiant) {
        EtudiantDao etudiantDao = new EtudiantDao();
        return etudiantDao.updateEtudiant(etudiant);
    }

    public Etudiant getEtudiantById(int id) {
        EtudiantDao etudiantDao = new EtudiantDao();
        return etudiantDao.getEtudiantById(id);
    }

    public List<Etudiant> getAllEtudiant() {
        EtudiantDao etudiantDao = new EtudiantDao();
        return etudiantDao.getAllEtudiant();
    }

    public Etudiant deleteEtudiant(int id) {
        EtudiantDao etudiantDao = new EtudiantDao();
        return etudiantDao.deleteEtudiant(id);
    }
}
