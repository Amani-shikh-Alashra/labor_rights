import 'package:flutter/material.dart';
import 'package:workers_right/screen/right_detail_page.dart';

import '../main.dart';

class RightsListPage extends StatelessWidget {
  final String category;
  const RightsListPage({super.key, required this.category});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: const Color(0xfffdf4efff),
          title: Text(
            category,
            style: const TextStyle(
                color: Color(0xff8764bf),
                fontWeight: FontWeight.bold,
                fontSize: 25),
          )),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: laborRights[category]!.map((right) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                color: const Color(0xffFDF4EFFF),
                child: ListTile(
                  title: Center(
                      child: Text(
                    style: const TextStyle(color: Colors.black87, fontSize: 18),
                    right['title']!,
                  )),
                  trailing: const Icon(
                    Icons.arrow_forward,
                    size: 20,
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => RightDetailPage(
                          title: right['title']!,
                          description: right['description']!,
                        ),
                      ),
                    );
                  },
                ),
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}
