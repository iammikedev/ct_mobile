import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:scanner/core/themes/themes.dart';
import 'package:scanner/features/announcement/announcement.dart';
import 'package:scanner/features/announcement/presentation/pages/announcement_page.dart';
import 'package:scanner/features/dashboard/dashboard.dart';
import 'package:scanner/features/home/home.dart';
import 'package:scanner/features/profile/profile.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    initializeCalls();
    super.initState();
  }

  void initializeCalls() {
    getStats();
    getLatestAnnouncements();
  }

  void getLatestAnnouncements() {
    const params = GetAnnouncementsParamsEntity(limit: 5);
    BlocProvider.of<AnnouncementBloc>(context).add(
      const OnGetLatestAnnouncements(params),
    );
  }

  void getStats() {
    BlocProvider.of<StatsBloc>(context).add(const OnGetStats());
  }

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Scaffold(
      body: SafeArea(
        child: RefreshIndicator(
          onRefresh: () async {
            getProfile();
            initializeCalls();
          },
          child: SingleChildScrollView(
            padding: Sizing.basePadding.copyWith(top: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                BlocBuilder<ProfileBloc, ProfileState>(
                  buildWhen: (previous, current) => current is GotProfile,
                  builder: (context, state) {
                    final isSuccess = state is GotProfile;
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
                  style: textTheme.bodyLarge?.copyWith(
                    color: Colors.black87,
                  ),
                ),
                const SizedBox(height: 32),
                BlocBuilder<StatsBloc, StatsState>(
                  buildWhen: (previous, current) =>
                      current is GetStatsSuccessState ||
                      current is GetStatsLoadingState ||
                      current is GetStatsErrorState,
                  builder: (context, state) {
                    final isSuccess = state is GetStatsSuccessState;
                    final stats = isSuccess ? state.stats : null;

                    return GridView(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: 6,
                        childAspectRatio: 1.5,
                      ),
                      children: [
                        CardStatsWidget(
                          count: stats?.totalCases ?? 0,
                          title: 'Total Cases',
                        ),
                        CardStatsWidget(
                          count: stats?.activeCases ?? 0,
                          title: 'Active Cases',
                          backgroundColor: Colors.indigo,
                        ),
                        CardStatsWidget(
                          count: stats?.totalDeaths ?? 0,
                          title: 'Total Deaths',
                          backgroundColor: Colors.red[300]!,
                        ),
                        CardStatsWidget(
                          count: stats?.totalRecoveries ?? 0,
                          title: 'Total Recoveries',
                          backgroundColor: Colors.green[300]!,
                        ),
                      ],
                    );
                  },
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
                    GestureDetector(
                      onTap: () {
                        const AnnouncementPage().launch(context);
                      },
                      child: Text(
                        'See All',
                        style: textTheme.bodyMedium?.copyWith(
                          color: Theme.of(context).primaryColor,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 16),
                BlocBuilder<AnnouncementBloc, AnnouncementState>(
                  buildWhen: (previous, current) =>
                      current is GetLatestAnnouncementsSuccessState ||
                      current is GetLatestAnnouncementsLoadingState ||
                      current is GetLatestAnnouncementsErrorState,
                  builder: (context, state) {
                    final isLoading =
                        state is GetLatestAnnouncementsLoadingState;
                    final isSuccess =
                        state is GetLatestAnnouncementsSuccessState;

                    if (isLoading) {
                      return const Padding(
                        padding: EdgeInsets.only(top: 16),
                        child: Center(child: CircularProgressIndicator()),
                      );
                    }

                    if (!isSuccess) {
                      return const Padding(
                        padding: EdgeInsets.only(top: 16),
                        child: Center(child: Text('No announcements')),
                      );
                    }

                    final announcements = state.announcements.data;

                    return ListView.separated(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      padding: EdgeInsets.zero,
                      itemBuilder: (context, i) {
                        final announcement = announcements[i];

                        return AnnouncementItemWidget(
                          title: announcement.title,
                          description: announcement.description,
                          postedAt: announcement.publishAt,
                        );
                      },
                      separatorBuilder: (_, __) => const SizedBox(height: 8),
                      itemCount: announcements.length,
                    );
                  },
                ),
                const SizedBox(height: 16),
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
