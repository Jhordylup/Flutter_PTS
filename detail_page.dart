import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 37, 80, 144),
        title: const Text("My Projects"),
      ),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          const Text(
            "Project Portfolio",
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Color(0xFF0A192F),
            ),
          ),
          const SizedBox(height: 20),
          Card(
            elevation: 3,
            child: ListTile(
              leading: Image.asset("assets/images/web finapp.png", width: 50),
              title: const Text("Finapp Website"),
              subtitle: const Text("Project website kelulusan kelas 11"),
            ),
          ),
          Card(
            elevation: 3,
            child: ListTile(
              leading: Image.asset("assets/images/game.png", width: 50),
              title: const Text("Crossantara Game"),
              subtitle: const Text("Project game kelulusan kelas 10"),
            ),
          ),
          Card(
            elevation: 3,
            child: ListTile(
              leading: Image.asset("assets/images/web desa.png", width: 50),
              title: const Text("Web Desa Kemudo"),
              subtitle: const Text("Project web semasa PRAKERIN di Jogja"),
            ),
          ),
        ],
      ),
    );
  }
}
