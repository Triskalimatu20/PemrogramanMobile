import 'package:flutter/material.dart';

@immutable
class FilterItem extends StatelessWidget {
  const FilterItem({super.key, required this.color, this.onFilterSelected});

  final Color color;
  final VoidCallback? onFilterSelected;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onFilterSelected,
      child: AspectRatio(
        aspectRatio: 1.0,
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: ClipOval(
            child: Image.network(
              'https://images.unsplash.com/photo-1557682250-33bd709cbe85?w=200&h=200&fit=crop',
              color: color.withValues(alpha: 0.5),
              colorBlendMode: BlendMode.hardLight,
              loadingBuilder: (context, child, loadingProgress) {
                if (loadingProgress == null) return child;
                return Container(
                  color: Colors.grey[800],
                  child: const Center(
                    child: CircularProgressIndicator(
                      strokeWidth: 2,
                      color: Colors.white,
                    ),
                  ),
                );
              },
              errorBuilder: (context, error, stackTrace) {
                return Container(
                  color: color.withValues(alpha: 0.3),
                  child: const Icon(
                    Icons.error_outline,
                    color: Colors.white,
                    size: 16,
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
