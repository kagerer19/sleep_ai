import 'package:flutter/material.dart';
import 'screens/home.dart';
import 'screens/login.dart';
import 'screens/register.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/screens/register.dart': (context) => RegisterPage(),
        '/screens/login.dart': (context) => LoginPage(),
        '/screens/home.dart': (context) => HomePage(),
      },
      title: "SleepAI",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Builder(
        builder: (context) => Stack(
          fit: StackFit.expand,
          children: [
            Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/bg-app.jpg"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            HomePage(),
          ],
        ),
      ),
    );
  }
}
