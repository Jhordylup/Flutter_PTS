import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Color.fromARGB(255, 37, 80, 144), Color(0xFF112D4E)],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: SafeArea(
          child: Stack(
            children: [
              // 🔹 Konten utama
              SingleChildScrollView(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SizedBox(height: 50), // spasi biar ga ketutup back btn
                    const CircleAvatar(
                      radius: 60,
                      backgroundImage: AssetImage("assets/images/Bluence.png"),
                    ),
                    const SizedBox(height: 20),
                    const Text(
                      "JAY",
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(height: 8),
                    const Text(
                      "Founder of Bluence | AI & Robotics Enthusiast",
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.white70,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 30),

                    // 🔹 Card About Me
                    Card(
                      elevation: 6,
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15)),
                      child: Padding(
                        padding: const EdgeInsets.all(20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              "About Me",
                              style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF0A192F),
                              ),
                            ),
                            SizedBox(height: 10),
                            Text(
                              "Seorang siswa kelas 12 yang fokus di bidang AI dan Robotik. "
                              "Founder dari Bluence, bercita-cita membangun solusi teknologi masa depan "
                              "dan menginspirasi anak muda untuk berinovasi.",
                              style: TextStyle(fontSize: 16, height: 1.5),
                            ),
                          ],
                        ),
                      ),
                    ),

                    const SizedBox(height: 20),

                    // 🔹 Card Kontak / Sosial
                    Card(
                      elevation: 6,
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15)),
                      child: Padding(
                        padding: const EdgeInsets.all(20),
                        child: Column(
                          children: const [
                            ListTile(
                              leading: Icon(Icons.email, color: Colors.blue),
                              title: Text("ecen2503@gmail.com"),
                            ),
                            Divider(),
                            ListTile(
                              leading: Icon(Icons.work, color: Colors.blue),
                              title: Text("Founder of Bluence"),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              // 🔹 Custom Back Button
              Positioned(
                top: 10,
                left: 10,
                child: IconButton(
                  icon: const Icon(Icons.arrow_back, color: Colors.white),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
