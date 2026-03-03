import 'package:flutter/material.dart';
// -----------------------------------------------------------------------------
// ARCHIVO: lib/mispantallas/pantalla3.dart (Detalles del Foco)
// -----------------------------------------------------------------------------
class Pantalla3 extends StatelessWidget {
  const Pantalla3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Detalle de Producto"),
        backgroundColor: Colors.blue[700],
        actions: const [Icon(Icons.share), Icon(Icons.favorite_border)],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Image.network("https://raw.githubusercontent.com/Aaron-0330/Imagenes-para-flutter-6to-I-fecha-11-de-febrero-2026/refs/heads/main/foco.webp", height: 180, 
                errorBuilder: (c, e, s) => const Icon(Icons.lightbulb, size: 150, color: Colors.yellow)),
            const Align(alignment: Alignment.centerLeft, child: Text("Foco \$99.00", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold))),
            const SizedBox(height: 10),
            Container(color: Colors.green[100], padding: const EdgeInsets.all(5), child: const Text("15 existentes", style: TextStyle(color: Colors.green))),
            const SizedBox(height: 20),
            const Text("Foco inteligente color amarillo, sin base y de energía eléctrica con tecnología LED de larga duración."),
            const Spacer(),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton.icon(
                icon: const Icon(Icons.add_shopping_cart, color: Colors.white),
                label: const Text("Agregar al carro", style: TextStyle(color: Colors.white)),
                style: ElevatedButton.styleFrom(backgroundColor: Colors.orange[800], padding: const EdgeInsets.all(15)),
                onPressed: () => Navigator.pushNamed(context, '/pantalla4'),
              ),
            )
          ],
        ),
      ),
    );
  }
}