import 'package:flutter/material.dart';

// Transición de tipo Slide
PageRouteBuilder getSlideTransition(Widget screen) {
  return PageRouteBuilder(
    // Página a construir (a mostrar)
    pageBuilder: (context, animation, secondaryAnimation) => screen,
    // Duración de la transición
    transitionDuration: const Duration(milliseconds: 300),
    // Construir la transición
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      // Coordenadas donde comienza la transición (lugar donde comienza a entrar esta pantalla)
      // 0,0  1,0
      // 0,1  1,1
      const begin = Offset(0, -1);
      // Coordenadas dónde termina la transición (ubicación final donde se colocará esta pantalla - por lo generarl siempre es 0,0)
      const end = Offset.zero;
      // Tipo de animación (suave, rebote, etc)
      final curvedAnimation = CurvedAnimation(
        parent: animation,
        curve: Curves.easeInOut,
      );

      // Describe cómo se debe realizar la transición de posición del widget basado en el tipo de animación especificada
      final position = Tween(
        begin: begin,
        end: end,
      ).animate(curvedAnimation);

      // SlideTransition anima la transición de un widget desde una posición inicial a una posición final. Básicamente, mueve un widget de una ubicación a otra dentro del espacio disponible.
      return SlideTransition(
        position: position,
        child: child,
      );
    },
  );
}

// Transición de tipo Escala
PageRouteBuilder getScaleTransition(Widget screen) {
  return PageRouteBuilder(
    // Página a construir (a mostrar)
    pageBuilder: (context, animation, secondaryAnimation) => screen,
    // Duración de la transición
    transitionDuration: const Duration(milliseconds: 300),
    // Construir la transición
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      // Factor de escala donde comienza la transición
      const begin = 0.0;
      // Factor de escala dónde termina la transición
      const end = 1.0;
      // Tipo de animación (suave, rebote, etc)
      final curvedAnimation = CurvedAnimation(
        parent: animation,
        curve: Curves.elasticInOut,
      );

      // Describe cómo se debe realizar la transición de escala o tamaño del widget a lo largo del tiempo
      final scale = Tween<double>(
        begin: begin,
        end: end,
      ).animate(curvedAnimation);

      // ScaleTransition anima la escala (tamaño) de otro widget. Permite cambiar el tamaño de un widget de forma animada, ya sea para hacerlo más grande o más pequeño.
      return ScaleTransition(
        scale: scale,
        child: child,
      );
    },
  );
}

// Transición de tipo Rotación
PageRouteBuilder getRatationTransition(Widget screen) {
  return PageRouteBuilder(
    // Página a construir (a mostrar)
    pageBuilder: (context, animation, secondaryAnimation) => screen,
    // Duración de la transición
    transitionDuration: const Duration(milliseconds: 300),
    // Construir la transición
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      // Angulo inicial de rotación
      const begin = 0.0;
      // Número de vueltas completas
      const end = 1.0;
      // Tipo de animación (suave, rebote, etc)
      final curvedAnimation = CurvedAnimation(
        parent: animation,
        curve: Curves.easeInOut,
      );

      // Describe cómo se debe realizar la transición de rotación del widget a lo largo del tiempo (número de vueltas)
      final turns = Tween<double>(
        begin: begin,
        end: end,
      ).animate(curvedAnimation);

      // RotationTransition anima la rotación de otro widget. Permite girar un widget alrededor de su centro de manera animada.
      return RotationTransition(
        turns: turns,
        child: child,
        //alignment: Alignment.centerLeft,
      );
    },
  );
}

// Transición de tipo Desvanecimiento u Opacidad (Fade)
PageRouteBuilder getFadeTransition(Widget screen) {
  return PageRouteBuilder(
    // Página a construir (a mostrar)
    pageBuilder: (context, animation, secondaryAnimation) => screen,
    // Duración de la transición
    transitionDuration: const Duration(milliseconds: 900),
    // Construir la transición
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      // Visibilidad al inicio de la transición
      const begin = 0.0;
      // Visibilidad al final de la transición
      const end = 1.0;
      // Tipo de animación (suave, rebote, etc)
      final curvedAnimation = CurvedAnimation(
        parent: animation,
        curve: Curves.linearToEaseOut,
      );

      // Describe cómo se debe realizar la transición de opacidad del widget a lo largo del tiempo (invisible a visible)
      final opacity = Tween<double>(
        begin: begin,
        end: end,
      ).animate(curvedAnimation);

      // FadeTransition anima la opacidad de otro widget. Permite cambiar gradualmente la opacidad de un widget de forma animada, haciéndolo más visible o menos visible.
      return FadeTransition(
        opacity: opacity,
        child: child,
        //alignment: Alignment.centerLeft,
      );
    },
  );
}

// Transición de tipo Rotación con Opacidad (Mezclar animaciones)
PageRouteBuilder getRotationFadeTransition(Widget screen) {
  return PageRouteBuilder(
    // Página a construir (a mostrar)
    pageBuilder: (context, animation, secondaryAnimation) => screen,
    // Duración de la transición
    transitionDuration: const Duration(milliseconds: 800),
    // Construir la transición
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      // Describe cómo se debe realizar la transición de rotación del widget a lo largo del tiempo
      final turns = Tween<double>(
        begin: 0.8,
        end: 1.0,
      ).animate(CurvedAnimation(
        parent: animation,
        curve: Curves.bounceOut,
      ));

      // Describe cómo se debe realizar la transición de opacidad del widget a lo largo del tiempo
      final opacity = Tween<double>(
        begin: 0.0,
        end: 1.0,
      ).animate(CurvedAnimation(
        parent: animation,
        curve: Curves.easeInExpo,
      ));

      // Mezclar transiciones de Rotación y Opacidad
      return RotationTransition(
        turns: turns,
        child: FadeTransition(
          opacity: opacity,
          child: child,
        ),
      );
    },
  );
}
