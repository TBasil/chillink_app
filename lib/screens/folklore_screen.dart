import 'package:flutter/material.dart';
import 'story_screen.dart';

class FolkloreScreen extends StatelessWidget {
  final List<Map<String, String>> stories = [
    {
      'title': 'The Legend of the Headless Horseman',
      'description': 'A classic tale from folklore.',
      'image': 'assets/images/headless_horseman.jpg', // Replace with your asset path
      'content': 'Long story text here...'
    },
    {
      'title': 'The Chupacabra',
      'description': 'A tale of a legendary creature.',
      'image': 'assets/images/chupacabra.jpg', // Replace with your asset path
      'content': 'Long story text here...'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Folklore Stories')),
      body: ListView.builder(
        itemCount: stories.length,
        itemBuilder: (context, index) {
          return Card(
            margin: EdgeInsets.all(10),
            child: ListTile(
              title: Text(stories[index]['title']!),
              subtitle: Text(stories[index]['description']!),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => StoryScreen(
                      title: stories[index]['title']!,
                      imagePath: stories[index]['image']!,
                      content: stories[index]['content']!,
                    ),
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}
