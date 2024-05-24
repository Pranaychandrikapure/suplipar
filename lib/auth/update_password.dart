import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:suplipar/pages/setting_page.dart';
import 'package:suplipar/widgets/dark_button.dart';

class UpadtePassword extends StatefulWidget {
   UpadtePassword({super.key,required
   this.passwordVisible});
     bool passwordVisible;

  @override
  State<UpadtePassword> createState() => _UpadtePasswordState();
}

class _UpadtePasswordState extends State<UpadtePassword> {
   TextEditingController oldPassword = TextEditingController();

   TextEditingController newPassword = TextEditingController();

   TextEditingController confrimPassword = TextEditingController();
   bool passwordVisible = true;

   void initState() {
    super.initState();
    passwordVisible = false; // Initially password is not visible
  }

  @override

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Container(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 35),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              SvgPicture.asset('assets/svg/menu.svg',
                  width: 30, color: Colors.black),
            ],
          ),
        ),
      ),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            
            children: [
              _buildOldPassword(context),
              SizedBox(height: 20,),
              _buildNewPassword(context),
              SizedBox(height: 20,),
              _buildConfrimPassword(context),
              SizedBox(height: 50,),
              DarkButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>SettingPage()));
              }, text: 'UPDATE', backgroundColor: Color.fromARGB(255, 46, 58, 66), textColor: Colors.white)
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildOldPassword(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.only(left: 3),
            child: Text(
              "Old Password",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700, color: Color.fromARGB(255, 95, 92, 92)),
            ),
          ),
          const SizedBox(
            height: 9,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 8),
            child: TextFormField(
              controller: oldPassword,
              obscureText:true, // This is where the password visibility is toggled
              decoration: InputDecoration(
                hintText: "old password",
                hintStyle: TextStyle(color: Colors.grey),
                focusColor: Colors.amber,
                filled: true, 
                fillColor: Color.fromARGB(255, 241, 241, 241), // Background color
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0), // Rounded corners
                  borderSide: BorderSide.none, // No border
                ),
              ),
              style: const TextStyle(color: Colors.black), // Text color for better contrast
            ),
          ),
        ],
      ),
    );
  }
    Widget _buildNewPassword(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.only(left: 3),
            child: Text(
              "New Password",
              style: TextStyle(fontSize: 18,fontWeight: FontWeight.w700,color: Color.fromARGB(255, 95, 92, 92)),
            ),
          ),
          const SizedBox(
            height: 9,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 8),
            child: TextFormField(
              controller: newPassword,
              obscureText:!passwordVisible,
              decoration: InputDecoration(
                hintText: "Enter new password",
                suffixIcon: IconButton(
                  icon: Icon(
                    // Based on passwordVisible state choose the icon
                    passwordVisible ? Icons.visibility : Icons.visibility_off,
                    color: Theme.of(context).primaryColorDark,
                  ),
                  onPressed: () {
                    // Update the state to toggle the password visibility
                    setState(() {
                      passwordVisible = !passwordVisible;
                    });
                  },
                ),
                hintStyle: TextStyle(color: Colors.grey),
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
                  color: Color.fromARGB(255, 0, 0, 0)), // Text color for better contrast
            ),
          )
        ],
      ),
    );
  }

  Widget _buildConfrimPassword(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.only(left: 3),
            child: Text(
              "Confirm Password",
              style:TextStyle(fontSize: 18,fontWeight: FontWeight.w700,color: Color.fromARGB(255, 95, 92, 92)),
            ),
          ),
          const SizedBox(
            height: 9,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 8),
            child: TextFormField(
              controller: confrimPassword,
              obscureText:!passwordVisible,
              decoration: InputDecoration(
                hintText: "Confirm your password",
                suffixIcon: IconButton(
                  icon: Icon(
                    // Based on passwordVisible state choose the icon
                    passwordVisible ? Icons.visibility : Icons.visibility_off,
                    color: Theme.of(context).primaryColorDark,
                  ),
                  onPressed: () {
                    // Update the state to toggle the password visibility
                    setState(() {
                      passwordVisible = !passwordVisible;
                    });
                  },
                ),
                 hintStyle: const TextStyle(color: Colors.grey),
                focusColor: Colors.amber,
                filled: true, // Enable filling the background
                fillColor:
                    const Color.fromARGB(255, 241, 241, 241), // Background color
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0), // Rounded corners
                  borderSide: BorderSide.none, // No border
                ),
              ),
              style: const TextStyle(
                  color: Color.fromARGB(255, 0, 0, 0)), // Text color for better contrast
            ),
          )
        ],
      ),
    );
  }
}