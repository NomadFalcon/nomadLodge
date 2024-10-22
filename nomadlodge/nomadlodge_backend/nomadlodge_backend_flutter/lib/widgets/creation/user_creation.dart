import 'package:flutter/material.dart';
import 'package:nomadlodge_backend_client/nomadlodge_backend_client.dart';
import '../../serverpod_client.dart';

class UserCreationPage extends StatefulWidget {
  const UserCreationPage({Key? key, required this.availableUserType, required this.onUserCreated, required this.isUserForAdditionalUser, this.location}) : super(key: key);
  final List<UserType>? availableUserType;
  final bool isUserForAdditionalUser;
  final Location? location;
  final Function(User)? onUserCreated;
  @override
  _UserCreationPageState createState() => _UserCreationPageState();
}
List<String> countryList = ['USA', 'Canada', 'Mexico', 'Brazil', 'Portugal'];
class _UserCreationPageState extends State<UserCreationPage> {
  UserType? _selectedUserType;
  String? _selectedCountry;
  List<UserType> _userTypes = UserType.values;
  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  final _phoneontroller = TextEditingController(text: "");

  @override
  void initState() {
    // TODO: implement initState
    if(widget.availableUserType != null) {
      _userTypes = widget.availableUserType!;
    }
    if (!widget.isUserForAdditionalUser) {
      String?  name = sessionManager.signedInUser?.fullName;
      if (name != null) {
        _nameController.text = name;
      }
      String?  email = sessionManager.signedInUser?.email;
      if (email != null) {
        _emailController.text = email;
      }
    }
    
    super.initState();
  }
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
              items: _userTypes.map((UserType userType) {
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
                final newUser = User(name: _nameController.text, email: _emailController.text, authUserIdentifier: (widget.isUserForAdditionalUser) ? null : sessionManager.signedInUser!.userIdentifier, userType: _selectedUserType!, country: _selectedCountry, phone: _phoneontroller.text);
                final response = await client.user.createUser(newUser, widget.location);
                if (response != null) {
                  Navigator.of(context).pop();
                  if (widget.onUserCreated != null){
                    widget.onUserCreated!(newUser);
                  }
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('Failed to create user, email already exists')),
                  );
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