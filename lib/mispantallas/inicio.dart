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
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            ListTile(
              title: const Text("Regresar", style: TextStyle(fontWeight: FontWeight.bold)),
              trailing: const Icon(Icons.arrow_forward_ios, size: 16),
              onTap: () => Navigator.pop(context),
            ),
            const Divider(),
            _buildDrawerItem(Icons.home, "Hogar", context),
            _buildDrawerItem(Icons.build, "Herramientas", context),
            _buildDrawerItem(Icons.weekend, "Muebles", context),
            _buildDrawerItem(Icons.kitchen, "Electrodomésticos", context, route: '/pantalla2'),
            _buildDrawerItem(Icons.moped, "Decoración", context),
            _buildDrawerItem(Icons.admin_panel_settings, "Admin", context),
            _buildDrawerItem(Icons.person, "Cuenta", context),
          ],
        ),
      ),
      appBar: AppBar(
        backgroundColor: Colors.blue[800],
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.white),
        title: Container(
          height: 40,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(5),
            border: Border.all(color: Colors.black, width: 1),
          ),
          child: const TextField(
            decoration: InputDecoration(
              hintText: "Buscar...",
              prefixIcon: Icon(Icons.search, color: Colors.grey),
              border: InputBorder.none,
              contentPadding: EdgeInsets.symmetric(vertical: 10),
            ),
          ),
        ),
        actions: const [
          Icon(Icons.shopping_cart_outlined, color: Colors.white),
          SizedBox(width: 15),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 25),
            // SECCIÓN OFERTAS
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(color: Colors.black, width: 2),
                ),
                padding: const EdgeInsets.symmetric(vertical: 15),
                child: const Text(
                  "OFERTAS", 
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 45, 
                    fontWeight: FontWeight.bold, 
                    color: Colors.black, 
                    letterSpacing: 2,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 30),
            
            // CONTENEDOR PRINCIPAL DE ICONOS Y PRODUCTOS
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: Column(
                children: [
                  // Fila de Iconos Superiores
                  Row(
                    children: [
                      _buildAlignedBox(Icons.home, isFirst: true),
                      _buildAlignedBox(Icons.weekend),
                      _buildAlignedBox(Icons.hardware, isLast: true),
                    ],
                  ),
                  const SizedBox(height: 15), // Espacio pequeño entre iconos y productos
                  // Fila de Productos con sus propios cuadros negros
                  Row(
                    children: [
                      _cardInicio(context, "99.00", "https://raw.githubusercontent.com/Aaron-0330/Imagenes-para-flutter-6to-I-fecha-11-de-febrero-2026/refs/heads/main/foco.webp", true, isFirst: true),
                      _cardInicio(context, "120.00", "https://raw.githubusercontent.com/Aaron-0330/Imagenes-para-flutter-6to-I-fecha-11-de-febrero-2026/refs/heads/main/frifo.webp", false),
                      _cardInicio(context, "345.00", "https://raw.githubusercontent.com/Aaron-0330/Imagenes-para-flutter-6to-I-fecha-11-de-febrero-2026/refs/heads/main/lampara.jpg", false, isLast: true),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Cuadros de Iconos
  Widget _buildAlignedBox(IconData icon, {bool isFirst = false, bool isLast = false}) {
    return Expanded(
      child: Container(
        height: 60,
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: Colors.black, width: 1.5),
          borderRadius: BorderRadius.only(
            topLeft: isFirst ? const Radius.circular(10) : Radius.zero,
            bottomLeft: isFirst ? const Radius.circular(10) : Radius.zero,
            topRight: isLast ? const Radius.circular(10) : Radius.zero,
            bottomRight: isLast ? const Radius.circular(10) : Radius.zero,
          ),
        ),
        child: Icon(icon, size: 35, color: Colors.blue[800]),
      ),
    );
  }

  // Cuadros de Productos con Líneas Negras
  Widget _cardInicio(BuildContext context, String precio, String url, bool link, {bool isFirst = false, bool isLast = false}) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 10),
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: Colors.black, width: 1.5), // LÍNEAS NEGRAS ALINEADAS
          borderRadius: BorderRadius.only(
            topLeft: isFirst ? const Radius.circular(10) : Radius.zero,
            bottomLeft: isFirst ? const Radius.circular(10) : Radius.zero,
            topRight: isLast ? const Radius.circular(10) : Radius.zero,
            bottomRight: isLast ? const Radius.circular(10) : Radius.zero,
          ),
        ),
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.network(
                url, height: 60, width: 60, fit: BoxFit.cover,
                errorBuilder: (c, e, s) => const Icon(Icons.image, size: 60),
              ),
            ),
            const SizedBox(height: 5),
            Text("\$$precio", style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 14)),
            const SizedBox(height: 5),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.orange[900], 
                minimumSize: const Size(40, 30),
                padding: EdgeInsets.zero,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                  side: const BorderSide(color: Colors.black, width: 1),
                ),
              ),
              onPressed: () => link ? Navigator.pushNamed(context, '/pantalla3') : null,
              child: const Text("+", style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold)),
            )
          ],
        ),
      ),
    );
  }

  Widget _buildDrawerItem(IconData icon, String title, BuildContext context, {String? route}) {
    return ListTile(
      leading: Icon(icon, color: Colors.blue[800]),
      title: Text(title),
      onTap: () {
        Navigator.pop(context);
        if (route != null) {
          Navigator.pushNamed(context, route);
        }
      },
    );
  }
}