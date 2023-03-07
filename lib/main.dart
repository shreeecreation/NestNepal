import 'package:flutter/material.dart';

import 'src/core/routes/routes.dart';
import 'src/core/themes/appthemes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: AppTheme.lightTheme,
      onGenerateRoute: Routes.generateRoute,
      initialRoute: "/",
    );
  }
}
