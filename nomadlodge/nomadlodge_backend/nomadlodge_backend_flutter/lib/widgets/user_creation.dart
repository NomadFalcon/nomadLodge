import 'package:flutter/material.dart';
import 'package:nomadlodge_backend_client/nomadlodge_backend_client.dart';
import '../serverpod_client.dart';

class UserCreation extends StatefulWidget {
  @override
  _UserCreationState createState() => _UserCreationState();
}
List<String> countryList = ['USA', 'Canada', 'Mexico', 'Brazil', 'Portugal'];
class _UserCreationState extends State<UserCreation> {
  UserType? _selectedUserType;
  String? _selectedCountry;
  final _nameController = TextEditingController(text: sessionManager.signedInUser?.fullName);
  final _emailController = TextEditingController(text: sessionManager.signedInUser?.email);
  final _phoneontroller = TextEditingController(text: "");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('User Creation Form'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            Text('Select User Type:'),
            DropdownButton<UserType>(
              value: _selectedUserType,
              onChanged: (UserType? newValue) {
              setState(() {
                _selectedUserType = newValue;
              });
              },
              items: UserType.values.map((UserType userType) {
              return DropdownMenuItem<UserType>(
                value: userType,
                child: Text(userType.toString().split('.').last),
              );
              }).toList(),
            ),
            SizedBox(height: 20),
            TextField(
              controller: _nameController,
              decoration: InputDecoration(
              labelText: 'Name',
              ),
            ),
            SizedBox(height: 20),
            TextField(
              controller: _emailController,
              decoration: InputDecoration(
              labelText: 'Email',
              ),
              keyboardType: TextInputType.emailAddress,
            ),
            SizedBox(height: 20),
            TextField(
              controller: _phoneontroller,
              decoration: InputDecoration(
              labelText: 'Phone Number',
              ),
              keyboardType: TextInputType.phone,
            ),
            SizedBox(height: 20),
            Text('Select Country:'),
            DropdownButton<String>(
              value: _selectedCountry,
              onChanged: (String? newValue) {
              setState(() {
                _selectedCountry = newValue;
              });
              },
              items: countryList.map((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
              }).toList(),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () async {
              if (_selectedUserType != null && _nameController.text.isNotEmpty) {
                final newUser = User(name: _nameController.text, email: _emailController.text, authUserIdentifier: sessionManager.signedInUser!.userIdentifier, userType: _selectedUserType!, country: _selectedCountry, phone: _phoneontroller.text);
                final response = await client.user.createUser(newUser);
                if (response != null) {
                Navigator.of(context).pop();
                }
              } else {
                ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text('Please select a user type')),
                );
              }
              },
              child: Text('Submit'),
            ),
          ],
        ),
      ),
    );
  }
}