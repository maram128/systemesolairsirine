import 'package:flutter/material.dart';

class PlanetCard extends StatelessWidget {
  final IconData icon;
  final String planetName;
  final String description;
  final String imagePath;

  const PlanetCard({
    Key? key,
    required this.icon,
    required this.planetName,
    required this.description,
    required this.imagePath,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          PageRouteBuilder(
            pageBuilder: (context, animation, secondaryAnimation) =>
                PlanetDetailsPage(
              imagePath: imagePath,
              planetName: planetName,
              description: description,
            ),
            transitionsBuilder:
                (context, animation, secondaryAnimation, child) {
              return FadeTransition(
                opacity: animation,
                child: ScaleTransition(
                  scale: Tween<double>(begin: 0.9, end: 1.0).animate(animation),
                  child: child,
                ),
              );
            },
          ),
        );
      },
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 10),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.purple.shade800, Colors.deepPurple.shade700],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.5),
              spreadRadius: 1,
              blurRadius: 8,
              offset: const Offset(0, 4),
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Row(
            children: [
              CircleAvatar(
                radius: 30,
                backgroundImage: AssetImage(imagePath),
              ),
              const SizedBox(width: 20),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      planetName,
                      style: const TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(height: 5),
                    Text(
                      description,
                      style:
                          const TextStyle(color: Colors.white70, fontSize: 16),
                    ),
                  ],
                ),
              ),
              const Icon(Icons.arrow_forward_ios, color: Colors.white),
            ],
          ),
        ),
      ),
    );
  }
}

class PlanetDetailsPage extends StatelessWidget {
  final String imagePath;
  final String planetName;
  final String description;

  const PlanetDetailsPage({
    Key? key,
    required this.imagePath,
    required this.planetName,
    required this.description,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          planetName,
          style: const TextStyle(
              fontFamily: 'NotoSansArabic', color: Colors.white),
        ),
        backgroundColor: const Color.fromARGB(255, 161, 28, 209),
      ),
      body: Stack(
        children: [
          // Background image across the entire page
          Positioned.fill(
            child: Image.asset(
              'assets/images/back.jpg',
              fit: BoxFit.cover,
              color: const Color.fromARGB(255, 148, 37, 158).withOpacity(0.3),
              colorBlendMode: BlendMode.darken,
            ),
          ),
          SingleChildScrollView(
            child: Column(
              children: [
                Hero(
                  tag: planetName,
                  child: Image.asset(
                    imagePath,
                    height: 300,
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(height: 20),
                Text(
                  planetName,
                  style: const TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 226, 163, 232),
                  ),
                ),
                const SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Text(
                    description,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontSize: 18,
                      height: 1.5,
                      color: Colors.white,
                      fontFamily: 'NotoSansArabic',
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.all(16),
                  child: Text(
                    '                                                                                                                                                                                                           النظام الشمسي هو النظام الذي يضم الشمس وجميع الأجرام السماوية التي تدور حولها مثل الكواكب والأقمار والكويكبات والنيازك. يبعث هذا النظام على الإعجاب بتركيبته المعقدة والتوازن المذهل بين الأجرام السماوية. الشمس، مركز النظام الشمسي، هي النجم الذي يوفر الطاقة والحياة للكواكب التابعة له، بما في ذلك كوكب الأرض. استكشاف هذا النظام يمنحنا فهماً أعمق للكون والحياة التي نعيشها. كل كوكب في هذا النظام يمتلك خصائص فريدة تجعله مميزًا، وتستحق كل كوكب دراسة وتفحصًا خاصًا.',
                    textAlign: TextAlign.center,                                                                                                                                                        
                    style: const TextStyle(
                      fontSize: 16,
                      color: Colors.white70,
                      fontFamily: 'NotoSansArabic',
                    ),
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
