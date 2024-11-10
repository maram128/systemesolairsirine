import 'package:flutter/material.dart';
import 'package:projetttt/acceuil.dart'; // Importez votre page d'accueil ici
import 'package:projetttt/AboutPage.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'تسجيل الدخول',
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
                'user@example.com',
                style: TextStyle(color: Colors.white),
              ),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.purple,
                child: Icon(Icons.person, size: 50, color: Colors.white),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.home, color: Colors.purple),
              title: const Text('الرئيسية'),
              onTap: () {
                Navigator.pop(context);
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
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const AboutPage()),
                );
              },
            ),
          ],
        ),
      ),
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/back.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Center(
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(16.0),
              child: Card(
                elevation: 8,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const SizedBox(height: 20),
                      TextField(
                        controller: _emailController,
                        decoration: InputDecoration(
                          labelText: 'البريد الإلكتروني',
                          prefixIcon: const Icon(Icons.email),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                      ),
                      const SizedBox(height: 16),
                      TextField(
                        controller: _passwordController,
                        obscureText: true,
                        decoration: InputDecoration(
                          labelText: 'كلمة المرور',
                          prefixIcon: const Icon(Icons.lock),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),
                      ElevatedButton(
                        onPressed: () {
                          // Vérification de l'email et du mot de passe
                          if (_emailController.text == 'cyrineboujarra@gmail.com' &&
                              _passwordController.text == '1234') {
                            // Si les identifiants sont corrects, naviguer vers la page d'accueil
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const AccueilPage()),
                            );
                          } else {
                            // Si les identifiants sont incorrects, afficher un message d'erreur
                            showDialog(
                              context: context,
                              builder: (context) => AlertDialog(
                                title: const Text('Erreur de connexion'),
                                content: const Text('L\'email ou le mot de passe est incorrect.'),
                                actions: [
                                  TextButton(
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    child: const Text('OK'),
                                  ),
                                ],
                              ),
                            );
                          }
                        },
                        style: ElevatedButton.styleFrom(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 40, vertical: 15),
                          backgroundColor: Colors.purple,
                        ),
                        child: const Text(
                          'تسجيل الدخول',
                          style: TextStyle(fontSize: 18),
                        ),
                      ),
                      const SizedBox(height: 10),
                      TextButton(
                        onPressed: () {
                          // Logique pour aller à la page d'inscription ou de récupération de mot de passe
                        },
                        child: const Text(
                          'هل نسيت كلمة المرور؟',
                          style: TextStyle(color: Colors.purple),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
