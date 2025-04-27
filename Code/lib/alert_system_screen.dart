import 'package:flutter/material.dart';

class AlertSystemScreen extends StatelessWidget {
  const AlertSystemScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Alert System', style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.red[700]!, // Ensure color is non-nullable
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Header
              Text(
                'Recent Alerts:',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.red[700]!, // Ensure color is non-nullable
                ),
              ),
              SizedBox(height: 20),
        
              // Alert 1: High winds expected
              _buildAlertCard(
                icon: Icons.warning,
                iconColor: Colors.orange[800]!,
                title: 'Alert 1: "High winds expected tomorrow, secure your crops!"',
                issuedBy: 'National Weather Service',
              ),
              SizedBox(height: 20),
        
              // Alert 2: Heavy rainfall expected
              _buildAlertCard(
                icon: Icons.cloud,
                iconColor: Colors.blue[800]!,
                title: 'Alert 2: "Heavy rainfall expected, make sure to check irrigation systems."',
                issuedBy: 'Local Agriculture Authority',
              ),
              SizedBox(height: 20),
        
              // New Alert: Temperature warning
              _buildAlertCard(
                icon: Icons.thermostat_outlined,
                iconColor: Colors.red[500]!,
                title: 'Alert 3: "Tomorrow the temperature is expected to reach 40°C, cover your tomatoes!"',
                issuedBy: 'National Weather Service',
              ),
              SizedBox(height: 20),

              // New Alert: Watering reminder
              _buildAlertCard(
                icon: Icons.water_drop,
                iconColor: Colors.blue[400]!,
                title: 'Alert 4: "Reminder: Add more water to your crops due to expected dry conditions."',
                issuedBy: 'Local Agriculture Authority',
              ),
              SizedBox(height: 20),

              // New Alert: Frost warning
              _buildAlertCard(
                icon: Icons.ac_unit,
                iconColor: Colors.cyan[600]!,
                title: 'Alert 5: "Frost expected tonight, protect your sensitive crops!"',
                issuedBy: 'National Weather Service',
              ),
              SizedBox(height: 20),
        
              // New Alert: Drought warning
              _buildAlertCard(
                icon: Icons.water,
                iconColor: Colors.brown[700]!,
                title: 'Alert 6: "Drought conditions expected next week, start saving water."',
                issuedBy: 'National Weather Service',
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Helper method to create alert cards
  Widget _buildAlertCard({
    required IconData icon,
    required Color iconColor,
    required String title,
    required String issuedBy,
  }) {
    return Card(
      elevation: 8,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          children: [
            Icon(icon, color: iconColor, size: 40),
            SizedBox(width: 10),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Issued by: $issuedBy',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.grey[600],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
