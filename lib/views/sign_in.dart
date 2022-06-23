import 'package:flutter/material.dart';
import '../constants.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController numberController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(width * 0.09),
        child: Column(
          children: [
            Text(
              'To You',
              style: TextStyle(fontFamily: 'Poppins', fontSize: height * 0.05),
            ),
            Textfield0(controller: nameController),
            Textfield0(controller: emailController),
            Textfield0(controller: numberController),
          ],
        ),
      ),
    );
  }
}
