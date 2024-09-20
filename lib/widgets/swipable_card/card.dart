import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:memorize/model/card_data_model.dart';
import 'package:memorize/provider/simple_provider/hide_card_messege_provider.dart';
import 'package:memorize/widgets/swipable_card/dropdown_menu.dart';
import 'package:shimmer/shimmer.dart';

class CardWidget extends StatefulWidget {
  const CardWidget({
    super.key,
    required this.isLoading,
    required this.dataList,
    required this.index,
  });

  final bool isLoading;
  final CardModel dataList;
  final int index;

  @override
  State<CardWidget> createState() => _CardWidgetState();
}

class _CardWidgetState extends State<CardWidget> {
  final _message1ScrollController = ScrollController();
  final _message2ScrollController = ScrollController();

  @override
  void dispose() {
    _message1ScrollController.dispose();
    _message2ScrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // log('dataList : ${widget.dataList}');

    return ClipRRect(
      child: Stack(
        children: [
          Padding(
            padding:
                const EdgeInsets.only(left: 20, right: 20, top: 50, bottom: 30),
            child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.1),
                      spreadRadius: 1,
                      blurRadius: 7,
                      offset: const Offset(0, 3), // changes position of shadow
                    ),
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Stack(
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          if (widget.isLoading) ...loadingCardList(),
                          if (!widget.isLoading)
                            ...testDataCardList(
                                context,
                                _message1ScrollController,
                                _message2ScrollController,
                                widget.dataList,
                                widget.index),
                        ],
                      ),
                      const Positioned(
                        top: -5,
                        right: -5,
                        child: SizedBox(
                          width: 30,
                          height: 30,
                          child: CustomDropdownMenu(),
                        ),
                      ),
                    ],
                  ),
                )),
          ),
        ],
      ),
    );
  }
}

List<Widget> testDataCardList(
    BuildContext context,
    ScrollController controller1,
    ScrollController controller2,
    CardModel dataList,
    int index) {
  return [
    SizedBox(
      height: 20,
      child: Text(
        '$index',
        style: const TextStyle(fontSize: 18, color: Colors.black),
      ),
    ),
    Expanded(
      flex: 3,
      child: Center(
          child: Text(
        dataList.keyword,
        textAlign: TextAlign.center,
        style: Theme.of(context)
            .textTheme
            .headlineSmall!
            .copyWith(color: Colors.black),
      )),
    ),
    Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Divider(
        height: 1,
        color: Colors.red[350],
      ),
    ),
    Expanded(
      flex: 1,
      child: Padding(
        padding:
            const EdgeInsets.only(left: 10, right: 10, top: 20, bottom: 20),
        child: Center(
          child: Scrollbar(
            controller: controller1,
            thickness: .7,
            child: SingleChildScrollView(
              controller: controller1,
              child: Consumer(
                builder: (context, ref, child) {
                  return Text(
                    dataList.message1,
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.titleMedium!.copyWith(
                        color: ref.watch(hideCardMessegeProvider)
                            ? Colors.transparent
                            : Colors.black),
                  );
                },
              ),
            ),
          ),
        ),
      ),
    ),
    dataList.message2 != null
        ? Expanded(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.only(
                  left: 10, right: 10, top: 20, bottom: 20),
              child: Center(
                child: Scrollbar(
                  controller: controller2,
                  thickness: .7,
                  child: SingleChildScrollView(
                    controller: controller2,
                    child: Consumer(
                      builder: (context, ref, child) {
                        return Text(
                          dataList.message2!,
                          textAlign: TextAlign.center,
                          style: Theme.of(context)
                              .textTheme
                              .titleMedium!
                              .copyWith(
                                  color: ref.watch(hideCardMessegeProvider)
                                      ? Colors.transparent
                                      : Colors.black),
                        );
                      },
                    ),
                  ),
                ),
              ),
            ),
          )
        : const SizedBox.shrink(),
  ];
}

List<Widget> loadingCardList() {
  return [
    Shimmer.fromColors(
      baseColor: Colors.grey.shade300,
      highlightColor: Colors.grey.shade100,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            width: 80,
            height: 18,
            color: Colors.white,
          ),
          const SizedBox(
            height: 180,
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 180,
                  height: 18,
                  color: Colors.white,
                ),
                const SizedBox(
                  height: 18,
                ),
                Container(
                  width: 180,
                  height: 18,
                  color: Colors.white,
                ),
              ],
            ),
          ),
        ],
      ),
    ),
  ];
}
