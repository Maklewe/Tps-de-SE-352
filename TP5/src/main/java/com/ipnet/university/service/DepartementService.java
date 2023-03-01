package com.ipnet.university.service;

import com.ipnet.university.dao.DepartementDao;
import com.ipnet.university.dto.Departement;

import java.util.List;

public class DepartementService {

    public Departement saveDepartement(Departement departement){
        DepartementDao departementDao = new DepartementDao();
        return departementDao.saveDepartement(departement);
    }

    public Departement updateDepartement(Departement departement){
        DepartementDao departementDao = new DepartementDao();
        return departementDao.updateDepartement(departement);
    }

    public Departement getDepartementById(int id){
        DepartementDao departementDao = new DepartementDao();
        return departementDao.getDepartementById(id);
    }

    public List<Departement> getAllDepartement(){
        DepartementDao departementDao = new DepartementDao();
        return departementDao.getAllDepartement();
    }

    public Departement deleteDepartement(int id){
        DepartementDao departementDao = new DepartementDao();
        return departementDao.deleteDepartement(id);
    }
}
