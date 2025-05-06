// Classe de base
class Vehicule {
  String marque;
  int vitesse;

  Vehicule(this.marque, this.vitesse);

  void deplacer() {
    print("Ce véhicule se déplace à une vitesse maximale de $vitesse km/h.");
  }
}

// Classe dérivée Voiture
class Voiture extends Vehicule {
  int nombrePortes;

  Voiture(String marque, int vitesse, this.nombrePortes) : super(marque, vitesse);

  @override
  void deplacer() {
    print("La voiture $marque avec $nombrePortes portes se déplace à $vitesse km/h.");
  }
}

// Classe dérivée Moto
class Moto extends Vehicule {
  String typeMoto;

  Moto(String marque, int vitesse, this.typeMoto) : super(marque, vitesse);

  @override
  void deplacer() {
    print("La moto $marque ($typeMoto) se déplace à $vitesse km/h.");
  }
}

void main() {
  Vehicule vehicule = Vehicule("Générique", 100);
  vehicule.deplacer();

  Voiture voiture = Voiture("Toyota", 180, 4);
  voiture.deplacer();

  Moto moto = Moto("Yamaha", 200, "Cruiser");
  moto.deplacer();
}
