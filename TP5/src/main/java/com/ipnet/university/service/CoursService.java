package com.ipnet.university.service;

import com.ipnet.university.dao.CoursDao;
import com.ipnet.university.dto.Cours;

import java.util.List;

public class CoursService {

    public Cours saveCours(Cours cours){
        CoursDao coursDao = new CoursDao();
        return coursDao.saveCours(cours);
    }

    public Cours updateCours(Cours cours){
        CoursDao coursDao = new CoursDao();
        return coursDao.updateCours(cours);
    }

    public Cours getCoursById(int id){
        CoursDao coursDao = new CoursDao();
        return coursDao.getCoursById(id);
    }

    public List<Cours> getAllCours(){
        CoursDao coursDao = new CoursDao();
        return coursDao.getAllCours();
    }

    public Cours deleteCours(int id){
        CoursDao coursDao = new CoursDao();
        return coursDao.deleteCours(id);
    }
}
