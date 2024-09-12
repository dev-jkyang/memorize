import 'dart:async';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:memorize/model/card_data_model.dart';

class TodayKeywordWidget extends StatefulWidget {
  const TodayKeywordWidget({super.key, required this.controller});

  final PageController controller;

  @override
  State<TodayKeywordWidget> createState() => _TodayKeywordWidgetState();
}

class _TodayKeywordWidgetState extends State<TodayKeywordWidget> {
  final List<CardModel> list = [];
  Timer? _pageTimer;
  int nextPage = 1;

  @override
  void initState() {
    super.initState();
    list.add(CardModel.add(
        keyword: '양두구육',
        message1: '정육점 등에서 ‘양 머리를 걸어놓고, 실제로는 개고기를 판다’는 뜻이다. 속임수다.'));
    list.add(CardModel.add(
        keyword: '헤게모니 hegemony',
        message1: '일반적으로 한 집단·국가·문화가 다른 집단·국가·문화를 지배하는 것을 가리킨다.'));
    list.add(CardModel.add(
        keyword: '엑소더스 Exodus',
        message1:
            '많은 사람들이 동시에 특정 장소를 떠나는 상황이나, 증시에서 투자금이 한꺼번에 빠져나가는 경우에 사용되는 표현이다. 또 모세가 이스라엘 민족들을 이끌고 이집트에서 탈출한 내용이 담긴 성서의 \'출애굽기\'를 의미하기도 한다. '));

    _pageTimer = Timer.periodic(const Duration(seconds: 10), (t) {
      // log('Timer periodic $t, $nextPage');

      if (nextPage == 0) {
        widget.controller.jumpToPage(nextPage);
      }
      if (nextPage != 0 && nextPage < list.length) {
        widget.controller.animateToPage(nextPage,
            duration: const Duration(seconds: 1), curve: Curves.easeInOutCubic);
      }
    });
  }

  @override
  void dispose() {
    _pageTimer!.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: PageView.builder(
          controller: widget.controller,
          itemCount: list.length,
          itemBuilder: (c, index) {
            index < list.length - 1 ? nextPage = index + 1 : nextPage = 0;
            return Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 50,
                  child: Text(
                    list[index].keyword,
                    textAlign: TextAlign.left,
                    style: Theme.of(context).textTheme.displayMedium,
                  ),
                ),
                Expanded(
                  child: SingleChildScrollView(
                    child: Text(
                      list[index].message1,
                      style: Theme.of(context).textTheme.displaySmall,
                      softWrap: true,
                    ),
                  ),
                ),
              ],
            );
          }),
    );
  }
}
