import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: helloDanilo(),
    );
  }
}

class helloDanilo extends StatefulWidget {
  const helloDanilo({super.key});

  @override
  State<helloDanilo> createState() => _helloDaniloState();
}

class _helloDaniloState extends State<helloDanilo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.arrow_back, color: Colors.black),
        ),
        actions: [
          IconButton(icon: Icon(Icons.notifications), onPressed: () {}),
          SizedBox(height: 10),
        ],
      ),
      body: Column(
        children: [
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ...List.generate(5, (index) {
                return Icon(
                  Icons.favorite,
                  color: index == 0 ? Colors.grey : Colors.red,
                );
              }),
            ],
          ),
          SizedBox(height: 20),
          Row(
            children: [
              CircleAvatar(
                radius: 30,
                backgroundImage: AssetImage("danilo/Ellipse 404.png"),
              ),
              SizedBox(width: 12),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Hello, Danilo!",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "At which level would you like to learn?",
                    style: TextStyle(fontSize: 14, color: Colors.grey),
                  ),
                ],
              ),
              Spacer(),
            ],
          ),

          Expanded(
            child: ListView(
              children: [
                lavelCard("danilo/Group 48096130.png", "Level 1"),
                lavelCard("danilo/iPhone 13 mini - 2.png", "Level 3"),
                lavelCard("danilo/Group 48096130.png", "Level 2"),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget lavelCard(String imagePath, String title) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16.0),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.asset(
              imagePath,
              height: 260,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(height: 8),
          Text(
            title,
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
