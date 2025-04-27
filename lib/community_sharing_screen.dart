import 'package:flutter/material.dart';

class CommunitySharingScreen extends StatelessWidget {
  const CommunitySharingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
<<<<<<< HEAD
        title: Text('Community Sharing', style: TextStyle(color: Colors.white),),
=======
        title: Text('Community Sharing'),
>>>>>>> 221e0117a934784dbc30b3c0021c108bf0570054
        backgroundColor: Colors.green[700], // Green color for a community-oriented theme
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Title for the section
            Text(
              'Recent Community Posts:',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Colors.green[800], // Green for community theme
              ),
            ),
            SizedBox(height: 20),

            // Post Card 1
            Card(
              elevation: 5,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Post Content
                    Text(
                      'Post 1: "Best practices for watering during hot weather!"',
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Shared by: John Doe',
                      style: TextStyle(fontSize: 16, color: Colors.grey[600]),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20),

            // Post Card 2
            Card(
              elevation: 5,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Post Content
                    Text(
                      'Post 2: "How to prevent crop damage from hailstorms!"',
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Shared by: Jane Smith',
                      style: TextStyle(fontSize: 16, color: Colors.grey[600]),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20),

            // Add more posts button
            Align(
              alignment: Alignment.center,
              child: ElevatedButton(
                onPressed: () {
                  // Functionality to add more posts (could be future implementation)
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green[700], // Matching green theme
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                child: Text(
                  'Add More Posts',
<<<<<<< HEAD
                  style: TextStyle(fontSize: 16,color: Colors.white),
=======
                  style: TextStyle(fontSize: 16),
>>>>>>> 221e0117a934784dbc30b3c0021c108bf0570054
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
