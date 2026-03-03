import 'package:flutter/material.dart';
// -----------------------------------------------------------------------------
// ARCHIVO: lib/mispantallas/Inicio.dart
// -----------------------------------------------------------------------------
class Inicio extends StatelessWidget {
  const Inicio({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text("Home Depot", style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.orange[900], // Color Institucional
        actions: const [
          Icon(Icons.search, color: Colors.white),
          SizedBox(width: 15),
          Icon(Icons.shopping_cart_outlined, color: Colors.white),
          SizedBox(width: 10),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Header con nombre y grupo
            Container(
              padding: const EdgeInsets.all(10),
              color: Colors.orange[100],
              width: double.infinity,
              child: const Text(
                "Aarón Dominguez - Grupo 6I",
                textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
            ),
            // Buscador del dibujo
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Buscar...",
                  prefixIcon: const Icon(Icons.search),
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(5)),
                ),
              ),
            ),
            const Text("OFERTAS", style: TextStyle(fontSize: 45, fontWeight: FontWeight.bold, color: Colors.red)),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [Icon(Icons.home, size: 40), Icon(Icons.weekend, size: 40), Icon(Icons.build, size: 40)],
            ),
            const SizedBox(height: 20),
            // PRODUCTOS: Foco, Grifo, Lámpara de techo
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _cardInicio(context, "Foco", "99.00", "https://raw.githubusercontent.com/Aaron-0330/Imagenes-para-flutter-6to-I-fecha-11-de-febrero-2026/refs/heads/main/foco.webp", true),
                _cardInicio(context, "Grifo", "120.00", "https://raw.githubusercontent.com/Aaron-0330/Imagenes-para-flutter-6to-I-fecha-11-de-febrero-2026/refs/heads/main/frifo.webp", false),
                _cardInicio(context, "Lámpara", "345.00", "https://raw.githubusercontent.com/Aaron-0330/Imagenes-para-flutter-6to-I-fecha-11-de-febrero-2026/refs/heads/main/lampara.jpg", false),
              ],
            ),
            const SizedBox(height: 30),
            ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, '/pantalla2'),
              child: const Text("Ver Catálogo Completo"),
            )
          ],
        ),
      ),
    );
  }

  Widget _cardInicio(BuildContext context, String nombre, String precio, String url, bool link) {
    return Column(
      children: [
        Image.network(url, height: 70, errorBuilder: (c, e, s) => const Icon(Icons.image, size: 70)),
        Text("\$$precio", style: const TextStyle(fontWeight: FontWeight.bold)),
        ElevatedButton(
          style: ElevatedButton.styleFrom(backgroundColor: Colors.orange[800]),
          onPressed: () => link ? Navigator.pushNamed(context, '/pantalla3') : null,
          child: const Text("Detalles", style: TextStyle(color: Colors.white, fontSize: 10)),
        )
      ],
    );
  }
}