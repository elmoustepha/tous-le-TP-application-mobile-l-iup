// Classe Cours
class Cours {
  String nom;
  int credit;

  Cours({required this.nom, required this.credit});

  // Méthode pour afficher les détails du cours
  void afficherDetails() {
    print('Cours: $nom, Crédits: $credit');
  }
}

// Classe Etudiant
class Etudiant {
  String nom;
  int age;
  List<Cours> coursInscrits = []; // Attribut contenant une liste de cours

  Etudiant({required this.nom, required this.age});

  // Méthode pour ajouter un cours
  void ajouterCours(Cours cours) {
    coursInscrits.add(cours);
    print('Ajouté le cours ${cours.nom} à l\'étudiant $nom.');
  }

  // Méthode pour afficher les cours inscrits
  void afficherCours() {
    print('Cours inscrits pour $nom :');
    if (coursInscrits.isEmpty) {
      print('Aucun cours inscrit.');
    } else {
      for (var cours in coursInscrits) {
        cours.afficherDetails();
      }
    }
  }
}

void main() {
  // Création de quelques cours
  var math = Cours(nom: 'Mathématiques', credit: 5);
  var physique = Cours(nom: 'Physique', credit: 4);
  var informatique = Cours(nom: 'Informatique', credit: 6);

  // Création d'un étudiant
  var etudiant = Etudiant(nom: 'Ahmed', age: 20);

  // Ajout de cours à l'étudiant
  etudiant.ajouterCours(math);
  etudiant.ajouterCours(informatique);

  // Affichage des cours inscrits de l'étudiant
  etudiant.afficherCours();
}
