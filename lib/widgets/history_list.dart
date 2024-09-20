import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:memorize/config/custom_colors.dart';
import 'package:memorize/go_router/route_names.dart';
import 'package:memorize/model/card_data_model.dart';
import 'package:memorize/provider/group_list_provider.dart';
import 'package:memorize/provider/simple_provider/current_group_id_provider.dart';
import 'package:percent_indicator/percent_indicator.dart';

class HistoryList extends ConsumerWidget {
  const HistoryList({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final groupList = ref.watch(groupListProvider);

    return groupList.when(
        data: (gList) {
          final List<ChildGroup> riverseList = gList.reversed.toList();
          return ListView.builder(
            itemCount: riverseList.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 5,
                  horizontal: 20,
                ),
                child: GestureDetector(
                  onTap: () {
                    ref
                        .read(currentGroupIdProvider.notifier)
                        .currentId(id: riverseList[index].id);

                    GoRouter.of(context).pushNamed(RouteNames.flashCardView,
                        pathParameters: {'title': riverseList[index].title});
                  },
                  child: Container(
                    height: 100,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(10),
                          bottomLeft: Radius.circular(20),
                          bottomRight: Radius.circular(10),
                          topRight: Radius.circular(20)),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.3),
                          spreadRadius: 1,
                          blurRadius: 1,
                          offset:
                              const Offset(0, 3), // changes position of shadow
                        ),
                      ],
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: Text(
                                riverseList[index].title,
                                style: Theme.of(context)
                                    .textTheme
                                    .labelMedium!
                                    .copyWith(color: greyTextColor),
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            LinearPercentIndicator(
                              width: MediaQuery.of(context).size.width - 150,
                              animation: true,
                              lineHeight: 10.0,
                              animationDuration: 2000,
                              percent: 0.3,
                              progressColor: Colors.greenAccent,
                              barRadius: const Radius.circular(20),
                            ),
                          ],
                        ),
                        const Text(
                          '30/100',
                          style: TextStyle(
                            color: greyTextColor,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
          );
        },
        error: (e, st) {
          return const SizedBox();
        },
        loading: () => const CircularProgressIndicator());
  }
}
