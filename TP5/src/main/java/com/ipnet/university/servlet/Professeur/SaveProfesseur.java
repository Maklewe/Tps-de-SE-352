package com.ipnet.university.servlet.Professeur;

import com.ipnet.university.dto.Professeur;
import com.ipnet.university.service.ProfesseurService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet("/save/professeur")
public class SaveProfesseur extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException, IOException {

        String nom = req.getParameter("nom");
        String prenom = req.getParameter("prenom");
        String email = req.getParameter("email");
        String grade = req.getParameter("grade");

        Professeur professeur = new Professeur();
        professeur.setNom(nom);
        professeur.setPrenom(prenom);
        professeur.setEmail(email);
        professeur.setGrade(grade);

        ProfesseurService professeurService = new ProfesseurService();
        Professeur p = professeurService.saveProfesseur(professeur);

        HttpSession session = req.getSession();

        if (p != null) {
            session.setAttribute("success", "Professeur saved successfully");
            resp.sendRedirect("saveProfesseur.jsp");
        } else {
            session.setAttribute("error", "Professeur failed to get saved");
            resp.sendRedirect("saveProfesseur.jsp");
        }
    }
}
