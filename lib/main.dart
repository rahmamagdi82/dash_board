import 'package:dash_board/core/utils/color_manager.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'features/views/dashboard_view.dart';

void main() {
  runApp(DevicePreview(enabled: !kReleaseMode,builder: (BuildContext context) => const MyApp(),));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      theme: ThemeData(
        iconTheme: IconThemeData(
            color: ColorManager.primary),
        useMaterial3: false,
      ),
      home: const DashboardView(),
    );
  }
}
