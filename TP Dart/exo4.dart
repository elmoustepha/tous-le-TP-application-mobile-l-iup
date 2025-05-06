void main() {
  List<int> nombre = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  for (int i = 0; i < nombre.length; i++) {
    // indice debute de 0 a 9
    nombre.add(11);
    nombre.add(12);
    print(nombre[i]);
  }
}
