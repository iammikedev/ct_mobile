import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'package:scanner/core/bloc/base_state.dart';
import 'package:scanner/core/themes/themes.dart';
import 'package:scanner/features/profile/profile.dart';
import 'package:skeletonizer/skeletonizer.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    BlocProvider.of<ProfileBloc>(context).add(OnGetProfile());

    return BlocConsumer<ProfileBloc, ProfileState>(
      listener: (context, state) {},
      buildWhen: (previous, current) => current is GotProfile,
      builder: (context, state) {
        final isSuccess = state is GotProfile;
        final profile = isSuccess ? state.res : null;

        return RefreshIndicator(
          onRefresh: () async => getProfile(context),
          child: Scaffold(
            body: SafeArea(
              child: SingleChildScrollView(
                physics: const AlwaysScrollableScrollPhysics(),
                padding: Sizing.basePadding.copyWith(top: 16),
                child: Skeletonizer(
                  enabled: state is LoadingState,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Profile',
                        style: textTheme.headlineMedium?.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        'Manage your profile',
                        style: textTheme.bodyLarge?.copyWith(
                          color: Colors.black87,
                        ),
                      ),
                      const SizedBox(height: 32),
                      Text(
                        '${profile?.firstName ?? ''} ${profile?.lastName ?? ''}',
                        style: textTheme.headlineMedium,
                      ),
                      Text(
                        profile?.address ?? '',
                        style: textTheme.bodyMedium,
                      ),
                      const SizedBox(height: 32),
                      if (profile == null)
                        const SizedBox.shrink()
                      else
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16),
                          child: QrImageView(
                            padding: EdgeInsets.zero,
                            data: '${profile.id}',
                            version: QrVersions.auto,
                          ),
                        ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }

  void getProfile(BuildContext context) {
    BlocProvider.of<ProfileBloc>(context).add(OnGetProfile());
  }
}
