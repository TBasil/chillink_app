import 'package:flutter/material.dart';
import 'story_screen.dart';

class RealLifeScreen extends StatelessWidget {
  final List<Map<String, String>> stories = [
    {
      'title': 'The Real Ghost Hunter',
      'description': 'A true story of a ghost hunter’s experiences.',
      'image': 'assets/images/real_ghost_hunter.jpg', // Replace with your asset path
      'content': 'Long story text here...'
    },
    {
      'title': 'Creepy Experiences',
      'description': 'Real-life encounters that will send chills down your spine.',
      'image': 'assets/images/creepy_experiences.jpg', // Replace with your asset path
      'content': 'Long story text here...'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Real Life Stories')),
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
