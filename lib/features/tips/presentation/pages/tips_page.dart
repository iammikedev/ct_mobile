// ignore_for_file: lines_longer_than_80_chars

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:scanner/core/themes/themes.dart';
import 'package:scanner/features/profile/profile.dart';

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

    return RefreshIndicator(
      onRefresh: () async => getProfile(),
      child: Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            physics: const AlwaysScrollableScrollPhysics(),
            padding: Sizing.basePadding.copyWith(top: 16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Safety Tips',
                  style: textTheme.headlineMedium?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 20),
                Text(
                  'COVID-19 remains a concern, and taking simple precautions can help protect ourselves and others. By following these basic safety measures, we can reduce the risk of infection and maintain a healthier environment.',
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
                      'Wash Your Hands Regularly',
                      style: textTheme.titleLarge,
                    ),
                    const SizedBox(height: 12),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 16,
                      ),
                      child: Text(
                        'Use soap and water for at least 20 seconds. If soap and water are unavailable, use a hand sanitizer with at least 60% alcohol. Wash hands after touching surfaces, coughing, sneezing, or before eating',
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
                      'Practice Social Distancing',
                      style: textTheme.titleLarge,
                    ),
                    const SizedBox(height: 12),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: Text(
                        'Maintain at least 6 feet (about 2 meters) of distance from others. Avoid crowded places and close-contact settings. Limit unnecessary physical contact, such as handshakes or hugs.',
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
                      'Always Wear Your Mask',
                      style: textTheme.titleLarge,
                    ),
                    const SizedBox(height: 12),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: Text(
                        'Wear a mask that covers both your nose and mouth. Use a high-quality mask, especially in crowded or indoor areas. Replace disposable masks regularly and wash reusable masks after each use.',
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
      ),
    );
  }

  void getProfile() {
    BlocProvider.of<ProfileBloc>(context).add(OnGetProfile());
  }
}
