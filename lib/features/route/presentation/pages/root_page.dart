import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:scanner/core/bloc/base_state.dart';
import 'package:scanner/core/errors/failure.dart';
import 'package:scanner/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:scanner/features/auth/presentation/pages/login_page.dart';
import 'package:scanner/features/dashboard/dashboard.dart';
import 'package:scanner/features/route/presentation/bloc/route_bloc.dart';

class RootPage extends StatelessWidget {
  const RootPage({super.key});

  @override
  Widget build(BuildContext context) {
    // BlocProvider.of<RouteBloc>(context).add(OnCheckAuth());

    return MultiBlocListener(
      listeners: [
        BlocListener<RouteBloc, RouteState>(
          listener: (context, state) {
            if (state is GotCheckAuth) {
              // BlocProvider.of<AuthBloc>(context).add(OnCheckToken());
              const DashboardPage().launch(
                context,
                isNewTask: true,
                pageRouteAnimation: PageRouteAnimation.Fade,
                duration: const Duration(
                  milliseconds: 200,
                ),
              );
            }
          },
        ),
        BlocListener<AuthBloc, AuthState>(
          listener: (context, state) {
            if (state is ErrorState) {
              if (state.error is StorageFailure) {
                const LoginPage().launch(
                  context,
                  isNewTask: true,
                  pageRouteAnimation: PageRouteAnimation.Fade,
                  duration: const Duration(
                    milliseconds: 200,
                  ),
                );
              }
            }
          },
        ),
      ],
      child: const Placeholder(
        color: Colors.white,
      ),
    );
  }
}
