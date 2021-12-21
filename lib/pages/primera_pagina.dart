import 'package:flutter/material.dart';
import 'package:proyecto_tim_bus/utils/rutas_enlace.dart';

class PrimeraPagina extends StatelessWidget {
  static String etiqueta = "primera_pagina";

  final email;
  final clave;
  final claveRepetida;

  const PrimeraPagina(
      {Key key, @required this.email, this.clave, this.claveRepetida})
      : super(key: key);

  goBack(BuildContext context) {
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    const imgUsuario = CircleAvatar(
      radius: 55.0,
      backgroundImage: AssetImage("assets/images/userclass.jpg"),
    );

    const textPpal = Padding(
      padding: EdgeInsets.all(8.0),
      child: Text(
        'Bienvenido',
        style: TextStyle(color: Colors.white, fontSize: 20.0),
      ),
    );

    const textSecundario = Padding(
      padding: EdgeInsets.all(8.0),
      child: Text(
        "Los datos de acceso han sido cargados correctamente",
        style: TextStyle(color: Colors.white, fontSize: 20.0),
      ),
    );

    final datosFormulario = Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Card(
            elevation: 20.0,
            child: ListTile(
              title: const Text('Correo'),
              subtitle: Text(
                email,
                style: const TextStyle(fontSize: 15.0),
              ),
            ),
          ),
          Card(
            elevation: 20.0,
            child: ListTile(
              title: const Text('Contraseña'),
              subtitle: Text(
                clave,
                style: const TextStyle(fontSize: 15.0),
              ),
            ),
          ),
          const SizedBox(
            height: 40.0,
          ),
          ElevatedButton(
            onPressed: () => Navigator.of(context).pushNamed(RutasEnlace.home),
            child: const Text(
              'LOG-OUT',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
    );

    final body = Container(
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.all(28.0),
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [Colors.blueAccent, Colors.blueGrey],
        ),
      ),
      child: Column(
        children: <Widget>[
          imgUsuario,
          textPpal,
          textSecundario,
          datosFormulario
        ],
      ),
    );

    return Scaffold(
      appBar: AppBar(
        title: const Text('Datos de inicio de sesion'),
        backgroundColor: Colors.green,
      ),
      body: body,
    );
  }
}
