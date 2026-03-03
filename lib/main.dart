import 'package:flutter/material.dart';
import 'package:myapp/mispantallas/inicio.dart';
import 'package:myapp/mispantallas/pantalla2.dart';
import 'package:myapp/mispantallas/pantalla3.dart';
import 'package:myapp/mispantallas/pantalla4.dart';
import 'package:myapp/mispantallas/pantalla5.dart';
import 'package:myapp/mispantallas/pantalla6.dart';

// -----------------------------------------------------------------------------
// ARCHIVO: lib/main.dart
// -----------------------------------------------------------------------------
// Una vez que separes los archivos, deberás importar cada uno aquí:
// import 'package:tu_proyecto/mispantallas/Inicio.dart';
// import 'package:tu_proyecto/mispantallas/pantalla2.dart'; ... etc

void main() {
  runApp(const HomeDepotApp());
}

class HomeDepotApp extends StatelessWidget {
  const HomeDepotApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Home Depot - Aarón Dominguez',
      // NAVEGACIÓN EXCLUSIVA POR RUTAS NOMBRADAS
      initialRoute: '/',
      routes: {
        '/': (context) => const Inicio(),
        '/pantalla2': (context) => const Pantalla2(),
        '/pantalla3': (context) => const Pantalla3(),
        '/pantalla4': (context) => const Pantalla4(),
        '/pantalla5': (context) => const Pantalla5(),
        '/pantalla6': (context) => const Pantalla6(),
      },
    );
  }
}









