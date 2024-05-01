import 'package:flutter/material.dart';
import 'package:page_transition_flutter_app/helpers/transition_helper.dart';
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
      // Routes se utiliza para devlarar rutas estáticas que no necesitan una lógica especial para generarlas
      /*routes: {
        'home': (_) => const HomeScreen(),
        'about': (_) => const AboutScreen(),
      },*/

      // onGenerateRoute se utiliza para manejar rutas dinámicas o personalizadas
      onGenerateRoute: (settings) {
        switch (settings.name) {
          case 'home':
            return MaterialPageRoute(builder: (context) => const HomeScreen());
          case 'about':
            // Invocar esta página con un tipo de transición personalizda

            // return getSlideTransition(const AboutScreen());
            return getScaleTransition(const AboutScreen());
          default:
            return null;
        }
      },
    );
  }
}
