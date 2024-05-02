// Ignore: Unknown word
import 'package:councilapp/Services/data_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:councilapp/Views/home_view.dart';

void main() {
  runApp(const Council());
  GetData().getUserData();
}

class Council extends StatelessWidget {
  const Council({super.key});
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: <WidgetFunction>(BuildContext context, child) {
        return const MaterialApp(
          title: 'Council',
          home: HomeView(),
          debugShowCheckedModeBanner: false,
        );
      },
    );
  }
}


