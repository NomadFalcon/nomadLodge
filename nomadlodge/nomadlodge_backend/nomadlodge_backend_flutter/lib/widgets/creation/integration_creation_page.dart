import 'package:flutter/material.dart';
import 'package:nomadlodge_backend_client/nomadlodge_backend_client.dart';
import 'package:wolt_modal_sheet/wolt_modal_sheet.dart';

import '../../serverpod_client.dart';


class IntegrationCreationPage extends StatefulWidget {
  const IntegrationCreationPage({Key? key, required this.currentUser, required this.onIntegrationCreated}) : super(key: key);
    final User currentUser;
    final Function onIntegrationCreated;
  @override
  _IntegrationCreationPageState createState() => _IntegrationCreationPageState();
}

class _IntegrationCreationPageState extends State<IntegrationCreationPage> {
  IntegrationType? _selectedType;
  final TextEditingController _apiKeyController = TextEditingController();
  @override
  void initState() {
    // TODO: remove this it is just for testing
    _apiKeyController.text = "FSKUqQbHEP4MQAILQkoDwk0zu0imYnuny3ryHTpxrT";
    _selectedType = IntegrationType.smoobu;
    super.initState();
  }

  void createNewIntegration() async {
    final integration = Integration(
      integrationType: _selectedType!,
      apiKey: _apiKeyController.text,
      userId: widget.currentUser.id!,
    );
    await client.integration.createIntegration(integration);
    widget.onIntegrationCreated();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Integration Creation'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            DropdownButton<IntegrationType>(
              hint: Text('Select Integration Type'),
              value: _selectedType,
              onChanged: (IntegrationType? newValue) {
                setState(() {
                  _selectedType = newValue;
                });
              },
              items: IntegrationType.values.map((IntegrationType type) {
                return DropdownMenuItem<IntegrationType>(
                  value: type,
                  child: Text(type.toString().split('.').last),
                );
              }).toList(),
            ),
            SizedBox(height: 20),
            TextField(
              controller: _apiKeyController,
              decoration: InputDecoration(
                labelText: 'API Key',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Handle the submission logic here
                print('Selected Type: $_selectedType');
                print('API Key: ${_apiKeyController.text}');
                createNewIntegration();
              },
              child: Text('Submit'),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    _apiKeyController.dispose();
    super.dispose();
  }
}