import 'package:flutter/material.dart';
import 'package:plant_app_flutter/constants.dart';
import 'package:plant_app_flutter/screens/home/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Plant App',
      theme: ThemeData(
        scaffoldBackgroundColor: kBackgroundColor,
        // appBarTheme: const AppBarTheme(
        //   backgroundColor: kPrimaryColor,
        // ),
        colorScheme: const ColorScheme.light().copyWith(primary: kPrimaryColor),
        textTheme: Theme.of(context).textTheme.apply(
              bodyColor: kTextColor,
            ),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const HomeScreen(),
    );
  }
}
//
