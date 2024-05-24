import 'package:flutter/material.dart';
import 'package:suplipar/auth/forget_password.dart';
import 'package:suplipar/auth/sign_up_screen.dart';

// ignore: must_be_immutable
class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  TextEditingController emailcontroller = TextEditingController();
  TextEditingController passwordController = TextEditingController();

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
              "Welcome Back",
              style: TextStyle(
                  color: Color.fromARGB(255, 40, 40, 40),
                  fontWeight: FontWeight.bold,
                  fontSize: 35),
            ),
            const SizedBox(
              height: 12,
            ),
            Container(
              width: 285,
              margin: const EdgeInsets.symmetric(horizontal: 23),
              child: const Text(
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor",
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.grey),
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            _buildEmailSection(context),
           const SizedBox(
              height: 15,
            ),
            _buildPasswordSection(context),
            Align(
              alignment: Alignment.centerRight,
              child: TextButton(onPressed: (){
                 Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ForgetPasswordScreen()),
                  );
              }, child: const Text(
                "Forget Password ? ",
                style: TextStyle(color: Colors.blueGrey,fontWeight: FontWeight.w800,fontSize: 15),
              ),)
            ),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              width: 280,
              height: 60, 
              child: ElevatedButton(
                  onPressed: () {},
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
                  child: const Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("LOGIN",style: TextStyle(color: const Color.fromARGB(255, 255, 255, 255),fontSize: 16),)
                    ],
                  )),
            ),
            const SizedBox(height: 25,),
            SizedBox(
              width: 280,
              height: 60,
              child: ElevatedButton(
                  onPressed: () {},
                  style: ButtonStyle(
                    elevation: MaterialStateProperty.all(0),
                    backgroundColor: MaterialStateProperty.all(
                      const Color.fromARGB(255, 219, 218, 218),
                    ),
                    shape: MaterialStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/images/google_icon.png',
                        width: 20,
                      ),
                      const SizedBox(width: 10,),
                      Text("SIGN IN WITH GOOGLE",style: TextStyle(color: Colors.blue[900],fontSize: 16),)
                    ],
                  )),
            ),
            SizedBox(height: 5,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("You don't have an account yet ?"),
                    TextButton(onPressed: (){
                      Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SignUpScreen()),
                  );
                    }, child: Text("Sign Up",style: TextStyle(color: Colors.amber[900],fontWeight: FontWeight.w600),))
                  ],
                )
          ],
        ),
      ),
    ));
  }



//------- sections -----
  Widget _buildEmailSection(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 8),
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
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 8),
              child: TextFormField(
                controller: emailcontroller,
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
        ));
  }

//------- sections -----
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
          const SizedBox(
            height: 9,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 8),
            child: TextFormField(
              controller: passwordController,
              decoration: InputDecoration(
                hintText: "password",
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
}
