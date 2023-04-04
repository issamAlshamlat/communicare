import 'package:communicare/feature/master/page/master_page.dart';
import 'package:communicare/theme/app_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:communicare/theme/app_strings.dart';
import 'package:communicare/feature/app_shared_preferences.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await AppSharedPreferences().init();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeRight,
      DeviceOrientation.landscapeLeft,
    ]);

    return MaterialApp(
      title: AppStrings.communicare,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: AppFonts.open_sans,
      ),
      home: MasterPage(),
    );
  }
}
