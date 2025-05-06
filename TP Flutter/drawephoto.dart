import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: PagePrincipale(),
    );
  }
}

class PagePrincipale extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page Principale'),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            // Remplacement de DrawerHeader par un Container
            Container(
              color: Colors.blue,
              padding: EdgeInsets.symmetric(vertical: 20), // Contrôle du padding vertical
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 40, // Taille de l'image
                    backgroundImage: AssetImage('assets/user.jpg'),
                  ),
                  SizedBox(height: 10), // Espacement entre l'image et le texte
                  Text(
                    'Nom de l\'utilisateur',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  ),
                  Text(
                    'email@example.com',
                    style: TextStyle(
                      color: Colors.white70,
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ),
            // Option 1 : Aller à la Nouvelle Page
            ListTile(
              leading: Icon(Icons.pageview),
              title: Text('Nouvelle Page'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => NouvellePage()),
                );
              },
            ),
            // Option 2 : Fermer le Drawer
            ListTile(
              leading: Icon(Icons.close),
              title: Text('Fermer le menu'),
              onTap: () {
                Navigator.pop(context); // Fermer le drawer
              },
            ),
          ],
        ),
      ),
      body: Center(
        child: Text('Bienvenue sur la Page Principale !'),
      ),
    );
  }
}

class NouvellePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Nouvelle Page'),
      ),
      body: Center(
        child: Text('Bienvenue sur la Nouvelle Page !'),
      ),
    );
  }
}
