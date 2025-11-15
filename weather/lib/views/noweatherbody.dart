import 'package:flutter/material.dart';
import 'package:weather/views/search_view.dart';

class NoweatherBoyd extends StatelessWidget {
  const NoweatherBoyd({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Weather App'),
        backgroundColor: const Color(0xFF00C7F9),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) {
                    return const SearchView();
                  }),
                );
              },
              icon: const Icon(Icons.search_outlined))
        ],
      ),
      body: const Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text('There is no Weather 😂'),
            SizedBox(
              height: 16,
            ),
            Text('Searching Now 🔎')
          ],
        ),
      ),
    );
  }
}
