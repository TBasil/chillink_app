import 'package:flutter/material.dart';
import 'story_screen.dart';

class ParanormalScreen extends StatelessWidget {
  final List<Map<String, String>> stories = [
    {
      'title': 'The Haunted House',
      'description': 'A story about a house that is said to be haunted.',
      'image': 'assets/images/haunted_house.jpg', // Replace with your asset path
      'content': 'Long story text here...'
    },
    {
      'title': 'Ghostly Encounters',
      'description': 'Tales of people who encountered ghosts.',
      'image': 'assets/images/ghostly_encounters.jpg', // Replace with your asset path
      'content': 'Long story text here...'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Paranormal Stories')),
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
                      content: stories[index]['context']!,
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
