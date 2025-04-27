import 'package:flutter/material.dart';
import 'package:schoolproject/home_screen.dart';
import 'package:schoolproject/register_product_screen.dart';

class RegisterScreen extends StatefulWidget {
  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final _formKey = GlobalKey<FormState>();
  String _name = '';
  String _phone = '';
  String _selectedCountry = 'United States';
  String _selectedCity = '';
  final List<String> _countries = ['United States', 'India', 'Australia'];
  final Map<String, List<String>> _countryCities = {
    'United States': ['New York', 'Los Angeles', 'Chicago'],
    'India': ['Mumbai', 'Delhi', 'Bangalore'],
    'Australia': ['Sydney', 'Melbourne', 'Brisbane'],
  };

  // Function to handle form submission
  void _submitForm() {
    if (_formKey.currentState!.validate()) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const RegisterProductScreen()),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Register')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Name Field
              TextFormField(
                decoration: InputDecoration(labelText: 'Name'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your name';
                  }
                  return null;
                },
                onSaved: (value) {
                  _name = value!;
                },
              ),
              SizedBox(height: 20),

              // Phone Number Field
              TextFormField(
                decoration: InputDecoration(labelText: 'Phone Number'),
                keyboardType: TextInputType.phone,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your phone number';
                  }
                  return null;
                },
                onSaved: (value) {
                  _phone = value!;
                },
              ),
              SizedBox(height: 20),

              // Country Dropdown
              DropdownButtonFormField<String>(
                value: _selectedCountry,
                decoration: InputDecoration(labelText: 'Country'),
                onChanged: (newCountry) {
                  setState(() {
                    _selectedCountry = newCountry!;
                    _selectedCity = ''; // Reset city when country changes
                  });
                },
                items:
                    _countries.map((country) {
                      return DropdownMenuItem<String>(
                        value: country,
                        child: Text(country),
                      );
                    }).toList(),
              ),
              SizedBox(height: 20),

              // City Dropdown based on selected country
              DropdownButtonFormField<String>(
                value: _selectedCity.isEmpty ? null : _selectedCity,
                decoration: InputDecoration(labelText: 'City'),
                onChanged: (newCity) {
                  setState(() {
                    _selectedCity = newCity!;
                  });
                },
                items:
                    _countryCities[_selectedCountry]!.map((city) {
                      return DropdownMenuItem<String>(
                        value: city,
                        child: Text(city),
                      );
                    }).toList(),
              ),
              SizedBox(height: 40),

              // Submit Button
              Center(
                child: ElevatedButton(
                  onPressed: _submitForm,
                  child: Text('Register'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
