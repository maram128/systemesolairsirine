import 'package:flutter/material.dart';
import 'planet_card.dart';

class PlanetsPage extends StatelessWidget {
  const PlanetsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'الكواكب',
          style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.deepPurple,
        centerTitle: true,
        elevation: 5,
        shadowColor: Colors.black45,
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.deepPurple, Colors.black87],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 15),
          child: ListView(
            physics: const BouncingScrollPhysics(),
            children: [
              PlanetCard(
                icon: Icons.emoji_objects_rounded,
                planetName: 'عطارد',
                description: 'عطارد هو أقرب كوكب إلى الشمس وعالم صخري.',
                imagePath: 'assets/images/out.jpg', // Image de la planète
              ),
              PlanetCard(
                icon: Icons.lightbulb_rounded,
                planetName: 'الزهرة',
                description: 'الزهرة هو الكوكب الثاني من الشمس، معروف بسطوعه.',
                imagePath: 'assets/images/zahra.jpg', // Image de la planète
              ),
              PlanetCard(
                icon: Icons.public_rounded,
                planetName: 'الأرض',
                description: 'الأرض هي الكوكب الثالث من الشمس وموطن البشرية.',
                imagePath: 'assets/images/ard.jpg', // Image de la planète
              ),
              PlanetCard(
                icon: Icons.rocket_rounded,
                planetName: 'المريخ',
                description: 'المريخ هو الكوكب الرابع ويُعرف بالكوكب الأحمر.',
                imagePath: 'assets/images/Mars.jpg', // Image de la planète
              ),
              PlanetCard(
                icon: Icons.circle_rounded,
                planetName: 'المشتري',
                description: 'المشتري هو أكبر كوكب في النظام الشمسي.',
                imagePath: 'assets/images/muchtari.jpg', // Image de la planète
              ),
              PlanetCard(
                icon: Icons.ring_volume_rounded,
                planetName: 'زحل',
                description: 'زحل مشهور بحلقاته الجميلة.',
                imagePath: 'assets/images/Zuhal.jpg', // Image de la planète
              ),
              PlanetCard(
                icon: Icons.ac_unit_rounded,
                planetName: 'أورانوس',
                description: 'أورانوس هو الكوكب السابع وله لون أزرق فاتح.',
                imagePath: 'assets/images/Uranus.jpg', // Image de la planète
              ),
              PlanetCard(
                icon: Icons.water_rounded,
                planetName: 'نبتون',
                description: 'نبتون هو الكوكب الثامن والأبعد عن الشمس.',
                imagePath: 'assets/images/Neptun.png', // Image de la planète
              ),
            ],
          ),
        ),
      ),
    );
  }
}
