import 'package:flutter/material.dart';
import 'package:store_ui/routes/routes.dart';
import 'package:store_ui/config/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter UI',
      debugShowCheckedModeBanner: false,
      navigatorKey: AppRoutes.navigatorKey,
      initialRoute: AppRoutes.initRoute,
      onGenerateRoute: AppRoutes.onGenerateRoute,
      theme: appTheme,
    );
  }
}
