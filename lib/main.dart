import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:plants_shop/pages/home_page.dart';
import 'package:plants_shop/pages/onboard_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
        value: const SystemUiOverlayStyle(
          statusBarColor: Colors.transparent,
        ),
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          home: PageView(
            scrollDirection: Axis.vertical,
            dragStartBehavior: DragStartBehavior.down,
            children: const [OnboardPage(), HomePage()],
          ),
        ));
  }
}
