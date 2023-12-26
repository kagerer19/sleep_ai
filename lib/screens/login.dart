import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Dismiss the keyboard when tapped anywhere on the screen
        FocusScope.of(context).requestFocus(FocusNode());
      },
      child: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/bg-app.jpg"),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _header(),
              Align(
                alignment: Alignment.center,
                child: _inputField(),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _header() {
    return Container(
      margin: const EdgeInsets.only(bottom: 2), // Adjust the bottom margin
      child: const Padding(
        padding: EdgeInsets.all(6),
        child: Column(
          children: [
            Text(
              "Welcome Back!",
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            Text(
              "Enter your details to login!",
              style: TextStyle(color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }

  Widget _inputField() {
    return Column(
      children: [
        const SizedBox(height: 26),
        SizedBox(
          width: 300,
          child: TextField(
            decoration: InputDecoration(
              hintText: "Username",
              contentPadding:
              const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(9),
                borderSide: BorderSide.none,
              ),
              fillColor: Colors.white60,
              filled: true,
              prefixIcon: const Icon(Icons.person),
            ),
          ),
        ),
        const SizedBox(height: 16),
        SizedBox(
          width: 300,
          child: TextField(
            decoration: InputDecoration(
              hintText: "Password",
              contentPadding:
              const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(9),
                borderSide: BorderSide.none,
              ),
              fillColor: Colors.white60,
              filled: true,
              prefixIcon: const Icon(Icons.lock),
            ),
          ),
        ),
        const SizedBox(height: 30),
        Column(
          children: [
            SizedBox(
              width: 120,
              height: 50,
              child: ElevatedButton(
                onPressed: () {
                  // Handle login button press
                },
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(Colors.white54),
                ),
                child: const Text("Login"),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
