import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:scanner/core/bloc/base_state.dart';
import 'package:scanner/core/themes/branding.dart';
import 'package:scanner/features/auth/auth.dart';
import 'package:scanner/features/dashboard/dashboard.dart';
import 'package:scanner/features/home/home.dart';
import 'package:scanner/features/profile/profile.dart';
import 'package:scanner/features/scan/scan.dart';
import 'package:scanner/features/tips/tips.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});

  @override
  State<StatefulWidget> createState() => DashboardPageState();
}

class DashboardPageState extends State<DashboardPage> {
  final pageController = PageController();
  final pages = [
    const HomePage(),
    const LogsPage(),
    const TipsPage(),
    const ProfilePage(),
  ];

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocListener(
      listeners: [
        BlocListener<AuthBloc, AuthState>(
          listener: (context, state) {
            if (state is GotLogout) {
              const LoginPage().launch(context, isNewTask: true);
            }
          },
        ),
        BlocListener<DashboardBloc, DashboardState>(
          listener: (context, state) {
            if (state is SuccessState<int>) {
              pageController.jumpToPage(state.data);
            }
          },
        ),
      ],
      child: BlocBuilder<DashboardBloc, DashboardState>(
        builder: (context, state) {
          final isSuccess = state is SuccessState<int>;
          final page = isSuccess ? state.data : 0;

          return Scaffold(
              backgroundColor: Colors.white,
              floatingActionButton: FloatingActionButton.extended(
                onPressed: _onScan,
                backgroundColor: Branding.primaryColor,
                label: const Icon(
                  Icons.qr_code,
                  color: Colors.white,
                ),
              ),
              bottomNavigationBar: BottomNavigationBar(
                currentIndex: page,
                onTap: (index) {
                  BlocProvider.of<DashboardBloc>(context).add(OnTap(index));
                },
                type: BottomNavigationBarType.fixed,
                items: const [
                  BottomNavigationBarItem(
                    icon: Icon(Icons.home),
                    label: 'Home',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.qr_code),
                    label: 'History',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.tips_and_updates),
                    label: 'Tips',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.person),
                    label: 'Profile',
                  ),
                ],
              ),
              floatingActionButtonLocation:
                  FloatingActionButtonLocation.centerDocked,
              body: PageView(
                physics: const NeverScrollableScrollPhysics(),
                controller: pageController,
                children: pages,
              ));
        },
      ),
    );
  }

  void _onScan() {
    const ScanPage().launch(context);
  }
}
