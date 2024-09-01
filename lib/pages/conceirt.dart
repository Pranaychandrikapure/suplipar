import 'package:flutter/material.dart';
import 'package:suplipar/widgets/item_card.dart';
import 'package:suplipar/pages/notification_page.dart';
import 'package:suplipar/widgets/side_bar.dart';
import 'package:suplipar/widgets/nav_menu.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  // Sample data for images, dates, and headlines
  final List<String> imageUrls = [
    'assets/images/imageofnews.jpg',
    'assets/images/firework.jpg',
    'assets/images/star_person.jpg',
    'assets/images/imageofnews.jpg',
    'assets/images/firework.jpg',
    'assets/images/star_person.jpg',
    'assets/images/imageofnews.jpg',
  ];

  final List<String> dates = [
    'June 25, 2024',
    'July 4, 2024',
    'August 15, 2024',
    'June 25, 2024',
    'July 4, 2024',
    'August 15, 2024',
    'June 25, 2024',
  ];

  final List<String> headlines = [
    'News Headline 1',
    'Firework Event',
    'Star Person Event',
    'News Headline 4',
    'Firework Event 2',
    'Star Person Event 2',
    'News Headline 7',
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      // Add navigation logic here if needed
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const SideBar(), // Attach SideBar as the drawer
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: Colors.black,
            pinned: false,
            floating: true,
            snap: true,
            expandedHeight: 300.0,
            flexibleSpace: FlexibleSpaceBar(
              background: Stack(
                children: [
                  Container(
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/images/villageback(1).jpg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Positioned(
                    top: 90,
                    left: 30,
                    right: 20,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: const [
                        Text(
                          'Explore the beauty',
                          style: TextStyle(
                            color: Colors.white70,
                            fontSize: 24,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(height: 8),
                        Text(
                          'Suplipar Village',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 36,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            leading: Builder(
              builder: (context) {
                return IconButton(
                  icon: const Icon(Icons.menu, color: Colors.white),
                  onPressed: () {
                    Scaffold.of(context).openDrawer();
                  },
                );
              },
            ),
            actions: [
              IconButton(
                icon: const Icon(Icons.notifications, color: Colors.white),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const NotificationPage(),
                    ),
                  );
                },
              ),
            ],
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                const SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      _buildCustomButton(
                        text: 'Explore',
                        color: const Color.fromARGB(255, 92, 103, 191),
                        onPressed: () {
                          // Explore button action
                        },
                      ),
                      _buildCustomButton(
                        text: 'Donate',
                        color: const Color.fromARGB(255, 63, 63, 63),
                        onPressed: () {
                          // Donate button action
                        },
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                _buildSection(
                  context,
                  title: "Event News",
                  onViewAll: () {
                    // Navigate to all events
                  },
                  child: _buildHorizontalList(),
                ),
                _buildSection(
                  context,
                  title: "Best Places in Village",
                  onViewAll: () {
                    // Navigate to all places
                  },
                  child: _buildHorizontalList(),
                ),
                _buildSection(
                  context,
                  title: "Gram Panchayat",
                  onViewAll: () {
                    // Navigate to Gram Panchayat details
                  },
                  child: _buildHorizontalList(),
                ),
                _buildSection(
                  context,
                  title: "Work Office",
                  onViewAll: () {
                    // Navigate to Work Office details
                  },
                  child: _buildWorkOfficeGrid(),
                ),
                const SizedBox(height: 100),
              ],
            ),
          ),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: BottomNavigationBarWidget(
        selectedIndex: _selectedIndex,
        onItemTapped: _onItemTapped,
      ),
    );
  }

  Widget _buildCustomButton({
    required String text,
    required Color color,
    required VoidCallback onPressed,
  }) {
    return SizedBox(
      width: 160,
      height: 45,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: color,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        child: Text(
          text,
          style: const TextStyle(color: Colors.white, fontSize: 16),
        ),
      ),
    );
  }

  Widget _buildSection(
    BuildContext context, {
    required String title,
    required VoidCallback onViewAll,
    required Widget child,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildSectionHeader(title, onViewAll),
          const SizedBox(height: 10),
          child,
        ],
      ),
    );
  }

  Widget _buildSectionHeader(String title, VoidCallback onViewAll) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: const TextStyle(
              fontSize: 20,
              color: Color.fromARGB(255, 97, 97, 97),
              fontWeight: FontWeight.w600,
            ),
          ),
          TextButton(
            onPressed: onViewAll,
            child: const Text(
              "View All",
              style: TextStyle(
                color: Color.fromARGB(255, 135, 135, 135),
                fontSize: 16,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildHorizontalList() {
    return SizedBox(
      height: 230,
      child: ListView.builder(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        scrollDirection: Axis.horizontal,
        itemCount: imageUrls.length,
        itemBuilder: (context, index) {
          return CustomContainer(
            imageUrl: imageUrls[index],
            date: dates[index],
            headline: headlines[index],
          );
        },
      ),
    );
  }

  Widget _buildWorkOfficeGrid() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: GridView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: imageUrls.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 15,
          crossAxisSpacing: 15,
          childAspectRatio: 3,
        ),
        itemBuilder: (context, index) {
          return _buildWorkOfficeItem(
            imageUrl: imageUrls[index],
            title: headlines[index],
          );
        },
      ),
    );
  }

  Widget _buildWorkOfficeItem({
    required String imageUrl,
    required String title,
  }) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: const [
          BoxShadow(
            color: Color.fromARGB(50, 0, 0, 0),
            blurRadius: 5,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.horizontal(
              left: Radius.circular(10),
            ),
            child: Image.asset(
              imageUrl,
              width: 60,
              height: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(width: 10),
          Expanded(
            child: Text(
              title,
              style: const TextStyle(
                fontSize: 16,
                color: Colors.black87,
              ),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          const SizedBox(width: 10),
        ],
      ),
    );
  }
}
