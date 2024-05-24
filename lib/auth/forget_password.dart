import 'package:flutter/material.dart';
import 'package:suplipar/auth/check_email.dart';
import 'package:suplipar/auth/login_screen.dart';
import 'package:suplipar/widgets/dark_button.dart';

class ForgetPasswordScreen extends StatelessWidget {
  ForgetPasswordScreen({super.key});

  TextEditingController emailcontroller = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController mobileNumberController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        resizeToAvoidBottomInset: false,
        body: Container(
          width: double.maxFinite,
          padding: const EdgeInsets.only(left: 21, right: 21, top: 30),
          child: Column(
            children: [
              const Text(
                "Forgot Password?",
                style: TextStyle(
                  color: Color.fromARGB(255, 40, 40, 40),
                  fontWeight: FontWeight.bold,
                  fontSize: 35,
                ),
              ),
              const SizedBox(height: 12),
              Container(
                width: 300,
                margin: const EdgeInsets.symmetric(horizontal: 23),
                child: const Text(
                  "To reset your password, you need your email or mobile number that can be authenticated",
                  maxLines: 3,
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.grey),
                ),
              ),
              const SizedBox(height: 10),
              Image.asset(
                'assets/images/forget_password.png',
                width: 190,
              ),
              const SizedBox(height: 10),
              _buildEmailSection(context),
              const SizedBox(height: 15),
              _buildPasswordSection(context),
              const SizedBox(height: 15),
              _buildMobileNumber(context),
              const SizedBox(height: 20),
              DarkButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const CheckYourEmail()),
                  );
                },
                text: "LOGIN",
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
                backgroundColor: const Color.fromARGB(255, 234, 233, 233),
                textColor: const Color.fromARGB(255, 120, 120, 121),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildMobileNumber(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.only(left: 3),
            child: Text(
              "Mobile No.",
              style: TextStyle(),
            ),
          ),
          const SizedBox(height: 9),
          Padding(
            padding: const EdgeInsets.only(right: 8),
            child: TextFormField(
              controller: mobileNumberController,
              decoration: InputDecoration(
                hintText: "+91 0000000000",
                focusColor: Colors.amber,
                filled: true, // Enable filling the background
                fillColor: const Color.fromARGB(255, 241, 241, 241), // Background color
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0), // Rounded corners
                  borderSide: BorderSide.none, // No border
                ),
              ),
              style: const TextStyle(
                color: Colors.black, // Text color for better contrast
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildEmailSection(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.only(left: 3),
            child: Text(
              "Email",
              style: TextStyle(),
            ),
          ),
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.only(right: 8),
            child: TextFormField(
              controller: emailcontroller,
              decoration: InputDecoration(
                hintText: "example@gmail.com",
                focusColor: Colors.amber,
                filled: true, // Enable filling the background
                fillColor: const Color.fromARGB(255, 241, 241, 241), // Background color
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0), // Rounded corners
                  borderSide: BorderSide.none, // No border
                ),
              ),
              style: const TextStyle(
                color: Colors.black, // Text color for better contrast
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildPasswordSection(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.only(left: 3),
            child: Text(
              "Password",
              style: TextStyle(),
            ),
          ),
          const SizedBox(height: 9),
          Padding(
            padding: const EdgeInsets.only(right: 8),
            child: TextFormField(
              controller: passwordController,
              decoration: InputDecoration(
                hintText: "password",
                focusColor: Colors.amber,
                filled: true, // Enable filling the background
                fillColor: const Color.fromARGB(255, 241, 241, 241), // Background color
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0), // Rounded corners
                  borderSide: BorderSide.none, // No border
                ),
              ),
              style: const TextStyle(
                color: Colors.black, // Text color for better contrast
              ),
            ),
          ),
        ],
      ),
    );
  }
}
