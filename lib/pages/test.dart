  import 'package:flutter/material.dart';
  import 'package:suplipar/widgets/item_card.dart';

  class TestPage extends StatefulWidget {
    const TestPage({super.key});

    @override
    State<TestPage> createState() => _TestPageState();
  }

  class _TestPageState extends State<TestPage> {
    int _selectedIndex = 0;

    void _onItemTapped(int index) {
      setState(() {
        _selectedIndex = index;
      });
    }

    @override
    Widget build(BuildContext context) {
      List<String> imageUrls = [
        'assets/images/imageofnews.jpg',
        'assets/images/firework.jpg',
        'assets/images/star_person.jpg',
        'assets/images/imageofnews.jpg',
        'assets/images/firework.jpg',
        'assets/images/star_person.jpg',
        'assets/images/imageofnews.jpg',
      ];

      List<String> dates = [
        'June 25, 2024',
        'July 4, 2024',
        'August 15, 2024',
        'June 25, 2024',
        'July 4, 2024',
        'August 15, 2024',
        'June 25, 2024',
      ];

      List<String> headlines = [
        'News Headline 1',
        'Firework Event',
        'Star Person Event',
        'News Headline 4',
        'Firework Event 2',
        'Star Person Event 2',
        'News Headline 7',
      ];

      return Scaffold(
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              backgroundColor: const Color.fromARGB(255, 12, 12, 12),
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
                    const Positioned(
                      top: 110, // Adjust position as needed
                      left: 30,
                      right: 20,
                      child: Column(
                        children: [
                          Text(
                            'Explore the beauty',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            'Suplipar The village',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              leading: IconButton(
                icon: const Icon(Icons.menu, color: Colors.white),
                onPressed: () {
                  // Handle menu button tap
                },
              ),
              actions: [
                IconButton(
                  icon: const Icon(Icons.notifications, color: Colors.white),
                  onPressed: () {
                    // Handle notification button tap
                  },
                ),
              ],
            ),

            SliverList(
              delegate: SliverChildListDelegate(
                [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(height: 12,),
                        SizedBox(
                          width: 160,
                          height: 45,
                          child: ElevatedButton(
                            onPressed: () {},
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(
                                const Color.fromARGB(255, 92, 103, 191),
                              ),
                              shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                            ),
                            child: const Text(
                              'Explore',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                        SizedBox(height: 12,),
                        SizedBox(
                          width: 160,
                          height: 45,
                          child: ElevatedButton(
                            onPressed: () {},
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(
                                const Color.fromARGB(255, 63, 63, 63),
                              ),
                              shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                            ),
                            child: const Text(
                              'Donate',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 0.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        _buildSectionHeader(context, "Event News"),
                        const SizedBox(height: 8),
                        _buildHorizontalList(imageUrls, dates, headlines),
                        const SizedBox(height: 2),
                        _buildSectionHeader(context, "Best Places in Village"),
                        const SizedBox(height: 2),
                        _buildHorizontalList(imageUrls, dates, headlines),
                        const SizedBox(height: 2),
                        _buildSectionHeader(context, "Gram Panchayat"),
                        const SizedBox(height: 8),
                        _buildHorizontalList(imageUrls, dates, headlines),
                        const SizedBox(height: 16),
                        const Text(
                          "Work Office",
                          style: TextStyle(
                            fontSize: 17,
                            color: Color.fromARGB(255, 97, 97, 97),
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        const SizedBox(height: 8),
                        _buildWorkOfficeGrid(imageUrls, headlines),
                        const SizedBox(height: 100),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: Padding(
          padding: const EdgeInsets.symmetric(vertical: 18, horizontal: 28),
          child: Container(
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 228, 228, 228),
              borderRadius: BorderRadius.circular(15),
              boxShadow: [
                BoxShadow(
                  color: const Color.fromARGB(78, 0, 0, 0),
                  blurRadius: 10,
                  offset: const Offset(0, 8),
                ),
              ],
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: BottomAppBar(
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 2.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      _buildIcon(Icons.home, 0),
                      _buildIcon(Icons.account_balance_wallet, 1),
                      _buildIcon(Icons.bar_chart, 2),
                      _buildIcon(Icons.person, 3),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      );
    }

    Widget _buildIcon(IconData icon, int index) {
      bool isSelected = _selectedIndex == index;
      return GestureDetector(
        onTap: () => _onItemTapped(index),
        child: Container(
          decoration: BoxDecoration(
            color: isSelected ? Colors.black : Colors.white,
            borderRadius: BorderRadius.circular(10),
          ),
          padding: const EdgeInsets.all(13),
          child: Icon(
            icon,
            color: isSelected ? Colors.white : Colors.black,
          ),
        ),
      );
    }

    Widget _buildSectionHeader(BuildContext context, String title) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(10, 2, 0, 0),
            child: Text(
              title,
              style: const TextStyle(
                fontSize: 17,
                color: Color.fromARGB(255, 97, 97, 97),
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          TextButton(
            onPressed: () {
              // Navigate to the news page
            },
            child: const Text(
              "View All",
              style: TextStyle(color: Color.fromARGB(255, 135, 135, 135)),
            ),
          ),
        ],
      );
    }

    Widget _buildHorizontalList(
        List<String> imageUrls, List<String> dates, List<String> headlines) {
      return SizedBox(
        height: 230,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: List.generate(
            imageUrls.length,
            (index) => CustomContainer(
              imageUrl: imageUrls[index],
              date: dates[index],
              headline: headlines[index],
            ),
          ),
        ),
      );
    }

    Widget _buildWorkOfficeGrid(List<String> imageUrls, List<String> headlines) {
      return GridView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 3,
        ),
        itemCount: imageUrls.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(
                    imageUrls[index],
                    width: 50,
                    height: 50,
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(width: 8),
                Expanded(
                  child: Text(
                    headlines[index],
                    style: const TextStyle(fontSize: 15),
                  ),
                ),
              ],
            ),
          );
        },
      );
    }
  }
