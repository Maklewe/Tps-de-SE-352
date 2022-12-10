package tp2;

import java.util.Comparator;
import java.util.Objects;

public class Joueur implements Comparable<Joueur>, Comparator<Joueur>{

	private String nom;
	private String prenom;
	private String numeroLicence;
	private int points = 0;
	
	public Joueur() {
		// TODO Auto-generated constructor stub
	}
	
	public Joueur(String nom, String prenom, String numeroLicence, int points) {
		this.nom = nom;
		this.prenom = prenom;
		this.numeroLicence = numeroLicence;
		this.points = points;
	}
	
	public Joueur(String nom, String prenom, int points) {
		this.nom = nom;
		this.prenom = prenom;
		this.numeroLicence = this.generateNumeroLicence();
		this.points = points;
	}
	
	public String getNom() {
		return nom;
	}

	public void setNom(String nom) {
		this.nom = nom;
	}

	public String getPrenom() {
		return prenom;
	}

	public void setPrenom(String prenom) {
		this.prenom = prenom;
	}

	public String getNumeroLicence() {
		return numeroLicence;
	}

	public void setNumeroLicence(String numeroLicence) {
		this.numeroLicence = this.getNumeroLicence();
	}

	
	public int getPoints() {
		return points;
	}

	public void setPoints(int points) {
		this.points = points;
	}

	public String generateNumeroLicence() {
		return this.getNom() + (int) (Math.random()*(100-0)) + 0;
	}
	
	@Override
	public String toString() {
        return "Joueur \nnom:" + nom + "\nprenom:" + prenom + " \nnumeroLicence:" + numeroLicence + " \nnombrePoint:"
                + points;
    }

    
    public void ajouterPoint(int nombrePointAjoutes) {
        this.points+=nombrePointAjoutes;
    }
	@Override
	public boolean equals(Object obj) {
		if (this == obj)
            return true;
        if (obj == null)
            return false;
        if (getClass() != obj.getClass())
            return false;
        Joueur other = (Joueur) obj;
        if (nom == null) {
            if (other.nom != null)
                return false;
        } else if (!nom.equals(other.nom))
            return false;
        if (prenom == null) {
            if (other.prenom != null)
                return false;
        } else if (!prenom.equals(other.prenom))
            return false;
        if (numeroLicence == null) {
            if (other.numeroLicence != null)
                return false;
        } else if (!numeroLicence.equals(other.numeroLicence))
            return false;
        if (points != other.points)
            return false;
        return true;
	}

	public int compareTo(Joueur j) {
		// TODO Auto-generated method stub
		return this.getNom().compareTo(j.getNom());
	}
	
	public int compare(Joueur j1, Joueur j2) {
		// TODO Auto-generated method stub
		if (j1.getPoints()<j2.getPoints())
			return -1;
		else if (j1.getPoints()>j2.getPoints())
			return 1;
		else
			return 0;
	}

}