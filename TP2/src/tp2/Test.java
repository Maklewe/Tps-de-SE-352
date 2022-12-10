package tp2;

import java.sql.SQLException;
import java.util.Scanner;

public class Test {
	
	public static void main(String[] args) throws SQLException{
		// TODO Auto-generated method stub String nom; String prenom;
		int point; 
		String recherche; 
		JoueurCRUD jc = new JoueurCRUD();
		String nom;
		String prenom;

		try (Scanner scanner = new Scanner(System.in)) 
		{ 
			boolean isRunning = true;
 
			while (true) 
			{ 
				System.out.println("\n1. Afficher la liste de tous les joueurs");
				System.out.println("2. Ajouter un nouveau joueur");
				System.out.println("3. Modifier les informations d'un joueur");
				System.out.println("4. Supprimer un joueur");
				System.out.println("5. Rechercher un joueur");
				System.out.println("6. Quitter\n"); 
				System.out.print("Votre choix : ");
				
				int choix = scanner.nextInt(); switch (choix) 
				{ 
					case 1:
						System.out.println("Listes des joueurs\n"); jc.findAll(); 
						break; 
					case 2:
						System.out.println(" Insertion d'un joueur\n");
						System.out.print("Entrer le nom du joueur : "); 
						nom = scanner.next();
						System.out.print("Entrer le prenom du joueur : "); 
						prenom = scanner.next();
						System.out.print("Entrer le point du joueur : "); 
						point = scanner.nextInt();
						Joueur j2 = new Joueur(nom, prenom, point); 
						jc.add(j2); 
						break; 
					case 3:
						System.out.println(" Modification d'un joueur\n");
						System.out.print("Entrer l'identifiant du joueur : "); 
						recherche = scanner.next(); 
						boolean isFound = jc.search(recherche); 
						if(isFound) 
						{
							System.out.print("Entrer le nom du joueur : "); 
							nom = scanner.next();
							System.out.print("Entrer le prenom du joueur : "); 
							prenom = scanner.next();
							System.out.print("Entrer le point du joueur : "); 
							point = scanner.nextInt();
							Joueur j5 = new Joueur(nom, prenom, point); 
							jc.edit(j5, recherche);
						} 
						break;
					case 4: 
						System.out.println(" Suppression d'un étudiant\n");
						System.out.print("Entrer le numero licence du joueur : "); 
						recherche = scanner.next(); jc.delete(recherche); 
						break; 
					case 5:
						System.out.println(" Recherche d'un étudiant\n");
						System.out.print("Entrer le numero licence du joueur : "); 
						recherche = scanner.next(); 
						jc.search(recherche); 
						break; 
					case 6:
						System.out.println("Au revoir !"); 
						isRunning = false;
						break; 
					default: 
						System.out.println("Choix incorrect"); break; }
				
			} 
		} catch (NumberFormatException e) 
			{ // TODO Auto-generated catch block
			e.printStackTrace(); 
			}

	}
}
