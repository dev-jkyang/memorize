import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:memorize/config/custom_colors.dart';
import 'package:memorize/go_router/route_names.dart';
import 'package:memorize/provider/group_card_list_provider.dart';
import 'package:memorize/provider/group_list_provider.dart';
import 'package:memorize/provider/simple_provider/current_group_id_provider.dart';
import 'package:memorize/widgets/swipable_card/swipable_stack.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class FlashCardView extends ConsumerStatefulWidget {
  const FlashCardView({super.key, required this.title});
  final String title;

  @override
  ConsumerState<FlashCardView> createState() => _FlashCardViewState();
}

class _FlashCardViewState extends ConsumerState<FlashCardView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarColor: primaryColor,
        ),
        backgroundColor: primaryColor,
        leading: IconButton(
          onPressed: () {
            GoRouter.of(context).pop();
          },
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
        ),
        actions: [
          GestureDetector(
            onTap: () {
              GoRouter.of(context).pushNamed(RouteNames.inputKeywordView);
            },
            child: const Icon(
              Icons.add_rounded,
              color: Colors.white,
              size: 25,
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          GestureDetector(
            onTap: () {
              final currentId = ref.read(currentGroupIdProvider);
              ref
                  .read(GroupCardListProvider(id: currentId).notifier)
                  .shuffleCardList();
            },
            child: const Padding(
              padding: EdgeInsets.only(right: 25),
              child: Icon(
                Icons.cached_rounded,
                color: Colors.white,
                size: 25,
              ),
            ),
          ),
        ],
        title: Text(
          widget.title,
          style: Theme.of(context).textTheme.titleLarge,
        ),
        toolbarHeight: 50,
        centerTitle: false,
      ),
      backgroundColor: primaryColor,
      body: SafeArea(
        child: Padding(
          padding:
              const EdgeInsets.only(left: 20, right: 20, bottom: 20, top: 0),
          child: Column(
            children: [
              Align(
                alignment: Alignment.centerRight,
                child: Padding(
                  padding: const EdgeInsets.only(
                    right: 10,
                  ),
                  child: Text(
                    '1/20',
                    style: Theme.of(context).textTheme.titleSmall,
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                child: LinearPercentIndicator(
                  width: MediaQuery.of(context).size.width - 40,
                  animation: false,
                  lineHeight: 10.0,
                  percent: 0.6,
                  progressColor: Colors.greenAccent,
                  barRadius: const Radius.circular(20),
                  backgroundColor: Colors.white,
                ),
              ),
              const SizedBox(
                height: 0,
              ),
              const Expanded(child: CustomSwipableStack()),
            ],
          ),
        ),
      ),
    );
  }
}
