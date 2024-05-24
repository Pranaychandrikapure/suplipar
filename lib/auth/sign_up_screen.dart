import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:suplipar/auth/login_screen.dart';
import 'package:suplipar/pages/profile_page.dart';

// ignore: must_be_immutable
class SignUpScreen extends StatelessWidget {
  SignUpScreen({super.key});

  TextEditingController fullNameController = TextEditingController();

  TextEditingController emailcontroller = TextEditingController();

  TextEditingController email1Controller = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  TextEditingController password1Controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
          width: double.maxFinite,
          padding: const EdgeInsets.symmetric(
            horizontal: 26,
            vertical: 20,
          ),
          child: SingleChildScrollView(
            // Added SingleChildScrollView here
            child: Column(
              children: [
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Create an Account",
                  style: TextStyle(
                      color: const Color.fromARGB(255, 40, 40, 40),
                      fontWeight: FontWeight.bold,
                      fontSize: 30),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  width: 285,
                  margin: EdgeInsets.symmetric(horizontal: 18),
                  child: Text(
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor",
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 13, color: Colors.grey[700]),
                  ),
                ),
                SizedBox(height: 20),
                _buildFullNameSection(context),
                SizedBox(
                  height: 10,
                ),
                _buildEmailSection(context),
                SizedBox(
                  height: 10,
                ),
                _buildEmailSection2(context),
                SizedBox(
                  height: 10,
                ),
                _buildPasswordSection(context),
                SizedBox(
                  height: 10,
                ),
                _buildPasswordSection2(context),
                SizedBox(
                  height: 20,
                ),
                SizedBox(
                  width: 280, // Set the width of the button
                  height: 60, // Set the height of the button
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ProfilePage()),
                  );
                    },
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                        const Color.fromARGB(255, 46, 58, 66),
                      ),
                      shape: MaterialStateProperty.all(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                    ),
                    child: const Text(
                      'SIGN UP',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                SizedBox(height: 5,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("You have an account?"),
                    TextButton(onPressed: (){
                      Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LoginScreen()),
                  );
                    }, child: Text("Sign in",style: TextStyle(color: Colors.amber[900],fontWeight: FontWeight.w600),))
                  ],
                )
                
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildFullNameSection(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Full name",
            style: TextStyle(color: Color.fromARGB(255, 149, 149, 149),fontWeight: FontWeight.w500),
          ),
          const SizedBox(height: 10),
          TextFormField(
            controller: fullNameController,
            decoration: InputDecoration(
              hintText: "Brandone Louis",
              focusColor: Colors.amber,
              filled: true, // Enable filling the background
              fillColor: Color.fromARGB(255, 241, 241, 241), // Background color
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8.0), // Rounded corners
                borderSide: BorderSide.none, // No border
              ),
            ),
            style: const TextStyle(color: Colors.white),
          ),
        ],
      ),
    );
  }

  /// Section Widget

  Widget _buildEmailSection(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.only(left: 0),
            child: Text(
              "Mobile No.",
              style: TextStyle(color: Color.fromARGB(255, 149, 149, 149),fontWeight: FontWeight.w500),
            ),
          ),
          SizedBox(height: 10),
          Padding(
            padding: EdgeInsets.only(left: 0),
            child: TextFormField(
              controller: emailcontroller,
              decoration: InputDecoration(
                hintText: "+91 0000000000",
                focusColor: Colors.amber,
                filled: true, // Enable filling the background
                fillColor:
                    Color.fromARGB(255, 241, 241, 241), // Background color
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0), // Rounded corners
                  borderSide: BorderSide.none, // No border
                ),
              ),
              style: const TextStyle(
                  color: Colors.white), // Text color for better contrast
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget

  Widget _buildEmailSection2(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.only(left: 0),
            child: Text("Email", style: TextStyle(color: Color.fromARGB(255, 149, 149, 149),fontWeight: FontWeight.w500),),
          ),
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.only(left: 1),
            child: TextFormField(
              controller: email1Controller,
              decoration: InputDecoration(
                hintText: "example@gmail.com",
                focusColor: Colors.amber,
                filled: true, // Enable filling the background
                fillColor:
                    Color.fromARGB(255, 241, 241, 241), // Background color
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0), // Rounded corners
                  borderSide: BorderSide.none, // No border
                ),
              ),
              style: const TextStyle(
                  color: Colors.white), // Text color for better contrast
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildPasswordSection(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Password", style: TextStyle(color: Color.fromARGB(255, 149, 149, 149),fontWeight: FontWeight.w500),),
          SizedBox(height: 10),
          TextFormField(
            controller: passwordController,
            decoration: InputDecoration(
              hintText: "password",
              focusColor: Colors.amber,
              filled: true, // Enable filling the background
              fillColor: Color.fromARGB(255, 241, 241, 241), // Background color
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8.0), // Rounded corners
                borderSide: BorderSide.none, // No border
              ),
            ),
            style: const TextStyle(
                color: Colors.white), // Text color for better contrast
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildPasswordSection2(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.only(left: 1),
            child: Text(
              "Verify Password",
              style: TextStyle(color: Color.fromARGB(255, 149, 149, 149),fontWeight: FontWeight.w500),
            ),
          ),
          SizedBox(height: 9),
          Padding(
            padding: EdgeInsets.only(left: 1),
            child: TextFormField(
              controller: password1Controller,
              decoration: InputDecoration(
                hintText: "verify password",
                focusColor: Colors.amber,
                filled: true, // Enable filling the background
                fillColor:
                    Color.fromARGB(255, 241, 241, 241), // Background color
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0), // Rounded corners
                  borderSide: BorderSide.none, // No border
                ),
              ),
              style: const TextStyle(
                  color: Colors.white), // Text color for better contrast
            ),
          ),
        ],
      ),
    );
  }
}
