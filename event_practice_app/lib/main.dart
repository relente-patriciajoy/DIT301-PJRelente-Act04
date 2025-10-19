import 'package:flutter/material.dart';

void main() {
  runApp(const EventPracticeApp());
}

class EventPracticeApp extends StatelessWidget {
  const EventPracticeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'Event Practice App', home: EventFormScreen());
  }
}

class EventFormScreen extends StatefulWidget {
  @override
  _EventFormScreenState createState() => _EventFormScreenState();
}

class _EventFormScreenState extends State<EventFormScreen> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController ageController = TextEditingController();
  String message = '';

  void submitData() {
    String name = nameController.text.trim();
    String ageText = ageController.text.trim();

    if (name.isEmpty || ageText.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Please fill in all fields.')),
      );
      return;
    }

    int? age;
    try {
      age = int.parse(ageText);
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Please enter a valid age.')),
      );
      return;
    }

    setState(() {
      message = 'Hello $name! You are $age years old.';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Event Practice App')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: nameController,
              decoration: const InputDecoration(labelText: 'Name'),
            ),
            TextField(
              controller: ageController,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(labelText: 'Age'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(onPressed: submitData, child: const Text('Submit')),
            const SizedBox(height: 20),
            Text(message, style: const TextStyle(fontSize: 16)),
          ],
        ),
      ),
    );
  }
}
