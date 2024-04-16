import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:scanner/features/scan/scan.dart';

class LogUserItemWidget extends StatelessWidget {
  const LogUserItemWidget({super.key, required this.item});

  final LogsEntity item;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Card(
      elevation: 2,
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                const Icon(Icons.person),
                const SizedBox(width: 8),
                Text(
                  item.user?.name ?? 'User Name',
                  style: textTheme.titleMedium,
                ),
              ],
            ),
            const SizedBox(height: 8),
            Text(
              item.user?.email ?? 'User Email Address',
              style: textTheme.bodyMedium?.copyWith(
                color: Colors.black54,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              item.createdAt.timeAgo,
              style: textTheme.bodySmall?.copyWith(
                color: Colors.grey,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
