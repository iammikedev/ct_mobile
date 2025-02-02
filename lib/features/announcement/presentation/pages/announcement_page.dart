import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:scanner/core/core.dart';
import 'package:scanner/features/announcement/announcement.dart';

class AnnouncementPage extends StatefulWidget {
  const AnnouncementPage({super.key});

  @override
  State<AnnouncementPage> createState() => _AnnouncementPageState();
}

class _AnnouncementPageState extends State<AnnouncementPage> {
  @override
  void initState() {
    getAnnouncements();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Scaffold(
      appBar: AppBar(),
      body: RefreshIndicator(
        onRefresh: () async => getAnnouncements(),
        child: SingleChildScrollView(
          physics: const AlwaysScrollableScrollPhysics(),
          padding: Sizing.basePadding,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Announcements',
                style: textTheme.headlineMedium?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 16),
              BlocBuilder<AnnouncementBloc, AnnouncementState>(
                buildWhen: (previous, current) =>
                    current is GetAnnouncementsSuccessState ||
                    current is GetAnnouncementsLoadingState ||
                    current is GetAnnouncementsErrorState,
                builder: (context, state) {
                  final isLoading = state is GetAnnouncementsLoadingState;
                  final isSuccess = state is GetAnnouncementsSuccessState;

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
    );
  }

  void getAnnouncements() {
    const params = GetAnnouncementsParamsEntity();
    BlocProvider.of<AnnouncementBloc>(context)
        .add(const OnGetAnnouncements(params));
  }
}
