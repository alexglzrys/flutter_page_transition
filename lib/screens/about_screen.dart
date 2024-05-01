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
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(16),
            child: Column(
              children: [
                const Text(
                    'Angelopolis Lifestyle Center presenta Rewards su exclusivo programa de recompensas con el que premia tu preferencia a través de los mas exclusivos premios y beneficios que serán un complemento ideal a tus compras en el centro comercial. Para formar parte solo debes seguir estos 4 sencillos pasos:'),
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 10),
                  child: const Column(
                    children: [
                      ListTile(
                          leading: Icon(
                            Icons.touch_app,
                            color: Color(0XFF7A3B69),
                          ),
                          minLeadingWidth: 30,
                          title: Text(
                            'Inscribirte en nuestro módulo de Guest Relations.',
                            style: TextStyle(fontSize: 14),
                          )),
                      ListTile(
                          leading: Icon(
                            Icons.touch_app,
                            color: Color(0XFF7A3B69),
                          ),
                          minLeadingWidth: 30,
                          title: Text(
                            'Realizar tus compras en todas las boutiques, restaurantes y entretenimiento de Angelópolis Lifestyle Center.',
                            style: TextStyle(fontSize: 14),
                          )),
                      ListTile(
                          leading: Icon(
                            Icons.touch_app,
                            color: Color(0XFF7A3B69),
                          ),
                          minLeadingWidth: 30,
                          title: Text(
                            'Presentar tus tickets en nuestro módulo de Guest Relations para acumular tus puntos Rewards.',
                            style: TextStyle(fontSize: 14),
                          )),
                      ListTile(
                          leading: Icon(
                            Icons.touch_app,
                            color: Color(0XFF7A3B69),
                          ),
                          minLeadingWidth: 30,
                          title: Text(
                            'Cambiar tus puntos por los mas increíbles premios.',
                            style: TextStyle(fontSize: 14),
                          ))
                    ],
                  ),
                ),
                const Text(
                    'Las páginas de Angelópolis Lifestyle Center están amparadas por las leyes de protección de la propiedad intelectual, así como todos los elementos que la componen y es propiedad exclusiva de Angelópolis Lifestyle Center.'),
              ],
            ),
          ),
        ));
  }
}
