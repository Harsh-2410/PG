import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:pg_finder/components/my_textfield.dart';
import 'package:pg_finder/components/my_button.dart';


class ForgotPasswordScreen extends StatefulWidget {
  const ForgotPasswordScreen({super.key});

  @override
  State<ForgotPasswordScreen> createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {

  final emailController = TextEditingController();
  final authController= FirebaseAuth.instance;

  //error message to user
    void showErrorMessage(String message){
      showDialog(
        context: context,
        builder: (context){
          return AlertDialog(
            backgroundColor: Colors.grey[600],
            title: Center(
              child: Text(
                message,
                style: const TextStyle(color: Colors.white),
              ),
            ),
          );
        },
      );
    }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        backgroundColor: Colors.grey[300],
        body: SafeArea(
            child: Center(
            child: SingleChildScrollView(
            child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
            const SizedBox(height: 25),

                // logo
                const Icon(
                  Icons.lock,
                  size: 50,
                ),

                const SizedBox(height: 25),

                // Reset your password
                Text(
                  'Reset Your Password',
                  style: TextStyle(
                    color: Colors.grey[700],
                    fontSize: 16,
                  ),
                ),

                const SizedBox(height: 25),

                // email textfield
                MyTextField(
                  controller: emailController,
                  hintText: 'Email ID',
                  obscureText: false,
                ),
              const SizedBox(height: 25),

              // Reset password in button
              MyButton(
                  text: "Reset Password",
                  onTap: (){
                    authController.sendPasswordResetEmail(email: emailController.text.toString()).then((value) {
                      showErrorMessage('We have sent you email to recover password, please check your email');
                    }).onError((error, stackTrace) {
                        showErrorMessage(error.toString());
                    });
                  })
            ],
            ),
            ),
        ),
    ),
    );
  }
}


