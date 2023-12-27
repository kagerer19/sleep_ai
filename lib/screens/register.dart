import 'package:flutter/material.dart';
import '../components/button.dart';
import '../components/square_tile.dart';
import '../components/textfield.dart';

class RegisterPage extends StatelessWidget {
  RegisterPage({super.key});

  // text editing controllers
  final usernameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  // Create user in method
  void createUser() {}

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Dismiss keyboard when tapped anywhere on the screen
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/bg-app.jpg"),
              fit: BoxFit.cover,
            ),
          ),
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(height: 20),
                  const SizedBox(height: 50),

                  // welcome back, you've been missed!
                  const Text(
                    'Welcome! Join us and start your journey.',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),

                  const SizedBox(height: 25),

                  // username textfield
                  MyTextField(
                    controller: emailController,
                    hintText: 'Email',
                    obscureText: false,
                  ),

                  const SizedBox(height: 10),

                  // password textfield
                  MyTextField(
                    controller: usernameController,
                    hintText: 'Full Name',
                    obscureText: true,
                  ),

                  const SizedBox(height: 10),

                  MyTextField(
                    controller: passwordController,
                    hintText: 'Password',
                    obscureText: true,
                  ),

                  const SizedBox(height: 10),

                  MyTextField(
                    controller: passwordController,
                    hintText: 'Re-type Password',
                    obscureText: true,
                  ),

                  const SizedBox(height: 20),

                  // sign in button
                  Column(
                    children: [
                      MyButton(
                        onTap: createUser,
                      ),
                      const SizedBox(height: 15), // Adjust the height as needed
                      InkWell(
                        onTap: () {
                          // Navigate to the registration page here
                          Navigator.pushNamed(context, '/screens/login.dart'); // Use your route name
                        },
                        child: const Text(
                          'Already have an account?',
                          style: TextStyle(
                            color: Colors.blue,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 50),

                  // or continue with
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25.0),
                    child: Row(
                      children: [
                        const Expanded(
                          child: Divider(
                            thickness: 0.5,
                            color: Colors.white,
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10.0),
                          child: Text(
                            'Or register with',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                        Expanded(
                          child: Divider(
                            thickness: 0.5,
                            color: Colors.grey[400],
                          ),
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(height: 20),

                  // google + apple sign in buttons
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // google button
                      SquareTile(imagePath: 'assets/icons/apple_icon.png'),

                      SizedBox(width: 15),

                      // apple button
                      SquareTile(imagePath: 'assets/icons/google_icon.png')
                    ],
                  ),

                  const SizedBox(height: 40),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
