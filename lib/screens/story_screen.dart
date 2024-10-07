import 'package:flutter/material.dart';

class StoryScreen extends StatelessWidget {
  final String title;
  final String imagePath;
  final String content;

  StoryScreen({required this.title, required this.imagePath, required this.content});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(imagePath, fit: BoxFit.cover),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                title,
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(content),
            ),
          ],
        ),
      ),
    );
  }
}
