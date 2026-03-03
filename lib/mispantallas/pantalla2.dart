import 'package:flutter/material.dart';
// -----------------------------------------------------------------------------
// ARCHIVO: lib/mispantallas/pantalla2.dart (Electrodomésticos)
// -----------------------------------------------------------------------------
class Pantalla2 extends StatelessWidget {
  const Pantalla2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Electrodomésticos"),
        backgroundColor: Colors.blue[900],
        actions: const [Icon(Icons.filter_list), Icon(Icons.notifications_none)],
      ),
      body: GridView.count(
        crossAxisCount: 2,
        padding: const EdgeInsets.all(10),
        children: [
          _itemGrid(context, "Lavadora", "https://raw.githubusercontent.com/Aaron-0330/Imagenes-para-flutter-6to-I-fecha-11-de-febrero-2026/refs/heads/main/lavadora.jfif"),
          _itemGrid(context, "Refrigerador", "https://raw.githubusercontent.com/Aaron-0330/Imagenes-para-flutter-6to-I-fecha-11-de-febrero-2026/refs/heads/main/refrigerador.jpg"),
          _itemGrid(context, "Microondas", "https://raw.githubusercontent.com/Aaron-0330/Imagenes-para-flutter-6to-I-fecha-11-de-febrero-2026/refs/heads/main/microondas.jfif"),
          _itemGrid(context, "Estufa", "https://raw.githubusercontent.com/Aaron-0330/Imagenes-para-flutter-6to-I-fecha-11-de-febrero-2026/refs/heads/main/estufa.jfif"),
          _itemGrid(context, "Licuadora", "https://raw.githubusercontent.com/Aaron-0330/Imagenes-para-flutter-6to-I-fecha-11-de-febrero-2026/refs/heads/main/licuadora.jfif"),
          _itemGrid(context, "Tostador", "https://raw.githubusercontent.com/Aaron-0330/Imagenes-para-flutter-6to-I-fecha-11-de-febrero-2026/refs/heads/main/tostador.webp"),
        ],
      ),
    );
  }

  Widget _itemGrid(BuildContext context, String nombre, String url) {
    return Card(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.network(url, height: 60, errorBuilder: (c, e, s) => const Icon(Icons.kitchen)),
          Text(nombre),
          ElevatedButton(
            style: ElevatedButton.styleFrom(backgroundColor: Colors.orange),
            onPressed: () => Navigator.pushNamed(context, ''),
            child: const Text("Detalles", style: TextStyle(color: Colors.white)),
          )
        ],
      ),
    );
  }
}