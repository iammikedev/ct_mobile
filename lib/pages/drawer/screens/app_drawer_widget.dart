import 'package:flustars/flustars.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:scanner/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:scanner/features/dashboard/dashboard.dart';
import 'package:scanner/features/profile/presentation/bloc/profile_bloc.dart';
import 'package:scanner/features/profile/presentation/widgets/profile_details_widget.dart';
import 'package:scanner/pages/logs/screens/logs_page.dart';

class AppDrawerWidget extends StatefulWidget {
  const AppDrawerWidget({super.key});

  @override
  State<StatefulWidget> createState() {
    return DrawerMobileState();
  }
}

class DrawerMobileState extends State<AppDrawerWidget> {
  @override
  void initState() {
    BlocProvider.of<ProfileBloc>(context).add(OnGetCachedProfile());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Expanded(
            child: ListView(
              // Important: Remove any padding from the ListView.
              padding: EdgeInsets.zero,
              children: <Widget>[
                SizedBox(
                  height: ScreenUtil.getScreenW(context) / 1.5,
                  child: DrawerHeader(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset('assets/img/avatar.png'),
                        SizedBox(
                          height: ScreenUtil.getInstance().getHeight(20),
                        ),
                        const ProfileDetailsWidget()
                      ],
                    ),
                  ),
                ),
                ListTile(
                  title: Padding(
                    padding: EdgeInsets.only(
                      left: ScreenUtil.getInstance().getWidth(10),
                    ),
                    child: Text(
                      'Home',
                      style: TextStyle(
                        fontSize: ScreenUtil.getInstance().getSp(15),
                        color: Theme.of(context).primaryColor,
                      ),
                    ),
                  ),
                  onTap: () => const DashboardPage().launch(context),
                ),
                ListTile(
                  title: Padding(
                    padding: EdgeInsets.only(
                      left: ScreenUtil.getInstance().getWidth(10),
                    ),
                    child: Text(
                      'Logs',
                      style: TextStyle(
                        fontSize: ScreenUtil.getInstance().getSp(15),
                        color: Theme.of(context).primaryColor,
                      ),
                    ),
                  ),
                  onTap: () => const LogsPage().launch(context),
                ),
                ListTile(
                  title: Padding(
                    padding: EdgeInsets.only(
                      left: ScreenUtil.getInstance().getWidth(10),
                    ),
                    child: Text(
                      'Safety Tips',
                      style: TextStyle(
                        fontSize: ScreenUtil.getInstance().getSp(15),
                        color: Theme.of(context).primaryColor,
                      ),
                    ),
                  ),
                  onTap: () => Navigator.pushReplacementNamed(context, '/tips'),
                ),
                ListTile(
                  title: Padding(
                    padding: EdgeInsets.only(
                      left: ScreenUtil.getInstance().getWidth(10),
                    ),
                    child: Text(
                      'Privacy Policy',
                      style: TextStyle(
                        fontSize: ScreenUtil.getInstance().getSp(15),
                        color: Theme.of(context).primaryColor,
                      ),
                    ),
                  ),
                  onTap: () =>
                      Navigator.pushReplacementNamed(context, '/privacy'),
                ),
                ListTile(
                  title: Padding(
                    padding: EdgeInsets.only(
                      left: ScreenUtil.getInstance().getWidth(10),
                    ),
                    child: Text(
                      'Abous Us',
                      style: TextStyle(
                        fontSize: ScreenUtil.getInstance().getSp(15),
                        color: Theme.of(context).primaryColor,
                      ),
                    ),
                  ),
                  onTap: () =>
                      Navigator.pushReplacementNamed(context, '/about'),
                ),
              ],
            ),
          ),
          MaterialButton(
            onPressed: _onLogout,
            minWidth: double.infinity,
            color: Theme.of(context).primaryColor,
            height: ScreenUtil.getInstance().getHeight(43),
            elevation: 0.0,
            child: Text(
              'Logout',
              style: TextStyle(
                fontSize: ScreenUtil.getInstance().getSp(15),
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }

  void _onLogout() {
    BlocProvider.of<AuthBloc>(context).add(OnLogout());
  }
}
