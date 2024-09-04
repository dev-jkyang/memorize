import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:memorize/config/custom_theme.dart';
import 'package:memorize/layout/input_my_keyword.dart';
import 'package:memorize/layout/main_view.dart';

void main() {
  runApp(
    const ProviderScope(
      child: MainApp(),
    ),
  );
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: customTextTheme(),
        useMaterial3: true,
      ),
      home: const Scaffold(
        body: InputMyKeyword(),
      ),
    );
  }
}
