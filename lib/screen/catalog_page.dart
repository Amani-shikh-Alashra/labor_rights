import 'package:flutter/material.dart';
import 'package:workers_right/screen/rights_list_page.dart';

import '../main.dart';

class CatalogPage extends StatelessWidget {
  const CatalogPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xfffdf4efff),
        title: const Center(
            child: Text(
          'Labor Rights Catalog',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Color(0xff8764bf),
          ),
        )),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.count(
          crossAxisCount: 2,
          padding: const EdgeInsets.all(2.0),
          children: laborRights.keys.map((category) {
            return GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => RightsListPage(category: category),
                  ),
                );
              },
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(
                  color: const Color(0xffFDF4EFFF),
                  margin: const EdgeInsets.all(8.0),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(categoryIcons[category] ?? Icons.book,
                            size: 60.0, color: const Color(0xff8764bf)),
                        const SizedBox(height: 20.0),
                        Text(
                          category,
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black54),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}
