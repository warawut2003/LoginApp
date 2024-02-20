import 'package:flutter/material.dart';
import 'main.dart';

class HomeScreen extends StatelessWidget {
  final String username;
  final String password;

  const HomeScreen({Key? key, required this.username, required this.password})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Welcome, $username'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/image/checked.png',
              width: 200,
            ),
            const SizedBox(height: 15),
            Text(
              ' Welcome to Application',
              style: TextStyle(
                  fontSize: 24,
                  color: const Color.fromARGB(255, 0, 156, 5),
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            Text(
              'User : $username',
              style: TextStyle(
                  fontSize: 20, color: Color.fromARGB(255, 0, 125, 156)),
            ),
            const SizedBox(height: 5),
            Text(
              'Password : $password',
              style: TextStyle(
                  fontSize: 20, color: Color.fromARGB(255, 1, 143, 179)),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => LoginApp(),
                  ),
                );
              },
              child: Text('Logout'),
              style: ElevatedButton.styleFrom(
                primary: Colors.red,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
