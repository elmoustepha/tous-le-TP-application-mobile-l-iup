// Définition de la classe Livre
class Livre {
  String titre;
  String auteur;
  int anneePublication;
  bool disponible;

  Livre({
    required this.titre,
    required this.auteur,
    required this.anneePublication,
    this.disponible = true,
  });

  // Méthode pour afficher les détails d'un livre
  void afficherDetails() {
    print('Titre: $titre');
    print('Auteur: $auteur');
    print('Année de publication: $anneePublication');
    print('Disponible: ${disponible ? "Oui" : "Non"}');
  }
}

// Définition de la classe Bibliothèque
class Bibliotheque {
  List<Livre> livres = [];

  // Ajouter un livre
  void ajouterLivre(Livre livre) {
    livres.add(livre);
    print('Livre "${livre.titre}" ajouté à la bibliothèque.');
  }

  // Retirer un livre
  void retirerLivre(String titre) {
    livres.removeWhere((livre) => livre.titre == titre);
    print('Livre "$titre" retiré de la bibliothèque.');
  }

  // Afficher tous les livres disponibles
  void afficherLivresDisponibles() {
    print('Livres disponibles :');
    for (var livre in livres.where((livre) => livre.disponible)) {
      livre.afficherDetails();
      print('---');
    }
  }

  // Rechercher des livres par auteur
  List<Livre> rechercherParAuteur(String auteur) {
    return livres.where((livre) => livre.auteur == auteur).toList();
  }
}

void main() {
  // Exemple d'utilisation
  var bibliotheque = Bibliotheque();

  // Ajout de livres
  bibliotheque.ajouterLivre(Livre(
    titre: 'Django full stack',
    auteur: 'Mohamed Aly',
    anneePublication: 2022,
  ));

  bibliotheque.ajouterLivre(Livre(
    titre: 'Dev mobile',
    auteur: 'Ahmed Med',
    anneePublication: 2024,
  ));

  bibliotheque.ajouterLivre(Livre(
    titre: 'HTML5',
    auteur: 'Mariem Sidaty',
    anneePublication: 2019,
  ));

  bibliotheque.ajouterLivre(Livre(
    titre: 'SQL',
    auteur: 'Ahmed Med',
    anneePublication: 2016,
  ));

  // Affichage des livres disponibles
  bibliotheque.afficherLivresDisponibles();

  // Recherche de livres par auteur
  print('\nLivres de Ahmed Med :');
  var livres = bibliotheque.rechercherParAuteur('Ahmed Med');
  for (var livre in livres) {
    livre.afficherDetails();
    print('---');
  }
}
