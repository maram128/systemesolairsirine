import 'package:flutter/material.dart';

class StarsPage extends StatelessWidget {
  const StarsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('النجوم'),
        backgroundColor: const Color.fromARGB(255, 174, 88, 194),
      ),
      body: Stack(
        children: [
          // Background image
          Positioned.fill(
            child: Image.asset(
              'assets/images/back.jpg', // Assurez-vous que l'image est dans le bon dossier
              fit: BoxFit.cover,
              color: Colors.black.withOpacity(0.3),
              colorBlendMode: BlendMode.darken,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: GridView.count(
              crossAxisCount: 2,
              childAspectRatio: 0.75,
              children: List.generate(stars.length, (index) {
                return _buildStarCard(stars[index]);
              }),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildStarCard(Star star) {
    return Card(
      elevation: 8,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      color: const Color.fromARGB(255, 240, 230, 250).withOpacity(0.8),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.vertical(top: Radius.circular(16)),
            child: Image.asset(
              star.imagePath,
              height: 100,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            star.name,
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(255, 85, 26, 139),
            ),
          ),
          const SizedBox(height: 4),
          Text(
            star.description,
            style: const TextStyle(
              fontSize: 14,
              color: Colors.black54,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 10),
          const Icon(
            Icons.star,
            color: Color.fromARGB(255, 181, 7, 255),
            size: 30,
          ),
        ],
      ),
    );
  }
}

class Star {
  final String name;
  final String description;
  final String imagePath;

  Star({
    required this.name,
    required this.description,
    required this.imagePath,
  });
}

final List<Star> stars = [
  Star(
    name: 'الشمس',
    description: 'نجمة مركز نظامنا الشمسي.',
    imagePath: 'assets/images/sol.png',
  ),
  Star(
    name: 'سيريوس',
    description: 'ألمع نجمة في السماء.',
    imagePath: 'assets/images/sor.png',
  ),
  Star(
    name: 'ريجيولس',
    description: 'نجمة زرقاء في كوكبة الأسد.',
    imagePath: 'assets/images/reg.png',
  ),
  Star(
    name: 'أنتاريس',
    description: 'نجمة عملاقة حمراء في كوكبة العقرب.',
    imagePath: 'assets/images/antar.png',
  ),
];
