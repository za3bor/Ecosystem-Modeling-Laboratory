import 'package:flutter/material.dart';

class AlertSystemScreen extends StatelessWidget {
  const AlertSystemScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
<<<<<<< HEAD
        title: Text('Alert System', style: TextStyle(color: Colors.white)),
=======
        title: Text('Alert System'),
>>>>>>> 221e0117a934784dbc30b3c0021c108bf0570054
        backgroundColor: Colors.red[700], // Red background for urgency
      ),
      body: Padding(
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
                color: Colors.red[700],
              ),
            ),
            SizedBox(height: 20),

            // Alert 1
            Card(
              elevation: 8,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  children: [
                    Icon(Icons.warning, color: Colors.orange[800], size: 40),
                    SizedBox(width: 10),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Alert 1: "High winds expected tomorrow, secure your crops!"',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                          SizedBox(height: 10),
                          Text(
                            'Issued by: National Weather Service',
<<<<<<< HEAD
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.grey[600],
                            ),
=======
                            style: TextStyle(fontSize: 16, color: Colors.grey[600]),
>>>>>>> 221e0117a934784dbc30b3c0021c108bf0570054
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20),

            // Alert 2
            Card(
              elevation: 8,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  children: [
                    Icon(Icons.cloud, color: Colors.blue[800], size: 40),
                    SizedBox(width: 10),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Alert 2: "Heavy rainfall expected, make sure to check irrigation systems."',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                          SizedBox(height: 10),
                          Text(
                            'Issued by: Local Agriculture Authority',
<<<<<<< HEAD
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.grey[600],
                            ),
=======
                            style: TextStyle(fontSize: 16, color: Colors.grey[600]),
>>>>>>> 221e0117a934784dbc30b3c0021c108bf0570054
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
