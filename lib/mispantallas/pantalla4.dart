import 'package:flutter/material.dart';
// -----------------------------------------------------------------------------
// ARCHIVO: lib/mispantallas/pantalla4.dart (Carrito)
// -----------------------------------------------------------------------------
class Pantalla4 extends StatelessWidget {
  const Pantalla4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Carrito de Compras"),
        backgroundColor: Colors.blue[500],
        actions: const [Icon(Icons.delete_outline), Icon(Icons.info_outline)],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            const ListTile(title: Text("Rotomartillo"), trailing: Text("109.99")),
            const ListTile(title: Text("Destornillador"), trailing: Text("20.00")),
            const Divider(thickness: 2),
            const ListTile(title: Text("Total", style: TextStyle(fontWeight: FontWeight.bold)), trailing: Text("129.99 \$")),
            const Spacer(),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: Colors.orange[800], padding: const EdgeInsets.all(15)),
                onPressed: () => Navigator.pushNamed(context, '/pantalla5'),
                child: const Text("Pagar", style: TextStyle(color: Colors.white, fontSize: 20)),
              ),
            )
          ],
        ),
      ),
    );
  }
}
