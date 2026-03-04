
import 'package:flutter/material.dart';// -----------------------------------------------------------------------------
// ARCHIVO: lib/mispantallas/pantalla6.dart (Éxito)
// -----------------------------------------------------------------------------
class Pantalla6 extends StatelessWidget {
  const Pantalla6({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.check_circle_outline, size: 150, color: Colors.green),
            const Text("Pedido realizado!", style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold)),
            const SizedBox(height: 50),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                side: const BorderSide(color: Colors.orange, width: 2),
                padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 15)
              ),
              onPressed: () => Navigator.pushNamedAndRemoveUntil(context, '/', (route) => false),
              child: const Text("Regresar", style: TextStyle(color: Colors.orange, fontSize: 18)),
            )
          ],
        ),
      ),
    );
  }
}