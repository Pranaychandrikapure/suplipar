// side_bar.dart
import 'package:flutter/material.dart';

class SideBar extends StatelessWidget {
  const SideBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 230, 224, 234),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  radius: 30,
                  backgroundImage: NetworkImage(
                      "https://s3-alpha-sig.figma.com/img/76f3/728e/766f0bd0cd895fa11545705a9c7b5d05?Expires=1725840000&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=NDiIjZSKXsfLHSAuSD~YEPl974UfMMsUX5hhtxgLo05uP8jVGo18RjI7OdVUbWsMwF4XcrBXiF-ms8aItHhb8i-p3uaMpuTGuP94lJ~9lxPu-RdlYSRJTMTM1pJ9Zugh2VkKEtXboSNjKCCR9NJPGreGPlSA1aFXjssaWLGvCBLdyrNqdxCv0JK~4uXFxeLoA6mCTThCCQQO5GqhCxSqEqL5TQXYbjJMZdWaHnEp7xyypk39WEKJvk6SFIL8MQET1ziXiAk-cKFoyKCZslQzWpU88FGK69la3BG8R4~VYPOZRtXHip~dgM0U7sc9aGKrZYxn4yozCCKe6hcZce5VXQ__"),
                ),
                SizedBox(height: 10),
                Text(
                  'William Smith',
                  style: TextStyle(
                    color: Color.fromARGB(255, 0, 0, 0),
                    fontSize: 25,
                  ),
                ),
                Text(
                  'william.smith@gmail.com',
                  style: TextStyle(
                    color: Color.fromARGB(179, 0, 0, 0),
                    fontSize: 14,
                  ),
                ),
                
              ],
            ),
          ),
          ListTile(
            leading: const Icon(Icons.wallet),
            title: const Text(
              'All Events',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
            ),
            onTap: () {
              Navigator.pop(context);
              // Navigate to Home
            },
          ),
          ListTile(
            leading: const Icon(Icons.person),
            title: const Text(
              'Profile',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
            ),
            onTap: () {
              Navigator.pop(context);
              // Navigate to Profile
            },
          ),
          ListTile(
            leading: const Icon(Icons.monetization_on),
            title: const Text(
              'Donate',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
            ),
            onTap: () {
              Navigator.pop(context);
              // Navigate to Donate
            },
          ),
          ListTile(
            leading: const Icon(Icons.location_city_rounded),
            title: const Text(
              'Best Places',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
            ),
            onTap: () {
              Navigator.pop(context);
              // Navigate to Best Places
            },
          ),
          ListTile(
            leading: const Icon(Icons.shop),
            title: const Text(
              'All Shops',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
            ),
            onTap: () {
              Navigator.pop(context);
              // Navigate to All Shops
            },
          ),
          ListTile(
            leading: const Icon(Icons.settings),
            title: const Text(
              'Settings',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
            ),
            onTap: () {
              Navigator.pop(context);
              // Navigate to Settings
            },
          ),
          ListTile(
            leading: const Icon(Icons.info_outline),
            title: const Text(
              'About App',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
            ),
            onTap: () {
              Navigator.pop(context);
              // Navigate to About App
            },
          ),
          SizedBox(height: 80,), // Push the logout button to the bottom
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0), // Adjust padding as needed
            child: SizedBox(
              width: 200, // Set custom width
              height: 50, // Set custom height
              child: ElevatedButton(
                onPressed: () {
                  // Handle button press
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black, // Set the background color
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10), // Rounded corners
                  ),
                ),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center, // Center align the content
                  children: [
                    Icon(
                      Icons.logout, // Set your desired icon
                      color: Colors.white, // Set the icon color
                    ),
                    SizedBox(width: 8), // Space between icon and text
                    Text(
                      'Logout',
                      style: TextStyle(
                        color: Colors.white, // Set text color to white
                        fontSize: 16, // Text styling
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(height: 16), // Add some space below the button
        ],
      ),
    );
  }
}
