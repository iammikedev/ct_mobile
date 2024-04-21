import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:scanner/core/bloc/base_state.dart';
import 'package:scanner/core/enums/log_type_enum.dart';
import 'package:scanner/core/themes/themes.dart';
import 'package:scanner/features/scan/scan.dart';

class LogsPage extends StatefulWidget {
  const LogsPage({super.key});

  @override
  State<LogsPage> createState() => _LogsPageState();
}

class _LogsPageState extends State<LogsPage> {
  final pagingController = PagingController<int, LogsEntity>(
    firstPageKey: 0,
  );
  static const int pageSize = 10;
  int currentTab = 0;

  @override
  void initState() {
    super.initState();

    pagingController.addPageRequestListener(loadEstablishmentLogs);
  }

  @override
  void dispose() {
    pagingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return BlocConsumer<ScanBloc, ScanState>(
      listener: (context, state) {
        if (state is SuccessState<List<LogsEntity>>) {
          final isLastPage = state.data.length < pageSize;

          if (isLastPage) {
            pagingController.appendLastPage(state.data);
          } else {
            pagingController.appendPage(
                state.data, pagingController.nextPageKey);
          }
        }

        if (state is ErrorState) {
          pagingController.error = state.error;
        }
      },
      builder: (context, state) {
        return DefaultTabController(
          length: 2,
          child: Scaffold(
            body: SafeArea(
              child: Padding(
                padding: Sizing.basePadding,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 32),
                    Text(
                      'Logs',
                      style: textTheme.headlineMedium?.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      'View the latest logs here',
                      style: textTheme.bodyLarge?.copyWith(
                        color: Colors.black87,
                      ),
                    ),
                    const SizedBox(height: 16),
                    Expanded(
                      child: Column(
                        children: [
                          TabBar(
                            onTap: (value) {
                              setState(() => currentTab = value);
                              pagingController.refresh();
                            },
                            tabs: const [
                              Tab(icon: Icon(Icons.storefront)),
                              Tab(icon: Icon(Icons.person)),
                            ],
                          ),
                          Expanded(
                            child: TabBarView(
                              children: [
                                SingleChildScrollView(
                                  child: PagedListView.separated(
                                    shrinkWrap: true,
                                    physics:
                                        const NeverScrollableScrollPhysics(),
                                    pagingController: pagingController,
                                    builderDelegate:
                                        PagedChildBuilderDelegate<LogsEntity>(
                                      itemBuilder: (context, item, index) {
                                        return LogEstablishmentItemWidget(
                                            item: item);
                                      },
                                    ),
                                    separatorBuilder: (context, index) {
                                      return const SizedBox(height: 4);
                                    },
                                  ),
                                ),
                                SingleChildScrollView(
                                  child: PagedListView.separated(
                                    shrinkWrap: true,
                                    physics:
                                        const NeverScrollableScrollPhysics(),
                                    pagingController: pagingController,
                                    builderDelegate:
                                        PagedChildBuilderDelegate<LogsEntity>(
                                      itemBuilder: (context, item, index) {
                                        return LogUserItemWidget(item: item);
                                      },
                                    ),
                                    separatorBuilder: (context, index) {
                                      return const SizedBox(height: 8);
                                    },
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }

  void loadEstablishmentLogs(int pageKey) {
    final params = LogsParamsEntity(
      page: pageKey,
      limit: 10,
      type: currentTab == 0 ? LogTypeEnum.EST : LogTypeEnum.USER,
    );
    BlocProvider.of<ScanBloc>(context).add(OnGetLogs(params));
  }
}
