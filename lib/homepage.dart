import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        elevation: 0.2,
        title: Text("Tadeo De Leon"),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 129, 177, 201),
        actions: <Widget>[
          InkWell(
            onTap: null,
            child: IconButton(
              icon: Icon(
                Icons.search,
                color: Colors.black,
              ), onPressed: () {  },
            ),
          ),
          InkWell(
            onTap: null,
            child: IconButton(
              icon: Icon(
                Icons.settings,
                color: Colors.black,
              ), onPressed: () {  },
            ),
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
               decoration: BoxDecoration(color: const Color.fromARGB(255, 18, 98, 109)),
              accountName: Text("Tadeo De Leon No 1165"),
              accountEmail: Text("a.22308051281165@cbtis128.edu.mx"),
              currentAccountPicture: GestureDetector(
                child: CircleAvatar(
                radius: 130,
                backgroundColor: Colors.red,
                child: CircleAvatar(
                radius: 120,
                backgroundImage: NetworkImage(
                  'https://raw.githubusercontent.com/Asyhbd2/Imagenes-para-API-Flutter-6J/refs/heads/main/empleado.png'),
                  ),
                ),
              ),
            ),
              InkWell(
              onTap: (){},
              child: ListTile(
                onTap: (){Navigator.popAndPushNamed(context, "/home");},
                leading: Icon(Icons.home, color: Colors.pink),
                title: Text("Home Page"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}