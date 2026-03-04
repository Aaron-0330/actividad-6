import 'package:flutter/material.dart';

// -----------------------------------------------------------------------------
// ARCHIVO: lib/mispantallas/pantalla4.dart (Carrito)
// -----------------------------------------------------------------------------
class Pantalla4 extends StatelessWidget {
  const Pantalla4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text("Carrito de Compras", style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.blue[800], // Azul consistente
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            // BOTÓN REGRESAR CON FLECHA A LA IZQUIERDA
            ListTile(
              leading: const Icon(Icons.arrow_back_ios, size: 20, color: Colors.black),
              title: const Text("Regresar", style: TextStyle(fontWeight: FontWeight.bold)),
              onTap: () => Navigator.pop(context),
            ),
            const Divider(thickness: 1, color: Colors.black),
            
            // PRODUCTOS
            const ListTile(
              title: Text("Rotomartillo"), 
              trailing: Text("\$109.99", style: TextStyle(fontWeight: FontWeight.bold))
            ),
            const ListTile(
              title: Text("Destornillador"), 
              trailing: Text("\$20.00", style: TextStyle(fontWeight: FontWeight.bold))
            ),
            
            const Divider(thickness: 2, color: Colors.black),
            
            // TOTAL
            const ListTile(
              title: Text("Total", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)), 
              trailing: Text("\$129.99", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18, color: Colors.blue))
            ),
            
            const Spacer(),
            
            // BOTÓN DE PAGAR
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.orange[900], 
                  padding: const EdgeInsets.all(15),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                    side: const BorderSide(color: Colors.black, width: 1.5), // Borde negro
                  ),
                ),
                onPressed: () => Navigator.pushNamed(context, '/pantalla5'),
                child: const Text("Pagar", style: TextStyle(color: Colors.white, fontSize: 22, fontWeight: FontWeight.bold)),
              ),
            )
          ],
        ),
      ),
    );
  }
}