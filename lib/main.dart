import 'package:flutter/material.dart';
import 'package:page_transition_flutter_app/screens/screens.dart';

void main() => runApp(const PageTransitionApp());

class PageTransitionApp extends StatelessWidget {
  const PageTransitionApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Page Transiton App',
      initialRoute: 'home',
      routes: {
        'home': (_) => const HomeScreen(),
        'about': (_) => const AboutScreen(),
      },
    );
  }
}
