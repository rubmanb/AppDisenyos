import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';

import 'package:app_disenyos/screens/basic_design.dart';
import 'package:app_disenyos/screens/home_screen.dart';
import 'package:app_disenyos/screens/scroll_design.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  /* esto cambia el color al statusbar del dispositivo (opciones light y dark)*/
  // SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);

  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'App diseños',
        initialRoute: 'home',
        routes: {
          'home': (_) => const HomeScreen(),
          'basic_design': (_) => const BasicDesignScreen(),
          'scroll_design': (_) => const ScrollDesignScreen(),
        });
  }
}
