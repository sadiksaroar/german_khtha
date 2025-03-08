import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {},
        ),
        title: Text(
          'German Kotha',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Image.asset(
              'images/german_kotha/OBJECTS (2).png',
              height: 150,
            ),
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
              ),
              child: ListView(
                padding: EdgeInsets.all(16),
                children: [
                  MenuItem(icon: Icons.home, title: 'Home'),
                  MenuItem(icon: Icons.info, title: 'About Us'),
                  ExpansionTile(
                    leading: Icon(Icons.settings, color: Colors.teal),
                    title: Text('Services', style: TextStyle(fontSize: 16)),
                    children: [
                      ListTile(title: Text('Service 1')),
                      ListTile(title: Text('Service 2')),
                    ],
                  ),
                  MenuItem(icon: Icons.language, title: 'Visit Website'),
                  MenuItem(icon: Icons.share, title: 'Share'),
                  MenuItem(icon: Icons.contact_mail, title: 'Contact Us'),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class MenuItem extends StatelessWidget {
  final IconData icon;
  final String title;

  MenuItem({required this.icon, required this.title});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: ListTile(
        leading: Icon(icon, color: Colors.teal),
        title: Text(title, style: TextStyle(fontSize: 16)),
        trailing: Icon(Icons.arrow_forward_ios, size: 16, color: Colors.grey),
        onTap: () {},
      ),
    );
  }
}
