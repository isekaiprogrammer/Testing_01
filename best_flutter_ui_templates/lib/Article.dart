import 'package:flutter/material.dart';

class ArticleWidget extends StatelessWidget {
  final String title;
  final String author;
  final String content;

  ArticleWidget({
    required this.title,
    required this.author,
    required this.content,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Colors.white, // Adjust the color as needed
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            spreadRadius: 2,
            blurRadius: 5,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.black, // Adjust the color as needed
            ),
          ),
          SizedBox(height: 8),
          Text(
            'By $author',
            style: TextStyle(
              fontSize: 16,
              color: Colors.grey, // Adjust the color as needed
            ),
          ),
          SizedBox(height: 12),
          Text(
            content,
            style: TextStyle(
              fontSize: 16,
              color: Colors.black, // Adjust the color as needed
            ),
          ),
        ],
      ),
    );
  }
}