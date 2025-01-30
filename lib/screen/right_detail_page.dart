import 'package:flutter/material.dart';

class RightDetailPage extends StatelessWidget {
  final String title;
  final String description;

  const RightDetailPage(
      {super.key, required this.title, required this.description});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: const Color(0xfffdf4efff),
          title: Text(
            title,
            style: const TextStyle(
                color: Color(0xff8764bf), fontWeight: FontWeight.bold),
          )),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Description:",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Colors.black54),
            ),
            Text(description, style: const TextStyle(fontSize: 18.0)),
          ],
        ),
      ),
    );
  }
}
