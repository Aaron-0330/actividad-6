import 'package:flutter/material.dart';
// -----------------------------------------------------------------------------
// ARCHIVO: lib/mispantallas/pantalla5.dart (Datos de pago)
// -----------------------------------------------------------------------------
class Pantalla5 extends StatelessWidget {
  const Pantalla5({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Datos de Facturación"),
        backgroundColor: Colors.orange[400],
        actions: const [Icon(Icons.security), Icon(Icons.credit_card)],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            _input("Número tarjeta"),
            Row(children: [Expanded(child: _input("CVV")), const SizedBox(width: 10), Expanded(child: _input("Fecha"))]),
            _input("Nombre titular"),
            const Spacer(),
            Align(
              alignment: Alignment.bottomRight,
              child: ElevatedButton.icon(
                onPressed: () => Navigator.pushNamed(context, '/pantalla6'),
                icon: const Text("Siguiente"),
                label: const Icon(Icons.arrow_forward),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _input(String label) => Padding(
    padding: const EdgeInsets.only(bottom: 15),
    child: TextField(decoration: InputDecoration(labelText: label, border: const OutlineInputBorder())),
  );
}
