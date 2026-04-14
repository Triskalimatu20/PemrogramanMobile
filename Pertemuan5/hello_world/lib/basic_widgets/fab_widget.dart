import 'package:flutter/material.dart';

class FabWidget extends StatelessWidget {
  final VoidCallback onPressed;

  const FabWidget({super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: onPressed,
      backgroundColor: Colors.pink,
      child: const Icon(Icons.thumb_up),
    );
  }
}
