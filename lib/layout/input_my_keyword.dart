import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:memorize/config/custom_colors.dart';

class InputMyKeyword extends StatefulWidget {
  const InputMyKeyword({super.key});

  @override
  State<InputMyKeyword> createState() => _InputMyKeywordState();
}

class _InputMyKeywordState extends State<InputMyKeyword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarColor: primaryColor,
        ),
        backgroundColor: primaryColor,
        leading: const Icon(
          Icons.arrow_back,
          color: Colors.white,
        ),
        title: Text(
          '단어 입력하기',
          style: Theme.of(context).textTheme.titleLarge,
        ),
        centerTitle: true,
        actions: [
          GestureDetector(
            onTap: () {},
            child: Image.asset(
              'assets/images/csv3d.png',
              width: 40,
              height: 40,
            ),
          )
        ],
        toolbarHeight: 50,
      ),
      backgroundColor: primaryColor,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 10, left: 20, bottom: 5),
              child: Text('단어'),
            ),
            Container(
              width: double.infinity,
              height: 40,
              color: Colors.white,
              child: TextField(
                textInputAction: TextInputAction.next,
                style: Theme.of(context).textTheme.labelLarge?.copyWith(color: Colors.black),
                autofocus: true,
                keyboardType: TextInputType.text,
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 10, left: 20, bottom: 5),
              child: Text('내용1'),
            ),
            Container(
              width: double.infinity,
              height: 80,
              color: Colors.white,
            ),
            const Padding(
              padding: EdgeInsets.only(top: 10, left: 20, bottom: 5),
              child: Text('내용2'),
            ),
            Container(
              width: double.infinity,
              height: 80,
              color: Colors.white,
            ),
            const Padding(
              padding: EdgeInsets.only(top: 20, left: 20, bottom: 5),
              child: Text('그룹선택'),
            ),
            Center(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: positiveButton,
                ),
                width: 250,
                height: 50,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        '저장하기 (1)',
                        style: Theme.of(context).textTheme.labelMedium,
                      ),
                    ),
                    Text(
                      '  /  ',
                      style: Theme.of(context).textTheme.labelMedium,
                    ),
                    TextButton(
                      onPressed: () {},
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
    );
  }
}
