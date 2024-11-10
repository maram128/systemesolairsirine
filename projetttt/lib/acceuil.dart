import 'package:flutter/material.dart';
import 'package:projetttt/PlanetsPage.dart';
import 'package:projetttt/AboutPage.dart';
import 'package:projetttt/StarsPage.dart';
import 'package:projetttt/LoginPage.dart';

class AccueilPage extends StatefulWidget {
  const AccueilPage({super.key});

  @override
  State<AccueilPage> createState() => _AccueilPageState();
}

class _AccueilPageState extends State<AccueilPage> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    const HomePage(),
    const PlanetsPage(),
    const StarsPage(),
    const AboutPage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'النظام الشمسي',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.purple,
        centerTitle: true,
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const UserAccountsDrawerHeader(
              decoration: BoxDecoration(color: Colors.purple),
              accountName: Text(
                'اسم المستخدم',
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
              accountEmail: Text(
                'cyrineboujarra@gmail.com',
                style: TextStyle(color: Colors.white),
              ),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.purple,
                child: Icon(Icons.person, size: 50, color: Colors.white),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.login, color: Colors.purple),
              title: const Text('تسجيل الدخول'),
              onTap: () {
                // Navigation vers la page de connexion
                Navigator.pop(context); // Fermer le Drawer
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const LoginPage()),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.logout, color: Colors.purple),
              title: const Text('تسجيل الخروج'),
              onTap: () {
                // Logique de déconnexion
                Navigator.pop(context); // Fermer le Drawer après la déconnexion
                // Rediriger vers la page de connexion ou mettre à jour l'état de l'application
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const AccueilPage()),
                );
              },
            ),
            const Divider(),
            ListTile(
              leading: const Icon(Icons.info, color: Colors.purple),
              title: const Text('حول التطبيق'),
              onTap: () {
                // Naviguer vers la page 'À propos'
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const AboutPage()),
                );
              },
            ),
          ],
        ),
      ),
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.purple,
        selectedItemColor: const Color.fromARGB(255, 172, 42, 181),
        unselectedItemColor: Colors.grey,
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'الرئيسية',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.public),
            label: 'الكواكب',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.star),
            label: 'النجوم',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.info),
            label: 'معلومات',
          ),
        ],
      ),
    );
  }
}

// Page d'accueil
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        image: const DecorationImage(
          image: AssetImage('assets/images/back.jpg'), // Chemin de l'image back.jpg
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          const Text(
            'مرحبا بكم في عالم النظام الشمسي',
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 20),
          const Text(
            'تعرف على النظام الشمسي والكواكب بطريقة ممتعة وسهلة',
            style: TextStyle(
              fontSize: 20,
              color: Colors.white70,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 40),
          SizedBox(
            height: 200,
            child: ClipOval(
              child: Image.asset(
                'assets/images/baa.png', // Utilisez ici l'image locale
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(height: 30),
        ElevatedButton.icon(
  style: ElevatedButton.styleFrom(
    padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
    backgroundColor: const Color.fromARGB(255, 179, 74, 211),
  ),
  onPressed: () {
    // Logique de navigation vers la page PlanetsPage
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const PlanetsPage()),
    );
  },
  icon: const Icon(Icons.explore),
  label: const Text(
    'ابدأ الاستكشاف',
    style: TextStyle(
      fontSize: 20,
      color: Colors.white,
    ),
  ),
)

        ],
      ),
    );
  }
}
