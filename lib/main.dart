import 'package:dash_board/core/resources/color_manager.dart';
import 'package:dash_board/core/resources/values_manager.dart';
import 'package:flutter/material.dart';

import 'features/views/dashboard_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        iconTheme: IconThemeData(
            color: ColorManager.primary),
        useMaterial3: false,
      ),
      home: const DashboardView(),
    );
  }
}
