import 'package:flutter/material.dart';

class NavigationSecond extends StatefulWidget {
  const NavigationSecond({super.key});

  @override
  State<NavigationSecond> createState() => _NavigationSecondState();
}

class _NavigationSecondState extends State<NavigationSecond> {
  @override
  Widget build(BuildContext context) {
    Color color;

    return Scaffold(
      appBar: AppBar(title: const Text('Navigation Second Screen - Triska')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(
              child: const Text('Purple'),
              onPressed: () {
                color = Colors.deepPurple;
                Navigator.pop(context, color);
              },
            ),

            ElevatedButton(
              child: const Text('Pink'),
              onPressed: () {
                color = Colors.pink;
                Navigator.pop(context, color);
              },
            ),

            ElevatedButton(
              child: const Text('Teal'),
              onPressed: () {
                color = Colors.teal;
                Navigator.pop(context, color);
              },
            ),
          ],
        ),
      ),
    );
  }
}
