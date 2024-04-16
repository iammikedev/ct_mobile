import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:scanner/core/themes/themes.dart';
import 'package:scanner/features/home/home.dart';
import 'package:scanner/features/profile/profile.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    BlocProvider.of<ProfileBloc>(context).add(OnGetCachedProfile());
    final textTheme = Theme.of(context).textTheme;

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: Sizing.basePadding,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 32),
              BlocBuilder<ProfileBloc, ProfileState>(
                builder: (context, state) {
                  final isSuccess = state is GotCachedProfile;
                  final profile = isSuccess ? state.res : null;
                  return Text(
                    'Hello, ${profile?.firstName ?? ''}!',
                    style: textTheme.headlineMedium?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  );
                },
              ),
              const SizedBox(height: 4),
              Text(
                'Check the latest health update',
                style: textTheme.bodyLarge,
              ),
              const SizedBox(height: 32),
              GridView(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 6,
                  childAspectRatio: 1.5,
                ),
                children: [
                  const CardStatsWidget(
                    count: 120,
                    title: 'Total Cases',
                  ),
                  const CardStatsWidget(
                    count: 10,
                    title: 'Active Cases',
                    backgroundColor: Colors.indigo,
                  ),
                  CardStatsWidget(
                    count: 50,
                    title: 'Total Deaths',
                    backgroundColor: Colors.red[300]!,
                  ),
                  CardStatsWidget(
                    count: 60,
                    title: 'Total Recoveries',
                    backgroundColor: Colors.green[300]!,
                  ),
                ],
              ),
              const SizedBox(height: 32),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Announcements',
                    style: textTheme.headlineSmall?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'See All',
                    style: textTheme.bodyMedium?.copyWith(
                      color: Theme.of(context).primaryColor,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16),
              Card(
                elevation: 0,
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Free COVID-19 testing',
                        style: textTheme.titleMedium,
                      ),
                      const SizedBox(height: 2),
                      Text(
                        'Go to your nearest health center to get tested for free',
                        style: textTheme.bodyMedium,
                      ),
                      const SizedBox(height: 8),
                      Text(
                        DateTime.now().timeAgo,
                        style: textTheme.bodySmall?.copyWith(
                          color: Colors.grey,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
