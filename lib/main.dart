import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:web_admin_dashboard/presentation/pages/login/page.dart';

import 'dependency_injection.dart' as di;

Future<void> main() async {
  di.init();

  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();

  runApp(EasyLocalization(
    supportedLocales: const <Locale>[
      Locale('en'),
      Locale('uk'),
    ],
    path: 'assets/translations',
    fallbackLocale: const Locale('en'),
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      title: 'Web Admin Dashboard',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LoginPage(),
    );
  }
}
