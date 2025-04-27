import 'package:flutter/material.dart';
import 'package:schoolproject/temperature_impact_screen.dart';

class DataScreen extends StatelessWidget {
  const DataScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Temperature Data')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Text(
              'Temperature Data (1961 - 2021)',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            // Displaying temperature data - this is a placeholder for actual data visualization
            Text(
              'Here, you would typically show the data in charts or tables.',
              style: TextStyle(fontSize: 16),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 40),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const TemperatureImpactScreen(),
                  ),
                );
              },
              child: Text('Impact on Plant Growth'),
            ),
          ],
        ),
      ),
    );
  }
}
