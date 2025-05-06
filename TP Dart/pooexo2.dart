// Q)1
class Citoyen {
  String nom, prenom;
  int age;

  Citoyen(this.nom, this.prenom, this.age);

  bool estMajeur() {
    if (age >= 18) {
      return true;
    } else {
      return false;
    }
  }
}

// Q)2
void main() {
  Citoyen c1 = Citoyen("Med", "sidi", 25);
  Citoyen c2 = Citoyen("Mariam", "ahmed", 17);

  print("Pour le cetoyen ${c1.nom} ${c1.prenom} = ${c1.estMajeur()}");

  print("Pour le cetoyen ${c2.nom} ${c2.prenom} = ${c2.estMajeur()}");
}
