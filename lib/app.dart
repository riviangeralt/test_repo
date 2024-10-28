import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:masdr_hr_insights/features/dashboard/screens/index.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      debugShowCheckedModeBanner: false,
      // theme: AppTheme.lightTheme,
      home: DashboardScreen(),
    );
  }
}
