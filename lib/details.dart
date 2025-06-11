import 'package:flutter/material.dart';

class Details extends StatelessWidget {
  const Details({
    super.key,
    required this.clienteId,
    required this.nombre,
    required this.correo,
    required this.telefono,
    required this.direccion,
    required this.fechaRegistro,
    required this.preferencias,
  });

  final String clienteId;
  final String nombre;
  final String correo;
  final String telefono;
  final String direccion;
  final String fechaRegistro;
  final String preferencias;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple.shade300,
        centerTitle: true,
        title: const Text("Información"),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back),
        ),
      ),
      body: Container(
        padding: const EdgeInsets.all(4.0),
        child: ListView(
          children: [
            ListTile(
              shape: RoundedRectangleBorder(
                side: BorderSide(width: 1.0, color: Colors.grey.shade300),
              ),
              leading: IconButton(
                icon: const Icon(Icons.person, color: Colors.deepPurple),
                onPressed: () {},
              ),
              title: Text(
                nombre,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18.0,
                ),
              ),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Cliente ID: $clienteId"),
                  Text("Correo: $correo"),
                  Text("Teléfono: $telefono"),
                  Text("Dirección: $direccion"),
                  Text("Fecha de Registro: $fechaRegistro"),
                  Text("Preferencias: $preferencias"),
                ],
              ),
              trailing: const Icon(Icons.delete, color: Colors.grey),
            ),
          ],
        ),
      ),
    );
  }
}
