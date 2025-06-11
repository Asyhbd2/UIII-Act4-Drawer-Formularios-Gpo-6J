import 'package:flutter/material.dart';
import 'details.dart';

class MyForm extends StatefulWidget {
  const MyForm({super.key});

  @override
  State<MyForm> createState() => _MyFormState();
}

class _MyFormState extends State<MyForm> {
  final _clienteIdController = TextEditingController();
  final _nombreController = TextEditingController();
  final _correoController = TextEditingController();
  final _telefonoController = TextEditingController();
  final _direccionController = TextEditingController();
  final _fechaRegistroController = TextEditingController();
  final _preferenciasController = TextEditingController();

  @override
  void dispose() {
    _clienteIdController.dispose();
    _nombreController.dispose();
    _correoController.dispose();
    _telefonoController.dispose();
    _direccionController.dispose();
    _fechaRegistroController.dispose();
    _preferenciasController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple.shade300,
        title: const Text("Formulario Cliente"),
        centerTitle: true,
      ),
      body: Container(
        padding: const EdgeInsets.all(20.0),
        child: ListView(
          children: [
            MyTextField(
              myController: _clienteIdController,
              fieldName: "Cliente ID",
              myIcon: Icons.perm_identity,
              prefixIconColor: Colors.deepPurple.shade300,
            ),
            const SizedBox(height: 10),
            MyTextField(
              myController: _nombreController,
              fieldName: "Nombre",
              myIcon: Icons.person,
              prefixIconColor: Colors.deepPurple.shade300,
            ),
            const SizedBox(height: 10),
            MyTextField(
              myController: _correoController,
              fieldName: "Correo Electrónico",
              myIcon: Icons.email,
              prefixIconColor: Colors.deepPurple.shade300,
            ),
            const SizedBox(height: 10),
            MyTextField(
              myController: _telefonoController,
              fieldName: "Teléfono",
              myIcon: Icons.phone,
              prefixIconColor: Colors.deepPurple.shade300,
            ),
            const SizedBox(height: 10),
            MyTextField(
              myController: _direccionController,
              fieldName: "Dirección",
              myIcon: Icons.home,
              prefixIconColor: Colors.deepPurple.shade300,
            ),
            const SizedBox(height: 10),
            MyTextField(
              myController: _fechaRegistroController,
              fieldName: "Fecha de Registro",
              myIcon: Icons.calendar_today,
              prefixIconColor: Colors.deepPurple.shade300,
            ),
            const SizedBox(height: 10),
            MyTextField(
              myController: _preferenciasController,
              fieldName: "Preferencias",
              myIcon: Icons.favorite,
              prefixIconColor: Colors.deepPurple.shade300,
            ),
            const SizedBox(height: 20),
            myBtn(context),
          ],
        ),
      ),
    );
  }

  OutlinedButton myBtn(BuildContext context) {
    return OutlinedButton(
      style: OutlinedButton.styleFrom(minimumSize: const Size(200, 50)),
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => Details(
              clienteId: _clienteIdController.text,
              nombre: _nombreController.text,
              correo: _correoController.text,
              telefono: _telefonoController.text,
              direccion: _direccionController.text,
              fechaRegistro: _fechaRegistroController.text,
              preferencias: _preferenciasController.text,
            ),
          ),
        );
      },
      child: Text(
        "Enviar".toUpperCase(),
        style: const TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.deepPurple,
        ),
      ),
    );
  }
}

class MyTextField extends StatelessWidget {
  const MyTextField({
    super.key,
    required this.fieldName,
    required this.myController,
    this.myIcon = Icons.verified_user_outlined,
    this.prefixIconColor = Colors.blueAccent,
  });

  final TextEditingController myController;
  final String fieldName;
  final IconData myIcon;
  final Color prefixIconColor;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: myController,
      decoration: InputDecoration(
        labelText: fieldName,
        prefixIcon: Icon(myIcon, color: prefixIconColor),
        border: const OutlineInputBorder(),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.deepPurple.shade300),
        ),
        labelStyle: const TextStyle(color: Colors.deepPurple),
      ),
    );
  }
}
