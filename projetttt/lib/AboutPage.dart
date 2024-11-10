import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('حول التطبيق'),
        backgroundColor: const Color.fromARGB(255, 160, 49, 184),
      ),
      body: Stack(
        children: [
          // Background image
          Positioned.fill(
            child: Image.asset(
              'assets/images/back.jpg', // Assurez-vous que l'image est dans le dossier assets/images
              fit: BoxFit.cover,
              color: Colors.black.withOpacity(0.3),
              colorBlendMode: BlendMode.darken,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 60,
                  backgroundColor: Colors.transparent,
                  backgroundImage: const AssetImage('assets/images/logo.png'), // Votre logo
                ),
                const SizedBox(height: 20),
                const Text(
                  'تطبيق النظام الشمسي',
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 165, 132, 197),
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 10),
                const Text(
                  'مرحبًا بكم في تطبيقنا المصمم لاكتشاف النظام الشمسي بطريقة ممتعة وسهلة!',
                  style: TextStyle(
                    fontSize: 18,
                    color: Color.fromRGBO(255, 250, 250, 1),
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 20),
                const Text(
                  'هذا التطبيق يهدف إلى تقديم معلومات شاملة عن الكواكب والنجوم وأجرام السماء الأخرى. يمكن للمستخدمين استكشاف المعلومات المرئية والتفاعلية التي تساعد في فهم النظام الشمسي بشكل أفضل.',
                  style: TextStyle(
                    fontSize: 16,
                    color: Color.fromRGBO(255, 255, 255, 0.867),
                  ),
                  textAlign: TextAlign.justify,
                ),
                const SizedBox(height: 20),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 170, 26, 189),
                    padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                  ),
                  onPressed: () {
                    Navigator.pop(context); // Retourne à la page précédente
                  },
                  child: const Text(
                    'عودة',
                    style: TextStyle(fontSize: 18, color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
