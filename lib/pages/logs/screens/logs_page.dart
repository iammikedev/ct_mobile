import 'package:flustars/flustars.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intl/intl.dart';
import 'package:scanner/core/themes/branding.dart';
import 'package:scanner/pages/appbar/AppBarMain.dart';
import 'package:scanner/pages/drawer/screens/app_drawer_widget.dart';
import 'package:scanner/pages/logs/bloc/LogsBloc.dart';
import 'package:scanner/widgets/CustomBadge.dart';
import 'package:scanner/widgets/UserIcon.dart';

class LogsPage extends StatefulWidget {
  const LogsPage({super.key});

  @override
  State<StatefulWidget> createState() {
    return LogsPageState();
  }
}

class LogsPageState extends State<LogsPage> {
  @override
  void initState() {
    super.initState();

    logs.getAllLogs();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBarMain(
        context: context,
      ),
      drawer: const AppDrawerWidget(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: ScreenUtil.getInstance().getHeight(30),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: ScreenUtil.getInstance().getWidth(30),
            ),
            child: Text(
              'Logs',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: ScreenUtil.getInstance().getSp(22),
              ),
            ),
          ),
          SizedBox(
            height: ScreenUtil.getInstance().getHeight(30),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: ScreenUtil.getInstance().getWidth(30),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Filter by date:',
                  style: TextStyle(
                    fontSize: ScreenUtil.getInstance().getSp(15),
                  ),
                ),
                IconButton(
                  onPressed: () => {
                    showDatePicker(
                      context: context,
                      initialDate: DateTime.now(),
                      firstDate: DateTime(2020),
                      lastDate: DateTime(2022),
                    )
                  },
                  icon: FaIcon(
                    FontAwesomeIcons.calendarAlt,
                    color: Theme.of(context).primaryColor,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              child: StreamBuilder(
                stream: logs.logs.stream,
                builder: (context, snapshot) {
                  if (snapshot.data == null) {
                    return Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: ScreenUtil.getInstance().getWidth(30),
                      ),
                      child: Text('Loading Data ...'),
                    );
                  }

                  // Note: This will be removed on next pull request
                  return SizedBox.shrink();
                  // return ListView.builder(
                  //   itemCount: snapshot.data.length ?? 0,
                  //   itemBuilder: (BuildContext context, int index) {
                  //     return buildBody(
                  //         context: context, data: snapshot.data[index]);
                  //   },
                  // );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildBody({
    required BuildContext context,
    required data,
  }) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: ScreenUtil.getInstance().getWidth(30),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Card(
            elevation: 3.0,
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: ScreenUtil.getInstance().getWidth(15),
                vertical: ScreenUtil.getInstance().getHeight(10),
              ),
              width: double.infinity,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          data.fullName,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: ScreenUtil.getInstance().getSp(15),
                          ),
                        ),
                        Text(
                          data.address,
                          style: TextStyle(
                            color: Branding.textColor,
                            fontSize: ScreenUtil.getInstance().getSp(11),
                          ),
                        ),
                        SizedBox(
                          height: ScreenUtil.getInstance().getHeight(9),
                        ),
                        Text(
                          // 'August 12, 2020 12:00 PM',
                          DateFormat.yMMMMd()
                              .add_jm()
                              .format(DateTime.parse(data.createdAt).toLocal()),
                          style: TextStyle(
                            color: Branding.textColor,
                            fontSize: ScreenUtil.getInstance().getSp(10),
                          ),
                        ),
                        Text(
                          DateFormat.EEEE()
                              .format(DateTime.parse(data.createdAt).toLocal()),
                          style: TextStyle(
                            color: Branding.textColor,
                            fontSize: ScreenUtil.getInstance().getSp(10),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Column(
                    children: [
                      CustomBadge().newBadge(
                        date: DateTime.parse(data.createdAt).toLocal(),
                      ),
                      userIcon.init(
                        context: context,
                        user: data.usersProfilesId,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
