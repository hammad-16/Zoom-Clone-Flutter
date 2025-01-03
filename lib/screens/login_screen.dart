import 'package:flutter/material.dart';
import 'package:newzoomclone/resources/auth_methods.dart';
import 'package:newzoomclone/widget/custom_button.dart';
class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final AuthMethods _authMethods = AuthMethods();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text("Start or join a meeting",
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),),
          const SizedBox(height: 30,),
          Image.asset('assets/images/onboarding.jpg'),
          const SizedBox(height: 30,),
          CustomButton(text: "Login",
            onPressed: () async{
              bool res = await _authMethods.signInWithGoogle(context) ;
              if(res)
              {
                Navigator.pushNamed(context, '/home');
              }
            },
          )
        ],
      ),
    );
  }
}