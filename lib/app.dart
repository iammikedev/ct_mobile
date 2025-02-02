import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:scanner/core/themes/branding.dart';
import 'package:scanner/core/themes/color_schemes.dart';
import 'package:scanner/core/themes/sizing.dart';
import 'package:scanner/features/announcement/announcement.dart';
import 'package:scanner/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:scanner/features/dashboard/dashboard.dart';
import 'package:scanner/features/profile/presentation/bloc/profile_bloc.dart';
import 'package:scanner/features/route/presentation/bloc/route_bloc.dart';
import 'package:scanner/features/route/presentation/pages/root_page.dart';
import 'package:scanner/features/scan/presentation/bloc/scan_bloc.dart';
import 'package:scanner/injection.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => sl.get<AuthBloc>()),
        BlocProvider(create: (_) => sl.get<RouteBloc>()),
        BlocProvider(create: (_) => sl.get<ProfileBloc>()),
        BlocProvider(create: (_) => sl.get<ScanBloc>()),
        BlocProvider(create: (_) => sl.get<DashboardBloc>()),
        BlocProvider(create: (_) => sl.get<StatsBloc>()),
        BlocProvider(create: (_) => sl.get<AnnouncementBloc>()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          fontFamily: 'Open Sans',
          colorScheme: lightColorScheme,
          cardColor: Colors.white,
          scaffoldBackgroundColor: Colors.white,
          appBarTheme: const AppBarTheme(scrolledUnderElevation: 0),
          inputDecorationTheme: const InputDecorationTheme(
            isDense: true,
            hintStyle: TextStyle(
              color: Branding.hintTextColor,
            ),
            border: OutlineInputBorder(
              borderRadius: Sizing.inputBorder,
              borderSide: BorderSide(
                color: Branding.borderColor,
              ),
            ),
          ),
        ),
        home: const RootPage(),
        builder: EasyLoading.init(),
      ),
    );
  }
}
