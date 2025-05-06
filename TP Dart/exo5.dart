// Q)1
// void main() {
//   Map<int, String> joursemain = {
//     1: "lundi",
//     2: "mardi",
//     3: "mecredi",
//     4: "jeudi",
//     5: "vendredi",
//     6: "samedi",
//     7: "dimanche"
//   };
//   print(joursemain[3]);
// }

//Q)2

// void main() {
//   Map<int, String> joursemain = {
//     1: "lundi",
//     2: "mardi",
//     3: "mecredi",
//     4: "jeudi",
//     5: "vendredi",
//     6: "samedi",
//     7: "dimanche"
//   };

//   joursemain.forEach((k, v) {
//     print('le cles et les valeurs sont : $k,$v');
//   });
// }

// Q)3
void main() {
  Set<String> joursemain = {
    "lundi",
    "mardi",
    "mecredi",
    "jeudi",
    "vendredi",
    "samedi",
    "dimanche"
  };
  joursemain.add("vendredi.");

  print(joursemain);
}
