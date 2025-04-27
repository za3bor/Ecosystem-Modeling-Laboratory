import 'package:flutter/material.dart';

class ForecastImpactScreen extends StatelessWidget {
  const ForecastImpactScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Forecast Impact on Crops',
          style: TextStyle(color: Colors.white),
        ),

        backgroundColor: Colors.blue[700], // Blue color representing weather
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Title section
            Text(
              'How the Weather Affects Crops:',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Colors.blue[800], // Blue for weather-related theme
              ),
            ),
            SizedBox(height: 20),

            // Impact Card 1
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
                    // Impact description
                    Text(
                      'Impact 1: "Temperatures above 30°C can lead to heat stress in crops."',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 10),
                    // Recommended action
                    Text(
                      'Recommended action: Water crops more frequently in hot conditions.',
                      style: TextStyle(fontSize: 16, color: Colors.grey[600]),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20),

            // Impact Card 2
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
                    // Impact description
                    Text(
                      'Impact 2: "Excessive rainfall can cause soil erosion and crop rot."',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 10),
                    // Recommended action
                    Text(
                      'Recommended action: Ensure proper drainage to prevent waterlogging.',
                      style: TextStyle(fontSize: 16, color: Colors.grey[600]),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20),

            // Add more impacts button (for future use or expansion)
            Align(
              alignment: Alignment.center,
              child: ElevatedButton(
                onPressed: () {
                  // Future functionality to add more forecast impacts
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue[700], // Matching blue theme
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                child: Text(
                  'Add More Impacts',
                  style: TextStyle(fontSize: 16, color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
