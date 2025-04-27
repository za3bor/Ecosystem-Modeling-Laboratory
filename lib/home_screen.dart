import 'package:flutter/material.dart';
import 'package:schoolproject/alert_system_screen.dart';
import 'package:schoolproject/community_sharing_screen.dart';
import 'package:schoolproject/forecast_impact_screen.dart';
import 'package:schoolproject/recommendations_screen.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AgriTemp Home'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => CommunitySharingScreen()),
                );
              },
              child: Text('Community Sharing Screen'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => RecommendationsScreen()),
                );
              },
              child: Text('Recommendations Screen'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AlertSystemScreen()),
                );
              },
              child: Text('Alert System'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ForecastImpactScreen()),
                );
              },
              child: Text('Forecast Impact Screen'),
            ),
          ],
        ),
      ),
    );
  }
}
