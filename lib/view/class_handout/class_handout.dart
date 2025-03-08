import 'package:flutter/material.dart';

class ClassHandoutScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Top bar with back button and notification
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(icon: Icon(Icons.arrow_back), onPressed: () {}),
                  IconButton(icon: Icon(Icons.notifications), onPressed: () {}),
                ],
              ),

              SizedBox(height: 20),

              // Title
              Text(
                "Class Handout",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),

              SizedBox(height: 5),

              // Date
              Text(
                "19/02/2025",
                style: TextStyle(fontSize: 16, color: Colors.grey),
              ),

              SizedBox(height: 10),

              // Short description
              Text(
                "Are you looking for a brief about education in general",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 14, color: Colors.grey),
              ),

              SizedBox(height: 20),

              // PDF attachment with icon
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.picture_as_pdf, color: Colors.red),
                  SizedBox(width: 5),
                  Expanded(
                    child: Text(
                      "Are you looking for a brief...",
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(fontSize: 14),
                    ),
                  ),
                  SizedBox(width: 10),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      foregroundColor: Colors.black,
                      elevation: 2,
                    ),
                    child: Text("Video lesson"),
                  ),
                ],
              ),

              SizedBox(height: 30),

              // Download button
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                  foregroundColor: Colors.white,
                  padding: EdgeInsets.symmetric(vertical: 15, horizontal: 40),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                child: Text("Download now"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
