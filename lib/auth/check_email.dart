import 'package:flutter/material.dart';
import 'package:suplipar/auth/sign_up_screen.dart';
import 'package:suplipar/auth/login_screen.dart';
import 'package:suplipar/auth/sucessfull_screen.dart';
import 'package:suplipar/widgets/dark_button.dart';


class CheckYourEmail extends StatelessWidget {
  const CheckYourEmail({super.key});

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
                "Check Your Email",
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
                child: const Column(
                  children: [
                    Text(
                      "We have sent the reset password to the email address",
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.grey),
                    ),
                    Text(
                      "brandonelouis@gmial.com",
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color.fromARGB(255, 29, 28, 28),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 10),
              Image.asset(
                'assets/images/sucessfull_login.png',
                width: 300,
              ),
              const SizedBox(height: 40),
              const SizedBox(height: 10),
              DarkButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) =>const SucessFullyLogin()),
                  );
                },
                text: "OPEN YOUR EMAIL",
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
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("You have not received the email?"),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SignUpScreen()),
                      );
                    },
                    child: Text(
                      "Resend",
                      style: TextStyle(
                        color: Colors.amber[900],
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
