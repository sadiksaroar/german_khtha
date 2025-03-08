import 'package:flutter/material.dart';
import 'package:lucide_icons/lucide_icons.dart';

class GermanPhrasesApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: GermanPhrasesScreen(),
    );
  }
}

class GermanPhrasesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(icon: Icon(Icons.arrow_back), onPressed: () {}),
        title: Text("German Phrases"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Image.asset(
              'images/grammar/untitled-design-2-674bf4f2c925c474135d6cf2_1-removebg-preview 1.png',
              height: 100,
            ), // Replace with your owl image
            SizedBox(height: 10),
            Text(
              "German Phrases",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            Expanded(
              child: ListView.builder(
                itemCount: 5, // Change as needed
                itemBuilder: (context, index) {
                  return PhraseCard();
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class PhraseCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        PhraseButton(title: "German"),
        PhraseButton(title: "Pronunciation"),
        PhraseButton(title: "Meaning"),
        SizedBox(height: 10),
      ],
    );
  }
}

class PhraseButton extends StatelessWidget {
  final String title;

  const PhraseButton({required this.title});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: ElevatedButton.icon(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.grey[300],
              foregroundColor: Colors.black,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            icon: Icon(LucideIcons.volume2, color: Colors.black),
            label: Text(title),
            onPressed: () {
              // Add pronunciation logic here
            },
          ),
        ),
        Expanded(
          child: Text(
            "------------------",
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.grey, fontSize: 16),
          ),
        ),
      ],
    );
  }
}
