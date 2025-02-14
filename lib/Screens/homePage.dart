import 'package:app_task3/widgets/WaveClipper.dart';
import 'package:app_task3/widgets/buttonSignin.dart';
import 'package:app_task3/widgets/textField.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          ClipPath(
            clipper: WaveClipper(),
            child: Container(
              height: 200,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.pinkAccent, Colors.blueAccent],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, top: 200),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  RichText(
                    text: const TextSpan(
                      text: 'Sign ',
                      style: TextStyle(
                        fontSize: 30,
                        color: Colors.purple,
                        fontWeight: FontWeight.bold,
                      ),
                      children: <TextSpan>[
                        TextSpan(
                          text: 'in',
                          style: TextStyle(
                            fontSize: 30,
                            color: Colors.purpleAccent,
                            fontWeight: FontWeight.bold,
                          ),
                        )
                      ],
                    ),
                  ),
                  const Text(
                    "Sign in to Register Account",
                    style: TextStyle(
                        fontSize: 16, color: Color.fromARGB(255, 126, 43, 141)),
                  ),
                  Divider(
                    thickness: 3,
                    indent: 5,
                    endIndent: 300,
                    color: Colors.purple,
                  ),
                  const SizedBox(height: 30),
                  //email
                  TextfieldWidget(
                    labelText: 'Email',
                    hintText: 'Enter Your Email',
                    icon: Icons.email,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextfieldWidget(
                    labelText: 'Password',
                    hintText: 'Enter Your Password',
                    icon: Icons.visibility,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: const Text(
                        "Forgot password?",
                        style: TextStyle(
                            color: Colors.purple, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  ButtonsignIn(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text("Don't have an account?",
                          style: TextStyle(fontSize: 16)),
                      TextButton(
                        onPressed: () {},
                        child: const Text("Sign up",
                            style:
                                TextStyle(color: Colors.purple, fontSize: 16)),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Center(
                    child: const Text("Sign in with",
                        style: TextStyle(fontSize: 16, color: Colors.black)),
                  ),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: 50,
                        height: 50,
                        child: IconButton(
                          onPressed: () {},
                          icon: Image.asset('assets/google.jpeg'),
                          iconSize: 30,
                          padding: EdgeInsets.zero,
                        ),
                      ),
                      const SizedBox(width: 15),
                      SizedBox(
                        width: 70,
                        height: 70,
                        child: IconButton(
                          onPressed: () {},
                          icon: Image.asset('assets/facebook.jpeg'),
                          iconSize: 30,
                          padding: EdgeInsets.zero,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
