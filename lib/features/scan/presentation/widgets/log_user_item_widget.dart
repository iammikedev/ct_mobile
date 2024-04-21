import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:scanner/features/scan/scan.dart';

class LogEstablishmentItemWidget extends StatelessWidget {
  const LogEstablishmentItemWidget({super.key, required this.item});

  final LogsEntity item;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Card(
      elevation: 2,
      color: Colors.white,
      borderOnForeground: false,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                const Icon(Icons.storefront),
                const SizedBox(width: 8),
                Text(
                  item.establishment?.establishmentName ?? 'Establishment Name',
                  style: textTheme.titleMedium,
                ),
              ],
            ),
            const SizedBox(height: 8),
            Text(
              item.establishment?.address ?? 'Establishment Address',
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
