import 'package:flutter/material.dart';

// import 'package:sort/sort.dart';
// import 'package:sort/sort.dart';
void main() {
  runApp(App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.black,
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.blueGrey,
        ),
      ),
      home: Kontak(),
    );
  }
}

class Kontak extends StatelessWidget {
  const Kontak({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Kontak"),
      ),
      body: Container(
        child: Konten(),
        color: Colors.black54,
      ),
    );
  }
}

class Konten extends StatelessWidget {
  List<Map<String, dynamic>> daftar = [
    {
      'nama': 'Muhammad Muhtadin Nurilhaq',
      'email': 'adinexion@gmail.com',
      'nohp': '0895380046993',
      'foto': 'IMG_0304.jpg',
    },
    {
      'nama': 'Naufal Zakly Santoso',
      'email': 'naufalganteng@gmail.com',
      'nohp': '+62 852-3101-2099',
      'foto': 'IMG_0290.jpg',
    },
    {
      'nama': 'Fiesta Putra Reifa Al Ghifar',
      'email': 'fiesta@gmail.com',
      'nohp': '+62 812-4684-1187',
      'foto': 'IMG_0291.jpg',
    },
    {
      'nama': "I'zaz Dhiya Ulhaq",
      'email': 'izaz@gmail.com',
      'nohp': '+62 823-2373-1302',
      'foto': 'IMG_0293.jpg',
    },
    {
      'nama': "Daniel Purnomo",
      'email': 'izaz@gmail.com',
      'nohp': '+62 823-2373-1302',
      'foto': 'CristianoRonaldo.jpg',
    },
    {
      'nama': "Hilman Fathurrahman",
      'email': 'hifra@gmail.com',
      'nohp': '+62 823-2373-1302',
      'foto': 'LionelMessi.jpg',
    },
    {
      'nama': "Zidni Zainul Ikhsan",
      'email': 'zidni@gmail.com',
      'nohp': '+62 815-5682-7623',
      'foto': 'LionelMessi.jpg',
    },
    {
      'nama': "Oryx Setia Wirahadi Launa",
      'email': 'oryx@gmail.com',
      'nohp': '+62 823-2373-1302',
      'foto': 'IMG_0293.jpg',
    },
    {
      'nama': "Kanzul Fikri",
      'email': 'kanzul@gmail.com',
      'nohp': '+62 821-3261-8941',
      'foto': 'IMG_0293.jpg',
    },
    {
      'nama': "Afandy Maulana Pangestu",
      'email': 'afandyganteng@gmail.com',
      'nohp': '+62 852-3611-9654',
      'foto': 'IMG_0298.jpg',
    },
    {
      'nama': "Figo Perdana Putra",
      'email': 'danaisthebes@gmail.com',
      'nohp': '+62 812-1619-5308',
      'foto': 'IMG_0301.jpg',
    },
    {
      'nama': "Arif Hendrawan Priliyanto",
      'email': 'arif@gmail.com',
      'nohp': '+62 882-1710-2139',
      'foto': 'IMG_0301.jpg',
    },
  ];

  Konten({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    daftar.sort((a, b) => a["nama"].compareTo(b["nama"]));

    return ListView.builder(
      itemCount: daftar.length,
      itemBuilder: (BuildContext context, int index) {
        return Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
          color: Colors.white70,
          child: ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage('images/${daftar[index]["foto"]}'),
              radius: 30,
            ),
            title: Text(
              "${daftar[index]['nama']}",
              overflow: TextOverflow.ellipsis,
            ),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  daftar[index]['nohp'],
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.purple,
                  ),
                ),
                Text(
                  "${daftar[index]['email']}",
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.brown.shade300,
                  ),
                ),
              ],
            ),
            isThreeLine: true,
          ),
        );
      },
    );
  }
}
