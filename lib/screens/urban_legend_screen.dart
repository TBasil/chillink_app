import 'package:flutter/material.dart';
import 'story_screen.dart';

class UrbanLegendScreen extends StatelessWidget {
  final List<Map<String, String>> stories = [
    {
      'title': 'The Vanishing Hitchhiker',
      'description': 'A ghostly tale of a hitchhiker who disappears.',
      'image': 'assets/images/vanishing_hitchhiker.jpg', // Replace with your asset path
      'content': 'Long story text here...'
    },
    {
      'title': 'Bloody Mary',
      'description': 'A chilling tale about summoning a spirit.',
      'image': 'assets/images/bloody_mary.jpg', // Replace with your asset path
      'content': 'Long story text here...'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Urban Legends')),
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
