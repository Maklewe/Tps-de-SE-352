package tg.ipnet.university.tp3;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;

public class Test {
	
	public static void main(String[] args) {
		
		System.out.println("Hello !!!");
        
        EntityManagerFactory emf = Persistence.createEntityManagerFactory("football");
        EntityManager em = emf.createEntityManager();
        
        EntityTransaction et = em.getTransaction();
        et.begin();
        
        et.commit();
        em.close();
        emf.close();
	}

}
