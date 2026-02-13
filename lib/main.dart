import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:yenlei_portfolio/src/home/home_page.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return ScreenUtilInit(
      designSize: screenSize,
        minTextAdapt: true,
        splitScreenMode: false,
        useInheritedMediaQuery: false,
      builder: (_,child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'YENLEI',
          theme: ThemeData.dark(),
          home: const HomePage(),
        );
      }
    );
  }
}
