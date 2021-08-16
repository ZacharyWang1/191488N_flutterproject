import 'package:firebase_firestoreapp/screens/homepage.dart';
import 'package:flutter/material.dart';
import 'package:firebase_firestoreapp/services/firebaseauth_service.dart';
// import 'package:firebase_firestoreapp/screens/home_page.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  //Controllers for email and password textfields.
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  bool signUp = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //hide back arrow button
        automaticallyImplyLeading: false,
        title: Text('Firebase FireStore App'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: TextField(
              controller: emailController,
              decoration: InputDecoration(
                labelText: "Email",
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: TextField(
              controller: passwordController,
              obscureText: true,
              decoration: InputDecoration(
                labelText: "password",
              ),
            ),
          ),
          //Sign in /Sign up button
          RaisedButton(
            onPressed: () async {
              if (signUp) {
                var newUser = await FirebaseAuthService().signUp(
                  email: emailController.text.trim(),
                  password: passwordController.text.trim(),
                );
                if (newUser != null) {
                  Navigator.of(context).pushReplacement(
                      MaterialPageRoute(builder: (context) => HomeScreen()));
                }
              } else {
                var reguser = await FirebaseAuthService().signIn(
                    email: emailController.text.trim(),
                    password: passwordController.text.trim());
                if (reguser != null) {
                  Navigator.of(context).pushReplacement(
                      MaterialPageRoute(builder: (context) => HomeScreen()));
                }
              }
            },
            child: signUp ? Text("Sign Up") : Text("Sign In"),
          ),
          //Sign Up/Sign In toggler
          OutlineButton(
            onPressed: () {
              setState(() {
                signUp = !signUp;
              });
            },
            child: signUp
                ? Text("Have an account? Sign In")
                : Text("Create an Account"),
          )
        ],
      ),
    );
  } //build
} //_loginPageState
