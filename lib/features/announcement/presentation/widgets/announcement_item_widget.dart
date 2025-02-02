import 'package:flutter/material.dart';
import 'package:flutter_widget_from_html_core/flutter_widget_from_html_core.dart';
import 'package:nb_utils/nb_utils.dart';

class AnnouncementItemWidget extends StatelessWidget {
  const AnnouncementItemWidget({
    super.key,
    required this.title,
    required this.description,
    required this.postedAt,
  });

  final String title;
  final String description;
  final DateTime postedAt;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Card(
      elevation: 3,
      color: Colors.white,
      surfaceTintColor: Colors.white,
      shadowColor: Colors.grey.shade50,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title, style: textTheme.titleMedium),
            const SizedBox(height: 2),
            HtmlWidget(description),
            const SizedBox(height: 8),
            Text(
              postedAt.toLocal().timeAgo,
              style: textTheme.bodySmall?.copyWith(
                color: Colors.grey,
              ),
            )
          ],
        ),
      ),
    );
  }
}
