import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:suplipar/pages/conceirt.dart'; // Import the HomePage widget
import 'package:suplipar/pages/user.dart'; // Import the UserPage widget
import 'package:suplipar/widgets/nav_menu.dart'; // Import the FooterNavBar widget

class NotificationPage extends StatefulWidget {
  const NotificationPage({super.key});

  @override
  _NotificationPageState createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    switch (index) {
      case 0:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const HomePage()),
        );
        break;
      case 1:
        // Handle other cases if necessary
        break;
      case 2:
        // Handle other cases if necessary
        break;
      case 3:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const UserPage()),
        );
        break;
    }

    setState(() {
      _selectedIndex = index;
    });
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
              SvgPicture.asset(
                'assets/svg/menu.svg',
                width: 30,
                color: Colors.black,
              ),
            ],
          ),
        ),
      ),
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Container(
              height: 950,
              child: Padding(
                padding: const EdgeInsets.all(6),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text(
                      "Notification",
                      style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                    _buildNotificationItem(),
                    _buildNotificationItem(),
                    _buildNotificationItem(),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child:BottomNavigationBarWidget(
        selectedIndex: _selectedIndex,
        onItemTapped: _onItemTapped,
      ),
          ),
        ],
      ),
    );
  }

  Widget _buildNotificationItem() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 232, 224, 246),
          borderRadius: BorderRadius.circular(16),
        ),
        child: SizedBox(
          height: 250,
          width: 500,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(
                      'assets/images/google_icon.png',
                      width: 40,
                    ),
                    SvgPicture.asset(
                      'assets/svg/more_menu.svg',
                      width: 30,
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                const Text("Application Sent"),
                const SizedBox(height: 10),
                const Text(
                  'Applications for Google inc have entered for company review',
                ),
                const SizedBox(height: 25),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: 220,
                      height: 60,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(
                            const Color.fromARGB(255, 64, 64, 68),
                          ),
                          shape: MaterialStateProperty.all(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                          ),
                        ),
                        child: const Text(
                          "Application Detailed",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    const Text("1 hour"),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
