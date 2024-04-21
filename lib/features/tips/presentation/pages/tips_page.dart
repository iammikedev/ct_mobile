// ignore_for_file: lines_longer_than_80_chars

import 'package:flutter/material.dart';
import 'package:scanner/core/themes/themes.dart';

class TipsPage extends StatefulWidget {
  const TipsPage({super.key});

  @override
  State<StatefulWidget> createState() {
    return TipsPageState();
  }
}

class TipsPageState extends State<TipsPage> {
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: Sizing.basePadding,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 32),
              Text(
                'Safety Tips',
                style: textTheme.headlineMedium?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 20),
              Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce non finibus metus. Quisque scelerisque velit id ligula hendrerit, eu tempor diam placerat.',
                style: textTheme.bodyMedium?.copyWith(
                  color: Colors.black87,
                ),
              ),
              const SizedBox(height: 48),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset('assets/img/washing-hands.png'),
                  const SizedBox(height: 24),
                  Text(
                    'Wash your hands regularly',
                    style: textTheme.titleLarge,
                  ),
                  const SizedBox(height: 12),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16,
                    ),
                    child: Text(
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce non finibus metus.',
                      style: textTheme.bodyMedium?.copyWith(
                        color: Colors.black87,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 48),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset('assets/img/social-distancing.png'),
                  const SizedBox(height: 24),
                  Text(
                    'Social Distancing',
                    style: textTheme.titleLarge,
                  ),
                  const SizedBox(height: 12),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Text(
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce non finibus metus.',
                      style: textTheme.bodyMedium?.copyWith(
                        color: Colors.black87,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 32),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset('assets/img/face-mask.png'),
                  const SizedBox(height: 24),
                  Text(
                    'Always wear your mask',
                    style: textTheme.titleLarge,
                  ),
                  const SizedBox(height: 12),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Text(
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce non finibus metus.',
                      style: textTheme.bodyMedium?.copyWith(
                        color: Colors.black87,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 32),
            ],
          ),
        ),
      ),
    );
  }
}
