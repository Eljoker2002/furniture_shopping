import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'views/view.dart';

void main ()
{
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      builder: (context, child) {
        ScreenUtil.init(
          context,
          designSize: const Size(393, 851),
        );
        return child!;
      },
      home: FirstView(),
    );
  }
}
