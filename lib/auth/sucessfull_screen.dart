import 'package:flutter/material.dart';
import 'package:suplipar/auth/sign_up_screen.dart';
import 'package:suplipar/auth/login_screen.dart';
import 'package:suplipar/widgets/dark_button.dart';


class SucessFullyLogin extends StatelessWidget {
  const SucessFullyLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        resizeToAvoidBottomInset: false,
        body: Container(
          width: double.maxFinite,
          padding: const EdgeInsets.only(left: 21, right: 21, top: 101),
          child: Column(
            children: [
              const Text(
                "Successfully",
                style: TextStyle(
                  color: Color.fromARGB(255, 40, 40, 40),
                  fontWeight: FontWeight.bold,
                  fontSize: 35,
                ),
              ),
              const SizedBox(height: 12),
              Container(
                width: 285,
                margin: const EdgeInsets.symmetric(horizontal: 23),
                child:const Text(
                      "Your password has been updated, please change your password regularly to avoid this happening",
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.grey),
                    ),
              ),
              const SizedBox(height: 10),
              Image.asset(
                'assets/images/email_check.png',
                width: 300,
              ),
              const SizedBox(height: 40),
              const SizedBox(height: 10),
              DarkButton(
                onPressed: () {
                  // Add the logic for opening the email app
                },
                text: "CONTINUE",
                backgroundColor: const Color.fromARGB(255, 46, 58, 66),
                textColor: Colors.white,
              ),
              const SizedBox(height: 25),
              DarkButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LoginScreen()),
                  );
                },
                text: "BACK TO LOGIN",
                backgroundColor: const Color.fromARGB(255, 219, 218, 218),
                textColor: const Color.fromARGB(255, 114, 114, 114),
              ),
              const SizedBox(height: 5),
               ],
          ),
        ),
      ),
    );
  }
}
