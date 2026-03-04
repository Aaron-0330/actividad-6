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
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
        childAspectRatio: 0.8, // Ajuste para dar espacio al nuevo contenedor
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
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Colors.black, width: 1.5), // Borde negro exterior
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // CONTENEDOR DE IMAGEN MEJORADO
          Expanded(
            child: Container(
              margin: const EdgeInsets.all(8),
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.grey[100], // Fondo gris claro para resaltar el producto
                borderRadius: BorderRadius.circular(5),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(5),
                child: Image.network(
                  url,
                  fit: BoxFit.contain, // Mantiene la imagen completa
                  errorBuilder: (c, e, s) => const Icon(Icons.kitchen, size: 50),
                ),
              ),
            ),
          ),
          Text(nombre, style: const TextStyle(fontWeight: FontWeight.bold)),
          const SizedBox(height: 5),
          Padding(
            padding: const EdgeInsets.only(bottom: 8.0),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: Colors.orange),
              onPressed: () => Navigator.pushNamed(context, ''),
              child: const Text("Detalles", style: TextStyle(color: Colors.white)),
            ),
          )
        ],
      ),
    );
  }
}