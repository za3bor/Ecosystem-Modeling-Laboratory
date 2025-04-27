import 'package:flutter/material.dart';

class RecommendationsScreen extends StatelessWidget {
  const RecommendationsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Farming Recommendations'),
        backgroundColor: Colors.green[700], // Green theme to match the app
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Title section for the recommendations
            Text(
              'Farming Tips Based on Weather:',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.green[800], // Green title color
              ),
            ),
            SizedBox(height: 30),

            // Recommendation 1
            _buildRecommendationCard(
              context,
              'Water your crops early in the morning to avoid evaporation during the day.',
              'Recommended for: All crops in hot climates',
            ),
            SizedBox(height: 20),

            // Recommendation 2
            _buildRecommendationCard(
              context,
              'Protect crops from frost by covering them at night during low temperatures.',
              'Recommended for: Frost-sensitive crops like tomatoes and peppers',
            ),
          ],
        ),
      ),
    );
  }

  // Helper method to build the recommendation cards
  Widget _buildRecommendationCard(BuildContext context, String tip, String recommendation) {
    return Card(
      elevation: 5,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Text(
              tip,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
            ),
            SizedBox(height: 10),
            Text(
              recommendation,
              style: TextStyle(fontSize: 16, color: Colors.grey),
            ),
          ],
        ),
      ),
    );
  }
}
