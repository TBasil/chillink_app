import 'package:flutter/material.dart';
import 'profile_screen.dart';
import 'paranormal_screen.dart';
import 'urban_legend_screen.dart';
import 'real_life_screen.dart';
import 'folklore_screen.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ChillInk'),
        actions: [
          IconButton(
            icon: Icon(Icons.menu),
            onPressed: () {
              _openMenu(context);
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: GridView.count(
          crossAxisCount: 2, // Two boxes per row
          crossAxisSpacing: 16,
          mainAxisSpacing: 16,
          children: [
            _buildCategoryBox('assets/images/paranormal.jpg', 'Paranormal', ParanormalScreen()),
            _buildCategoryBox('assets/images/urban_legend.jpg', 'Urban Legend', UrbanLegendScreen()),
            _buildCategoryBox('assets/images/real_life.jpg', 'Real-Life', RealLifeScreen()),
            _buildCategoryBox('assets/images/folklore.jpg', 'Folklore', FolkloreScreen()),
          ],
        ),
      ),
    );
  }

  Widget _buildCategoryBox(String imagePath, String title, Widget screen) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => screen),
        );
      },
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(imagePath),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.circular(8),
        ),
        alignment: Alignment.bottomCenter,
        child: Container(
          color: Colors.black54,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              title,
              style: TextStyle(fontSize: 18, color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }

  void _openMenu(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (context) {
        return Container(
          height: 200,
          color: Colors.black87,
          child: Column(
            children: [
              ListTile(
                title: Text('Profile', style: TextStyle(color: Colors.white)),
                onTap: () {
                  Navigator.pop(context); // Close the bottom sheet
                  Navigator.push(context, MaterialPageRoute(builder: (context) => ProfileScreen()));
                },
              ),
              ListTile(
                title: Text('Contact', style: TextStyle(color: Colors.white)),
                onTap: () {
                  showDialog(
                      context: context,
                      builder: (BuildContext context)
                      {
                        return AlertDialog(
                          title: Text('Contact Us'),
                          content: Text('Contaact us at ChillInk@gmail.com'),
                          actions: [
                            TextButton(
                                onPressed: (){
                                  Navigator.of(context).pop();
                                }, child: Text('Thnkyou'),
                            )
                          ],
                        );
                      }
                  );
                },
              ),
              ListTile(
                title: Text('Settings', style: TextStyle(color: Colors.white)),
                onTap: () {
                  showDialog(
                      context: context,
                      builder: (BuildContext context)
                      {
                        return AlertDialog(
                          title: Text('Coming Soon In Next Update'),
                        );
                      }
                  );
                },
              ),
            ],
          ),
        );
      },
    );
  }
}
