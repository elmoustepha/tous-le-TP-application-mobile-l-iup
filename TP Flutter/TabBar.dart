import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3, // Nombre d'onglets
      child: Scaffold(
        appBar: AppBar(
          title: Text("TabBar Exemple"),
          bottom: TabBar(
            tabs: [
              Tab(icon: Icon(Icons.home), text: "Accueil"),
              Tab(icon: Icon(Icons.star), text: "Favoris"),
              Tab(icon: Icon(Icons.settings), text: "Paramètres"),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Center(child: Text("Page Accueil")),
            Center(child: Text("Page Favoris")),
            Center(child: Text("Page Paramètres")),
          ],
        ),
      ),
    );
  }
}

/*
Concept de TabBar et TabBarView
TabBar : Permet de définir les onglets (visuellement).
TabBarView : Définit le contenu de chaque onglet.
TabController : Gère la navigation entre les onglets.
*/

/*
Étapes :
Créez une DefaultTabController pour envelopper les widgets TabBar et TabBarView.
Définissez vos onglets dans TabBar.
Associez chaque onglet à un contenu dans TabBarView.
*/

/*
Commentaires sur le Code :

- DefaultTabController :
  Définit le nombre d'onglets.
  Gère automatiquement la synchronisation entre TabBar et TabBarView.

- AppBar :
  Contient la TabBar dans sa propriété bottom.

- TabBar :
  Utilisée pour afficher les onglets (icônes, texte ou les deux).

- TabBarView :
  Définit les widgets qui apparaissent pour chaque onglet.
*/

/*
NB : Dans Flutter, la propriété bottom de l'AppBar est utilisée pour ajouter des 
widgets en bas de la barre d'application.
Elle est souvent utilisée pour intégrer une TabBar lorsque vous implémentez une 
navigation par onglets.
*/
