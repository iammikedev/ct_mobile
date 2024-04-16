import 'package:flutter/material.dart';

class CardStatsWidget extends StatelessWidget {
  const CardStatsWidget({
    super.key,
    required this.count,
    required this.title,
    this.backgroundColor = Colors.blue,
  });

  final int count;
  final String title;
  final Color backgroundColor;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Card(
      elevation: 0,
      color: backgroundColor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            '$count',
            style: textTheme.headlineMedium?.copyWith(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            title,
            style: textTheme.bodyMedium?.copyWith(
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
