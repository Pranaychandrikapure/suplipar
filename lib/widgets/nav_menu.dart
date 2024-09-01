import 'package:flutter/material.dart';

class BottomNavigationBarWidget extends StatelessWidget {
  final int selectedIndex;
  final ValueChanged<int> onItemTapped;

  const BottomNavigationBarWidget({
    Key? key,
    required this.selectedIndex,
    required this.onItemTapped,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 18, horizontal: 28),
      child: Container(
        height: 70,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: const [
            BoxShadow(
              color: Color.fromARGB(50, 0, 0, 0),
              blurRadius: 10,
              offset: Offset(0, 5),
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            _buildNavItem(Icons.home, 0),
            _buildNavItem(Icons.account_balance_wallet, 1),
            _buildNavItem(Icons.bar_chart, 2),
            _buildNavItem(Icons.person, 3),
          ],
        ),
      ),
    );
  }

  Widget _buildNavItem(IconData icon, int index) {
    bool isSelected = selectedIndex == index;
    return GestureDetector(
      onTap: () => onItemTapped(index),
      child: Container(
        decoration: BoxDecoration(
          color: isSelected ? const Color.fromARGB(255, 0, 0, 0) : Colors.transparent,
          borderRadius: BorderRadius.circular(10),
        ),
        padding: const EdgeInsets.all(8),
        child: Icon(
          icon,
          size: 30,
          color: isSelected ? Colors.white : const Color.fromARGB(255, 148, 146, 146),
        ),
      ),
    );
  }
}
