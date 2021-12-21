import 'package:flutter/material.dart';
import 'package:proyecto_tim_bus/pages/primera_pagina.dart';
import 'package:proyecto_tim_bus/utils/datos_acceso.dart';
import 'package:proyecto_tim_bus/utils/rutas_enlace.dart';
import 'package:proyecto_tim_bus/utils/validador_campos.dart';

class PaginaAcceso extends StatefulWidget {
  static String etiqueta = 'pagina-acceso';

  @override
  _PaginaAccesoState createState() => _PaginaAccesoState();
}

class _PaginaAccesoState extends State<PaginaAcceso> {
  GlobalKey<FormState> _key = GlobalKey();

  bool claveOculta = true;
  bool claveOculta1 = true;

  final _datosAcceso = DatosAcceso();
  final _validarCampos = ValidadorCampos();

  final _password = TextEditingController();
  final _repeatedPassword = TextEditingController();
  final _email = TextEditingController();

  @override
  //dispose = se vacia la pila para que no sea lento la app
  dispose() {
    super.dispose();
    _password.dispose();
    _repeatedPassword.dispose();
    _email.dispose();
  }

  getItemAndNavigate(BuildContext context) {
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => PrimeraPagina(
                  email: _email.text,
                  clave: _password.text,
                  claveRepetida: _repeatedPassword.text,
                )));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[50],
      body: Center(
        child: SingleChildScrollView(
          child: Container(
            margin: const EdgeInsets.all(20.0),
            child: Center(
              child: Form(
                key: _key,
                child: _cargaInfoForm(),
              ),
            ),
          ),
        ),
      ),
    );
  }

  disenoCompFormAcc(item) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 7),
      child: Card(
        child: ListTile(title: item),
        color: Colors.grey[50],
      ),
    );
  }

  Widget _cargaInfoForm() {
    goBack(BuildContext context) {
      Navigator.pop(context);
    }

    return Column(
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            IconButton(
              onPressed: () => goBack(context),
              //.pushNamed(RutasEnlace.paginaEstudiante)
              icon: Icon(
                Icons.arrow_back,
                size: 50,
              ),
            ),
          ],
          
        ),
        const CircleAvatar(
          backgroundColor: Colors.white,
          radius: 80.0,
          backgroundImage: AssetImage("assets/images/logo.png"),
        ),

        const SizedBox(height: 50.0),

        disenoCompFormAcc(
          TextFormField(
            autovalidateMode: AutovalidateMode.onUserInteraction,
            controller: _email,
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
              prefixIcon: const Icon(
                Icons.email_outlined,
              ),
              hintText: 'Digite un email valido',
              contentPadding: const EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
            ),
            validator: (value) => _validarCampos.validarEmail(value),
            onSaved: (value) => _datosAcceso.email = value,
          ),
        ),
        const SizedBox(height: 20.0),


        disenoCompFormAcc(
          TextFormField(
            autovalidateMode: AutovalidateMode.onUserInteraction,
            controller: _password,
            obscureText: claveOculta,
            keyboardType: TextInputType.visiblePassword,
            maxLength: 30,
            decoration: InputDecoration(
              prefixIcon: const Icon(
                Icons.password,
                color: Colors.indigoAccent,
              ),
              hintText: 'Ingrese su clave',
              contentPadding: const EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
              suffixIcon: GestureDetector(
                onTap: () => setState(() => claveOculta = !claveOculta),
                child: Icon(
                  claveOculta ? Icons.visibility : Icons.visibility_off,
                  semanticLabel: claveOculta ? 'Ver Clave' : 'Ocultar clave',
                ),
              ),
            ),
            validator: (value) => _validarCampos.validarClave(value),
            onSaved: (value) {
              _datosAcceso.clave = value;
            },
          ),
        ),


        const SizedBox(height: 20.0),

        //boton de acceder
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 16.0),
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30.0),
              ),
              primary: Colors.blue[900],
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
              textStyle: const TextStyle(fontSize: 20),
            ),
            child: const Text('Acceder', style: TextStyle(color: Colors.white)),
            onPressed: _enviaServidor,
          ),
        ),

        //todo=  botones rtemporales para dirigirme a las pantallas
        //todo= empieza aqui.  -_- -_> -_- 
        //todo=  Row temporalmente para los botones de los tipos de usuario
        Column(
          children: <Widget>[
            //todo boton de u_estudiante
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16.0),
              //boton azulito de iniciar sesion
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  primary: Colors.blue[400],
                  //pading para espesificar el tamaño del texto
                  padding:
                      const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                  textStyle: const TextStyle(fontSize: 20),
                ),
                child: const Text('U-Estudiante',
                    style: TextStyle(
                        color: Colors.white,
                        decoration: TextDecoration.underline)),
                //al presionar el boton hace una accion
                onPressed: () => Navigator.of(context)
                    .pushNamed(RutasEnlace.UsuarioEstudiante),
                //Navigator.of(context).pushNamed(AppRoutes.products),
              ),
            ),

            // todo: boton de u_institucion
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16.0),
              //boton azulito de iniciar sesion
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  primary: Colors.blue[400],
                  //pading para espesificar el tamaño del texto
                  padding:
                      const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                  textStyle: const TextStyle(fontSize: 20),
                ),
                child: const Text('U_Institucion',
                    style: TextStyle(
                        color: Colors.white,
                        decoration: TextDecoration.underline)),
                //al presionar el boton hace una accion
                onPressed: () => Navigator.of(context)
                    .pushNamed(RutasEnlace.UsuarioInstitucion),
                //Navigator.of(context).pushNamed(AppRoutes.products),
              ),
            ),

            //todo: boton de u_empresa transporte
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16.0),
              //boton azulito de iniciar sesion
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  primary: Colors.blue[400],
                  //pading para espesificar el tamaño del texto
                  padding:
                      const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                  textStyle: const TextStyle(fontSize: 20),
                ),
                child: const Text('U_EmpresaT',
                    style: TextStyle(
                        color: Colors.white,
                        decoration: TextDecoration.underline)),
                //al presionar el boton hace una accion
                onPressed: () =>
                    Navigator.of(context).pushNamed(RutasEnlace.UsuarioEmpresa),
                //Navigator.of(context).pushNamed(AppRoutes.products),
              ),
            ),

            //todo: boton de u_conductor
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16.0),
              //boton azulito de iniciar sesion
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  primary: Colors.blue[400],
                  //pading para espesificar el tamaño del texto
                  padding:
                      const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                  textStyle: const TextStyle(fontSize: 20),
                ),
                child: const Text('U_Conductor',
                    style: TextStyle(
                        color: Colors.white,
                        decoration: TextDecoration.underline)),
                //al presionar el boton hace una accion
                onPressed: () => Navigator.of(context)
                    .pushNamed(RutasEnlace.UsuarioConductor),
                //Navigator.of(context).pushNamed(AppRoutes.products),
              ),
            ),
          ],
        ),
        //todo hasta aqui va lo temporal del Row

        TextButton(
          child: const Text(
            'Olvido Clave',
            style: TextStyle(
                color: Colors.black54,
                fontSize: 18.0,
                decoration: TextDecoration.underline),
          ),
          onPressed: _lanzarDialogoClaveOlvidada,
        ),
        TextButton(
          //onPressed: _enviarRegistrarPagina // comentado temporalmente
          onPressed: () => Navigator.of(context)
            .pushNamed(RutasEnlace.PaginaRegistro),
          child: const Text(
            '¿No es un miembro?, Registrese',
            style: TextStyle(
                color: Colors.black54, decoration: TextDecoration.underline),
          ),
        ),
      ],
    );
  }

  _enviarRegistrarPagina() {
    if (_key.currentState.validate()) {
      _key.currentState.save();
      getItemAndNavigate(context);
      print('todo bien');
    } else {
      print('todo mal');
    }
  }

  //forms validation
  _enviaServidor() {
    if (_key.currentState.validate()) {
      _key.currentState.save();
      getItemAndNavigate(context);
      print('todo bien');
    } else {
      print('todo mal');
    }
  }

  Future<void> _lanzarDialogoClaveOlvidada() async {
    await showDialog<String>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('favor Digita su email'),
          contentPadding: const EdgeInsets.all(5.0),
          content: TextField(
            decoration: const InputDecoration(hintText: "Email"),
            maxLength: 8,
            onChanged: (String value) {
              _datosAcceso.email = value;
            },
          ),
          actions: <Widget>[
            ElevatedButton(
              child: const Text("Aceptar"),
              onPressed: () async {
                _datosAcceso.email = "";
                Navigator.pop(context);
              },
            ),
            ElevatedButton(
              child: const Text("Cancelar"),
              onPressed: () => Navigator.pop(context),
            ),
          ],
        );
      },
    );
  }
}


