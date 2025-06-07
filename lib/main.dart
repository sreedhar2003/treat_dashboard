import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:treat_dashboard/screen/treat_dashboard/controller/treat_dashboard_controller.dart';
import 'package:treat_dashboard/screen/treat_dashboard/screen/treat_dashboard_screen.dart';

void main() {
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(create: (context) => DashboardTreatController())
  ], child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: false, home: TreatDashboardScreen());
  }
}
