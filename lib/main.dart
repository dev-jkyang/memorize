import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:memorize/config/custom_theme.dart';
import 'package:memorize/go_router/go_router_provider.dart';
import 'package:memorize/model/card_data_model.dart';
import 'package:memorize/repositotries/hive_repository.dart';
import 'package:memorize/repositotries/provider/cards_repository_provider.dart';

// import 'package:memorize/layout/input_my_keyword.dart';
// import 'package:memorize/layout/main_view.dart';

void main() async {
  await Hive.initFlutter();
  
  Hive.registerAdapter(CardModelAdapter());
  Hive.registerAdapter(ChildGroupAdapter());
  Hive.registerAdapter(ParentsGroupAdapter());
  Hive.registerAdapter(DepthAdapter());

  await Hive.openBox<ChildGroup>('child');

  runApp(
    ProviderScope(
      overrides: [cardsRepositoryProvider.overrideWithValue(HiveRepository())],
      child: const MainApp(),
    ),
  );
}

class MainApp extends ConsumerWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final router = ref.watch(routeProvider);
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: customTextTheme(),
        useMaterial3: true,
      ),
      routerConfig: router,
    );
  }
}
