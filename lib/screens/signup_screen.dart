import 'package:flutter/material.dart';

class SignupPage extends StatelessWidget {
  const SignupPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [SignUpDetails(), SignUpButton(), BackButton()],
          ),
        ),
      ),
    );
  }
}

class SignUpDetails extends StatelessWidget {
  const SignUpDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            Text(
              "SignUp",
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text("Please enter your details"),
            SizedBox(
              height: 70,
            ),
            TextField(
              cursorColor: Colors.black,
              decoration: InputDecoration(
                border: UnderlineInputBorder(),
                labelText: "Firstname",
                labelStyle: TextStyle(color: Colors.black),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.black),
                ),
              ),
            ),
            SizedBox(
              height: 16,
            ),
            TextField(
              cursorColor: Colors.black,
              decoration: InputDecoration(
                border: UnderlineInputBorder(),
                labelText: "Lastname",
                labelStyle: TextStyle(color: Colors.black),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.black),
                ),
              ),
            ),
            SizedBox(
              height: 16,
            ),
            TextField(
              cursorColor: Colors.black,
              decoration: InputDecoration(
                border: UnderlineInputBorder(),
                labelText: "Email",
                labelStyle: TextStyle(color: Colors.black),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.black),
                ),
              ),
            ),
            SizedBox(
              height: 16,
            )
          ],
        ),
      ),
    );
  }
}

class SignUpButton extends StatelessWidget {
  const SignUpButton({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 300,
      height: 40,
      child: MaterialButton(
        onPressed: () {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text("SignUp Processing"),
            ),
          );
        },
        color: Colors.black,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: const Text(
          "SignUp",
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}

class BackButton extends StatelessWidget {
  const BackButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(26.0),
      child: TextButton(
        onPressed: () {
          Navigator.pop(context);
        },
        child: const Text(
          "Go Back",
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
