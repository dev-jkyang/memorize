import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:lottie/lottie.dart';
import 'package:memorize/config/custom_colors.dart';
import 'package:memorize/model/card_data_model.dart';
import 'package:memorize/provider/group_card_list_provider.dart';
import 'package:memorize/provider/simple_provider/current_group_id_provider.dart';
import 'package:memorize/provider/simple_provider/hide_card_messege_provider.dart';
import 'package:memorize/widgets/swipable_card/card.dart';
import 'package:swipable_stack/swipable_stack.dart';

class CustomSwipableStack extends ConsumerStatefulWidget {
  const CustomSwipableStack({super.key});

  @override
  ConsumerState<CustomSwipableStack> createState() =>
      _CustomSwipableStackState();
}

class _CustomSwipableStackState extends ConsumerState<CustomSwipableStack>
    with TickerProviderStateMixin {
  late final SwipableStackController _controller;
  late AnimationController eyeLottieController;

  @override
  void initState() {
    super.initState();
    _controller = SwipableStackController()..addListener(_listenController);
    eyeLottieController = AnimationController(vsync: this);
  }

  @override
  void dispose() {
    _controller
      ..removeListener(_listenController)
      ..dispose();
    super.dispose();
  }

  void _listenController() => setState(() {});

  @override
  Widget build(BuildContext context) {
    final currentId = ref.watch(currentGroupIdProvider);
    log('current id : $currentId');
    final cardList = ref.watch(GroupCardListProvider(id: currentId));
    log('current id : ${cardList.value}');

    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Column(
        children: [
          Expanded(
            child: SwipableStack(
              detectableSwipeDirections: const {
                SwipeDirection.right,
                SwipeDirection.left,
              },
              controller: _controller,
              itemCount: 50,
              stackClipBehaviour: Clip.none,
              onSwipeCompleted: (index, direction) async {},
              horizontalSwipeThreshold: 0.8,
              verticalSwipeThreshold: 0.8,
              builder: (context, properties) {
                return cardList.when(data: (data) {
                  CardModel currentData = data[properties.index % data.length];
                  return Stack(
                    children: [
                      CardWidget(
                        isLoading: false,
                        dataList: currentData,
                        index: (properties.index % data.length) + 1,
                      ),
                    ],
                  );
                }, error: (e, st) {
                  log('swipable error : $e');
                  return const SizedBox();
                }, loading: () {
                  return const Stack(
                    children: [
                      CardWidget(
                        isLoading: true,
                        dataList: CardModel(
                          id: '',
                          keyword: '',
                          message1: '',
                          timeStamp: 0,
                        ),
                        index: 0,
                      ),
                    ],
                  );
                });
              },
            ),
          ),
          GestureDetector(
              onTap: () {
                ref.read(hideCardMessegeProvider.notifier).clickedHideButton();
                if (ref.watch(hideCardMessegeProvider)) {
                  eyeLottieController
                  ..duration = const Duration(milliseconds: 1500)
                  ..animateTo(0.08);  
                } else {
                  eyeLottieController
                  ..duration = const Duration(milliseconds: 1500)
                  ..animateTo(0.3);
                }
              },
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    width: 60,
                    height: 60,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(7),
                      color: pupleColor,
                    ),
                  ),
                  Lottie.asset(
                    'assets/images/hideEye.json',
                    controller: eyeLottieController,
                    width: 35,
                    height: 35,
                    fit: BoxFit.fill,
                    repeat: false,
                    animate: true,
                  ),
                ],
              )),
        ],
      ),
    );
  }
}
