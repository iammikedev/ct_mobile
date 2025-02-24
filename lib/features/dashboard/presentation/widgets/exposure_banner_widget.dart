import 'package:flutter/material.dart';
import 'package:scanner/core/core.dart';

class ExposureBannerWidget extends StatefulWidget {
  const ExposureBannerWidget({super.key, required this.status});

  final HealthStatusEnum? status;

  @override
  State<ExposureBannerWidget> createState() => _ExposureBannerWidgetState();
}

class _ExposureBannerWidgetState extends State<ExposureBannerWidget> {
  bool _isVisible = true; // Control banner visibility
  final _statusExclusion = [
    HealthStatusEnum.normal,
    HealthStatusEnum.deceased,
  ];
  @override
  Widget build(BuildContext context) {
    if (!_isVisible ||
        widget.status == null ||
        _statusExclusion.contains(widget.status)) {
      return const SizedBox.shrink();
    }

    return Container(
      color: widget.status?.color, // Warning color
      padding: const EdgeInsets.all(12),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(widget.status?.icon, color: Colors.white), // Warning icon
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  widget.status?.title ?? '',
                  style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  widget.status?.description ?? '',
                  style: const TextStyle(color: Colors.white),
                ),
              ],
            ),
          ),
          IconButton(
            icon: const Icon(Icons.close, color: Colors.white),
            onPressed: () {
              _isVisible = false; // Hide banner when dismissed
              setState(() {});
            },
          ),
        ],
      ),
    );
  }
}
