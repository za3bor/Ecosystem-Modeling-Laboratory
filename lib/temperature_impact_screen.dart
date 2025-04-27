import 'package:flutter/material.dart';

class TemperatureImpactScreen extends StatelessWidget {
  const TemperatureImpactScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Temperature Impact on Growth'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Text(
              'Impact of Temperature Change on Plant Growth',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20),
            // Example of how temperature changes may impact plants
            Text(
              'This section explains how temperature changes between 1961 and 2021 have influenced plant growth globally.',
              style: TextStyle(fontSize: 16),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 40),
          ],
        ),
      ),
    );
  }
}
