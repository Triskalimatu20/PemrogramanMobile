import 'dart:io';
import 'package:flutter/material.dart';
import 'filter_selector.dart';

class DisplayPictureScreen extends StatefulWidget {
  final String imagePath;

  const DisplayPictureScreen({super.key, required this.imagePath});

  @override
  State<DisplayPictureScreen> createState() => _DisplayPictureScreenState();
}

class _DisplayPictureScreenState extends State<DisplayPictureScreen> {
  final _filters = [
    Colors.white,
    ...List.generate(
      Colors.primaries.length,
      (index) => Colors.primaries[(index * 4) % Colors.primaries.length],
    ),
  ];

  final _filterColor = ValueNotifier<Color>(Colors.white);

  void _onFilterChanged(Color color) {
    _filterColor.value = color;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Photo Filter - 244107060025')),
      body: Stack(
        children: [
          Positioned.fill(
            child: ValueListenableBuilder(
              valueListenable: _filterColor,
              builder: (context, color, child) {
                return Image.file(
                  File(widget.imagePath),
                  fit: BoxFit.cover,
                  color: color.withValues(alpha: 0.5),
                  colorBlendMode: BlendMode.color,
                );
              },
            ),
          ),

          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: FilterSelector(
              filters: _filters,
              onFilterChanged: _onFilterChanged,
              imagePath: widget.imagePath,
            ),
          ),
        ],
      ),
    );
  }
}
