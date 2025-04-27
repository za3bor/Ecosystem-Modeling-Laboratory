import 'package:flutter/material.dart';

class HelpAndSupportScreen extends StatelessWidget {
  const HelpAndSupportScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Help and Support', style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.green[700], // Green theme for consistency
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Need Help?',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.green[700],
                ),
              ),
              SizedBox(height: 20),
              Text(
                'If you have any questions or need assistance, we are here to help! Please browse through the frequently asked questions below or contact our support team.',
                style: TextStyle(fontSize: 16, height: 1.5),
              ),
              SizedBox(height: 20),
              Text(
                'Frequently Asked Questions:',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              // FAQ section
              ListTile(
                title: Text(
                  'How do I register a product?',
                  style: TextStyle(fontSize: 16),
                ),
                onTap: () {
                  // Action for the FAQ question
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: Text('How to Register a Product'),
                        content: Text(
                          'To register a product, navigate to the "Register Product" section from the Home screen, fill out the product details, and submit the form.',
                        ),
                        actions: [
                          TextButton(
                            child: Text('OK'),
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                          ),
                        ],
                      );
                    },
                  );
                },
              ),
              SizedBox(height: 10),
              ListTile(
                title: Text(
                  'What should I do if I encounter an error?',
                  style: TextStyle(fontSize: 16),
                ),
                onTap: () {
                  // Action for the FAQ question
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: Text('Error Troubleshooting'),
                        content: Text(
                          'If you encounter an error, please ensure your app is up to date and try restarting it. If the issue persists, contact our support team.',
                        ),
                        actions: [
                          TextButton(
                            child: Text('OK'),
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                          ),
                        ],
                      );
                    },
                  );
                },
              ),
              SizedBox(height: 20),
              Text(
                'Contact Support:',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                'For further assistance, you can reach out to our support team at:',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 10),
              Text(
                'Email: support@agritemp.com\nPhone: +1 800 123 4567',
                style: TextStyle(fontSize: 16),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
