import 'package:flutter/material.dart';

class Pantalla3 extends StatelessWidget {
  const Pantalla3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Detalles", style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.blue[700],
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // --- 1. CONTENEDOR DE IMAGEN (MARCO NEGRO INDEPENDIENTE) ---
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black, width: 2),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Image.network(
                "https://raw.githubusercontent.com/Aaron-0330/Imagenes-para-flutter-6to-I-fecha-11-de-febrero-2026/refs/heads/main/foco.webp",
                height: 180,
                errorBuilder: (c, e, s) => const Icon(Icons.lightbulb, size: 100, color: Colors.yellow),
              ),
            ),

            const SizedBox(height: 20),

            // --- 2. UN SOLO MARCO PARA TODA LA INFORMACIÓN DEL PRODUCTO ---
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black, width: 2), // El mismo marco negro
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Fila de Nombre y Precio
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text("Foco Inteligente", 
                        style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
                      Text("\$99.00", 
                        style: TextStyle(fontSize: 22, color: Colors.blue[900], fontWeight: FontWeight.bold)),
                    ],
                  ),
                  
                  const SizedBox(height: 12),

                  // Etiqueta de Stock (Verde)
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                    decoration: BoxDecoration(
                      color: Colors.green[100],
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: const Text("15 existentes", 
                      style: TextStyle(color: Colors.green, fontWeight: FontWeight.bold)),
                  ),

                  const SizedBox(height: 15),

                  // Descripción
                  const Text(
                    "Foco inteligente color amarillo, sin base y de energía eléctrica con tecnología LED de larga duración.",
                    style: TextStyle(fontSize: 15, height: 1.4, color: Colors.black87),
                  ),
                ],
              ),
            ),

            const Spacer(),

            // --- 3. EL BOTÓN DE ACCIÓN ---
            _miBotonPersonalizado(context),
          ],
        ),
      ),
    );
  }

  Widget _miBotonPersonalizado(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const Pantalla4Destino()),
        );
      },
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: Colors.orange[800],
          borderRadius: BorderRadius.circular(10),
        ),
        child: const Center(
          child: Text(
            "AGREGAR AL CARRO",
            style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}

class Pantalla4Destino extends StatelessWidget {
  const Pantalla4Destino({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Carrito")), 
      body: const Center(child: Text("Pantalla 4 - Carrito de Compras"))
    );
  }
}