import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'src/core/routes/routes.dart';
import 'src/core/themes/appthemes.dart';
import 'src/extensions/internet/internetConnection.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
providers:[
    ChangeNotifierProvider(create: ((context) {
            return InternetConnection();
          })),
] ,     child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: AppTheme.darkTheme,
        onGenerateRoute: Routes.generateRoute,
        initialRoute: "/",
      ),
    );
  }
}
