//Q1)
// definition
// void afficherSomme(int lo, int la) {
//   int s = lo * la;
//   int p = (lo + la) * 2;
//   print("La surface de votre rectangle est = $s ");
//   print("La perimetre de votre rectangle est = $p ");
// }

// void main() {
//   // application
//   afficherSomme(10, 5);
// }

// Q2)

// defintion

int maX(int a, int b) {
  if (a > b) {
    return a;
  } else {
    return b;
  }
}

void main() {
  // application
  int m = maX(10, 15);
  print("la max est = $m");
}
