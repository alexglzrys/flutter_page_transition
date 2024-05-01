import 'package:flutter/material.dart';

// Pantalla - Acerca de
class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('About Screen'),
        centerTitle: true,
        backgroundColor: const Color(0XFF7A3B69),
      ),
      body: const Center(
        child: Text('About Screen'),
      ),
    );
  }
}
