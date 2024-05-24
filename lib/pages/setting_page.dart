import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:suplipar/auth/update_password.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({super.key});

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
          padding: const EdgeInsets.all(18.0),
          child: Column(
            children: [
              SizedBox(
                height: 60,
                child: ElevatedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                      elevation: const MaterialStatePropertyAll(0),
                      backgroundColor: const MaterialStatePropertyAll(Color.fromARGB(255, 248, 245, 245)),
                      shape: MaterialStateProperty.all(
                          const RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(12)))),
                    ),
                    child: Container(
                      child: Column(
                        children: [
                          Row(
                            children: [
                              SvgPicture.asset(
                                'assets/svg/notification.svg',
                                width: 30,
                              ),
                              const SizedBox(width: 20,),
                              Text('Notifications',style: TextStyle(color: Colors.grey[800],fontWeight: FontWeight.bold,fontSize: 20),),
                              const SizedBox(width: 80,),
                              const SwitchExample(),
                            ],
                          ),
                        ],
                      ),
                    )),
              ),
              const SizedBox(height: 20,),
              SizedBox(
                height: 60,
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> UpadtePassword(passwordVisible: false,)));
                    },
                    style: ButtonStyle(
                      elevation: const MaterialStatePropertyAll(0),
                      backgroundColor:const MaterialStatePropertyAll(Color.fromARGB(255, 248, 245, 245)),
                      shape: MaterialStateProperty.all(
                          const RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(12)))),
                    ),
                    child: Container(
                      child: Column(
                        children: [
                          const SizedBox(height: 12,),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              SvgPicture.asset(
                                'assets/svg/lock.svg',
                                width: 30,
                              ),
                              const SizedBox(width: 20,),
                              Text('Password',style: TextStyle(color: Colors.grey[800],fontWeight: FontWeight.bold,fontSize: 20),),
                              const SizedBox(width: 138,),
                              SvgPicture.asset('assets/svg/right_arrow.svg',width:30 ,)
                            ],
                          ),
                        ],
                      ),
                    )),
              ),
              const SizedBox(height: 20,),
              SizedBox(
                height: 60,
                child: ElevatedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                      elevation: const MaterialStatePropertyAll(0),
                      backgroundColor:const MaterialStatePropertyAll(Color.fromARGB(255, 248, 245, 245)),
                      shape: MaterialStateProperty.all(
                          const RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(12)))),
                    ),
                    child: Container(
                      child: Column(
                        children: [
                          const SizedBox(height: 12,),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              SvgPicture.asset(
                                'assets/svg/exit.svg',
                                width: 30,
                              ),
                              const SizedBox(width: 20,),
                              Text('Logout',style: TextStyle(color: Colors.grey[800],fontWeight: FontWeight.bold,fontSize: 20),),
                              const SizedBox(width: 165,),
                              SvgPicture.asset('assets/svg/right_arrow.svg',width:30 ,)
                            ],
                          ),
                        ],
                      ),
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }

  
}

class SwitchExample extends StatefulWidget {
  const SwitchExample({super.key});

  @override
  State<SwitchExample> createState() => _SwitchExampleState();
}

class _SwitchExampleState extends State<SwitchExample> {
  bool light = true;

  @override
  Widget build(BuildContext context) {
    return Switch(
      // This bool value toggles the switch.
      value: light,
      thumbColor: const MaterialStatePropertyAll(Colors.white),
      activeColor:const Color.fromARGB(255, 51, 212, 15),
      onChanged: (bool value) {
        // This is called when the user toggles the switch.
        setState(() {
          light = value;
        });
      },
    );
  }
}

