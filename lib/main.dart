import 'package:flutter/material.dart';

import 'package:instagram/utilits/navigation.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(
              seedColor: const Color.fromARGB(255, 254, 253, 255)),
          useMaterial3: true,
        ),
        home: BottomNavigationBarr()
        // const MyHomePage(title: 'Flutter Demo Home Page'),
        );
  }
}
