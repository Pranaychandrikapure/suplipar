// custom_container.dart
import 'package:flutter/material.dart';

class CustomContainer extends StatefulWidget {
  final String imageUrl;
  final String date;
  final String headline;

  CustomContainer({required this.imageUrl, required this.date, required this.headline});

  @override
  _CustomContainerState createState() => _CustomContainerState();
}

class _CustomContainerState extends State<CustomContainer> {
  bool _isFavorited = false;

  void _toggleFavorite() {
    setState(() {
      _isFavorited = !_isFavorited;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 4),
      child: Stack(
        children: [
          Column(
            children: [
              Container(
                height: 160,
                width: 150,
                decoration: BoxDecoration(
                  color: Colors.amber,
                  borderRadius: BorderRadius.vertical(top: Radius.circular(12)),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.vertical(top: Radius.circular(12)),
                  child: Image.asset(
                    widget.imageUrl,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Container(
                width: 150,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.vertical(bottom: Radius.circular(12)),
                ),
                padding: EdgeInsets.symmetric(vertical: 4, horizontal: 6),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.date,
                      style: TextStyle(color: Colors.white, fontSize: 12),
                    ),
                    SizedBox(height: 4),
                    Text(
                      widget.headline,
                      style: TextStyle(color: Colors.white, fontSize: 14, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Positioned(
            right: 8,
            top: 8,
            child: GestureDetector(
              onTap: _toggleFavorite,
              child: Icon(
                _isFavorited ? Icons.favorite : Icons.favorite_border,
                color: _isFavorited ? Colors.red : Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
