import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:memolize/config/colors.dart';

class MainView extends StatefulWidget {
  const MainView({super.key});

  @override
  State<MainView> createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            decoration: const BoxDecoration(
              color: Color(colorMainDarkNavy),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(50),
                bottomRight: Radius.circular(50),
              ),
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '하야야님',
                        ),
                        Text(
                          '오늘도 화이팅',
                        ),
                        Text(
                          'Pick a set to practice',
                        ),
                      ],
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.menu_rounded,
                        color: Colors.white,
                      ),
                      color: Colors.transparent,
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
