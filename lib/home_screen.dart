import 'package:flutter/material.dart';
import 'package:schoolproject/alert_system_screen.dart';
import 'package:schoolproject/community_sharing_screen.dart';
import 'package:schoolproject/forecast_impact_screen.dart';
import 'package:schoolproject/recommendations_screen.dart';
import 'package:schoolproject/register_product_screen.dart';
import 'package:schoolproject/register_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AgriTemp Home', style: TextStyle(color: Colors.white)),

        backgroundColor: Colors.green[700], // Green to match agricultural theme
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Title section for the home screen
            Text(
              'Welcome to AgriTemp!',
              style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.bold,
                color: Colors.green[800], // Green title color
              ),
            ),
            SizedBox(height: 30),

            // Community Sharing Button
            _buildNavigationButton(
              context,
              'Community Sharing Screen',
              CommunitySharingScreen(),
            ),
            SizedBox(height: 20),

            // Recommendations Button
            _buildNavigationButton(
              context,
              'Recommendations Screen',
              RecommendationsScreen(),
            ),
            SizedBox(height: 20),

            // Alert System Button
            _buildNavigationButton(
              context,
              'Alert System',
              AlertSystemScreen(),
            ),
            SizedBox(height: 20),

            // Forecast Impact Button
            _buildNavigationButton(
              context,
              'Forecast Impact Screen',
              ForecastImpactScreen(),
            ),
            SizedBox(height: 20),

            // Register New Products Button
            _buildNavigationButton(
              context,
              'Register New Products',
              RegisterProductScreen(),
            ),

            // Delete accountn
            _buildNavigationButton(
              context,
              'Delete your account',
              RegisterScreen(),
            ),
          ],
        ),
      ),
    );
  }

  // Helper method to build the buttons
  ElevatedButton _buildNavigationButton(
    BuildContext context,
    String label,
    Widget screen,
  ) {
    return ElevatedButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => screen),
        );
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.green[600], // Matching green theme
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 14),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      ),
      child: Text(label, style: TextStyle(fontSize: 16, color: Colors.white)),
    );
  }
}
