import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:memorize/config/custom_colors.dart';
import 'package:memorize/custom_dialog/input_title_dialog.dart';
import 'package:memorize/model/card_data_model.dart';
import 'package:memorize/provider/group_card_list_provider.dart';
import 'package:memorize/provider/group_list_provider.dart';
import 'package:memorize/provider/simple_provider/card_list_provider.dart';
import 'package:memorize/provider/simple_provider/current_group_id_provider.dart';
import 'package:memorize/widgets/web_view_widget.dart';

class InputMyKeyword extends ConsumerStatefulWidget {
  const InputMyKeyword({super.key});

  @override
  ConsumerState<InputMyKeyword> createState() => _InputMyKeywordState();
}

class _InputMyKeywordState extends ConsumerState<InputMyKeyword> {
  final _keywordController = TextEditingController();
  final _message1Controller = TextEditingController();
  final _message2Controller = TextEditingController();
  final _keywordNode = FocusNode();
  final _messegeNode1 = FocusNode();
  final _messegeNode2 = FocusNode();
  final _keywordScrollController = ScrollController();
  final _messege1ScrollController = ScrollController();
  final _messege2ScrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    _keywordController.text = '많은 사람들이 동시에 특정 장소를 떠나는 상황이나, 증시에서 투자금이 한꺼번에 빠져나가는 경우에 사용되는 표현이다. ';
    _message1Controller.text = '엑소더스';
    _message2Controller.text = '헤게모니';
  }

  @override
  void dispose() {
    _keywordController.dispose();
    _message1Controller.dispose();
    _message2Controller.dispose();
    _keywordScrollController.dispose();
    _messege1ScrollController.dispose();
    _messege2ScrollController.dispose();
    _keywordNode.dispose();
    _messegeNode1.dispose();
    _messegeNode2.dispose();
    super.dispose();
  }

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
        title: Text(
          '단어 입력하기',
          style: Theme.of(context).textTheme.titleLarge,
        ),
        centerTitle: true,
        actions: [
          GestureDetector(
            onTap: () {
              showDialog(
                context: context,
                builder: (c) {
                  return const KeywordWebViewWidget();
                },
              );
            },
            child: Icon(
              Icons.language,
              color: Colors.grey[400],
              size: 25,
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: GestureDetector(
              onTap: () {},
              child: Image.asset(
                'assets/images/csv3d.png',
                width: 35,
                height: 35,
              ),
            ),
          )
        ],
        toolbarHeight: 50,
      ),
      backgroundColor: primaryColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 10, left: 20, bottom: 5),
                child: Text('단어'),
              ),
              inputTextFiled(
                context,
                controller: _keywordController,
                scrollController: _keywordScrollController,
                node: _keywordNode,
                autoFocus: true,
                onSubmitted: () {
                  FocusScope.of(context).requestFocus(_messegeNode1);
                },
              ),
              const Padding(
                padding: EdgeInsets.only(top: 10, left: 20, bottom: 5),
                child: Text('내용1'),
              ),
              inputTextFiled(
                context,
                controller: _message1Controller,
                scrollController: _messege1ScrollController,
                node: _messegeNode1,
                autoFocus: false,
                onSubmitted: () {
                  FocusScope.of(context).requestFocus(_messegeNode2);
                },
              ),
              const Padding(
                padding: EdgeInsets.only(top: 10, left: 20, bottom: 5),
                child: Text('내용2'),
              ),
              inputTextFiled(
                context,
                controller: _message2Controller,
                scrollController: _messege2ScrollController,
                node: _messegeNode2,
                autoFocus: false,
                onSubmitted: () {
                  FocusScope.of(context).requestFocus(_keywordNode);
                },
              ),
              const SizedBox(
                height: 30,
              ),
              Center(
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: positiveButtonColor,
                  ),
                  width: 250,
                  height: 50,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextButton(
                        onPressed: () {
                          ref.read(cardListProvider.notifier).addCardList(
                                newCard: CardModel.add(
                                  keyword: _keywordController.text,
                                  message1: _message1Controller.text,
                                  message2: _message2Controller.text,
                                ),
                              );

                          _keywordController.text = '';
                          _message1Controller.text = '';
                          _message2Controller.text = '';
                          FocusScope.of(context).requestFocus(_keywordNode);
                        },
                        child: Text(
                          '저장하기 (${ref.watch(cardListProvider).whenData((cb) => cb.length).value})',
                          style: Theme.of(context).textTheme.labelMedium,
                        ),
                      ),
                      Text(
                        '  /  ',
                        style: Theme.of(context).textTheme.labelMedium,
                      ),
                      TextButton(
                        onPressed: () async {
                          //뎁스정하기(폴더)

                          // final String groupTitle = await inputTitleDialog(
                          //       context,
                          //     ) ??
                          //     '';

                          // if (context.mounted && groupTitle != '') {
                          //   ref.read(groupListProvider.notifier).putCardList(
                          //         cardList: ref.watch(cardListProvider).value!,
                          //         title: groupTitle,
                          //       );
                          //   GoRouter.of(context).pop();
                          // }

                          final currentId = ref.watch(currentGroupIdProvider);
                          log('완료하기 current id : $currentId');
                          await ref
                              .read(
                                  GroupCardListProvider(id: currentId).notifier)
                              .addCardList(
                                  list: ref.watch(cardListProvider).value!);
                          if (context.mounted) GoRouter.of(context).pop();
                        },
                        child: Text(
                          '완료하기',
                          style: Theme.of(context).textTheme.labelMedium,
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Container inputTextFiled(
    BuildContext context, {
    required TextEditingController controller,
    required ScrollController scrollController,
    required VoidCallback onSubmitted,
    required FocusNode node,
    required bool autoFocus,
    double? height = 70,
  }) {
    return Container(
      width: double.infinity,
      height: height,
      color: Colors.white,
      child: Scrollbar(
        controller: scrollController,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: TextField(
            controller: controller,
            scrollController: scrollController,
            focusNode: node,
            textInputAction: TextInputAction.next,
            maxLines: null,
            onSubmitted: (str) {
              onSubmitted.call();
            },
            style: Theme.of(context).textTheme.labelLarge!.copyWith(
                color: Colors.black, decorationThickness: 0, fontSize: 15),
            autofocus: autoFocus,
            keyboardType: TextInputType.text,
            onEditingComplete: () {},
            textAlignVertical: TextAlignVertical.center,
            decoration: const InputDecoration(
              contentPadding: EdgeInsets.zero,
              border: InputBorder.none,
            ),
          ),
        ),
      ),
    );
  }
}
