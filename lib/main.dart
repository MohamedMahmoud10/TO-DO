import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:to_do/db/db_helper.dart';
import 'package:to_do/services/theme_services.dart';
import 'package:to_do/styles/theme.dart';
import 'package:to_do/ui/pages/home_page/home_page.dart';
import 'package:to_do/ui/pages/on_boarding_screen/page_view.dart';
import 'package:to_do/ui/pages/on_boarding_screen/sign_up_screen/sign_up_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await DBHelper.initDb();
  await GetStorage.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: Themes.light,
      darkTheme: Themes.dark,
      themeMode: ThemeServices().themes,
      debugShowCheckedModeBanner: false,
      home: ViewPage(),
    );
  }
}
