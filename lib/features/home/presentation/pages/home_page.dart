import 'package:flutter/material.dart';
import 'package:scanner/core/themes/themes.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: Sizing.basePadding,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 32),
              Text(
                'Hello, Michael',
                style: textTheme.headlineMedium,
              ),
              const SizedBox(height: 4),
              Text(
                'Check the latest health update',
                style: textTheme.bodyLarge,
              ),
              GridView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                ),
                itemBuilder: (context, index) {
                  return Card(
                    child: Column(
                      children: [
                        Text('Card $index'),
                        ElevatedButton(
                          onPressed: () {},
                          child: const Text('Button'),
                        )
                      ],
                    ),
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
