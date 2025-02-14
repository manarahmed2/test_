import 'package:app_task3/Screens/secondPage.dart';
import 'package:flutter/material.dart';

class ButtonsignIn extends StatelessWidget {
  const ButtonsignIn({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) {
              return PolloStorePage();
            }),
          );
        },
        child: Container(
          width: 250,
          height: 50,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              gradient: LinearGradient(
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                  colors: [
                    Colors.pink,
                    const Color.fromARGB(255, 4, 57, 101)
                  ])),
          child: Center(
              child: Text("Sign in",
                  style: TextStyle(fontSize: 20, color: Colors.white))),
        ),
      ),
    );
  }
}
