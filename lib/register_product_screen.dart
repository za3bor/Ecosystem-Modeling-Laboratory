import 'package:flutter/material.dart';
import 'package:multi_select_flutter/multi_select_flutter.dart';
import 'package:schoolproject/home_screen.dart';

class RegisterProductScreen extends StatefulWidget {
  const RegisterProductScreen({super.key});
  @override
  State<RegisterProductScreen> createState() => _RegisterProductScreenState();
}

class _RegisterProductScreenState extends State<RegisterProductScreen> {
  final _formKey = GlobalKey<FormState>();

  // List of available products for selection (Vegetables, Fruits)
  final List<String> _availableProducts = [
    'Cucumbers',
    'Potatoes',
    'Tomatoes',
    'Carrots',
    'Lettuce',
    'Spinach',
    'Onions',
    'Apples',
    'Bananas',
    'Oranges',
    'Grapes',
  ];

  List<String> _selectedProducts = [];

  // Function to handle form submission
  void _submitForm() {
    if (_formKey.currentState!.validate()) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const HomeScreen()),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Register Products')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // MultiSelect Dropdown for selecting multiple products
              MultiSelectDialogField(
                items:
                    _availableProducts
                        .map((e) => MultiSelectItem<String>(e, e))
                        .toList(),
                title: Text("Select Products"),
                selectedColor: Colors.green,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.green),
                  borderRadius: BorderRadius.all(Radius.circular(5)),
                ),
                buttonIcon: Icon(Icons.arrow_drop_down, color: Colors.green),
                buttonText: Text(
                  _selectedProducts.isEmpty
                      ? "Select Products"
                      : _selectedProducts.join(', '),
                  style: TextStyle(color: Colors.green),
                ),
                onConfirm: (values) {
                  setState(() {
                    _selectedProducts = values.cast<String>();
                  });
                },
              ),
              SizedBox(height: 40),

              // Submit Button
              Center(
                child: ElevatedButton(
                  onPressed: _submitForm,
                  child: Text('Register Products'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
