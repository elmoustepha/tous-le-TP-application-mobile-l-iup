// Q)1
class livre {
  String titre;
  String auteur;
  int nmbrepage;

// Q)2
  livre(this.titre, this.auteur, this.nmbrepage);

  void afficherinfo() {
    print("le livre : $titre, $auteur, $nmbrepage ");
  }
}

// Q)3
void main() {
  livre l1 = livre("math", "80cm", 300);
  livre l2 = livre("science", "90cm", 250);
  l1.afficherinfo();
  l2.afficherinfo();
}
