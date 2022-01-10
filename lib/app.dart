import 'package:flutter/material.dart';
import 'package:plans_tracker/screens/home/home_page.dart';

class App extends StatelessWidget {
  App({Key? key}) : super(key: key);
  final GlobalKey<ScaffoldMessengerState> _messengerKey = GlobalKey<ScaffoldMessengerState>();
  ScaffoldMessengerState get appMessenger => _messengerKey.currentState!;

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
