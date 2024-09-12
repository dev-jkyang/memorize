import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:memorize/model/card_data_model.dart';
import 'package:memorize/provider/get_card_list_provider.dart';
import 'package:memorize/provider/group_list_id_provider.dart';
import 'package:memorize/widgets/swipable_card/card.dart';
import 'package:swipable_stack/swipable_stack.dart';

class CustomSwipableStack extends ConsumerStatefulWidget {
  const CustomSwipableStack({super.key});

  @override
  ConsumerState<CustomSwipableStack> createState() =>
      _CustomSwipableStackState();
}

class _CustomSwipableStackState extends ConsumerState<CustomSwipableStack> {
  late final SwipableStackController _controller;

  @override
  void initState() {
    super.initState();
    _controller = SwipableStackController()..addListener(_listenController);
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
    final cardList = ref.watch(GetCardListProvider(id: currentId));

    return Scaffold(
      backgroundColor: Colors.transparent,
      body: SwipableStack(
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
                ),
              ],
            );
          }, error: (e, st) {
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
                ),
              ],
            );
          });
        },
      ),
    );
  }
}
