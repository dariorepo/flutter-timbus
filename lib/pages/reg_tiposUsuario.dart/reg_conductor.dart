import 'package:flutter/material.dart';
import 'package:proyecto_tim_bus/utils/datos_acceso.dart';
import 'package:proyecto_tim_bus/utils/validador_campos.dart';


 class reg_conductor extends StatefulWidget {
    static String etiqueta = 'pagina-acceso';

  @override
  _reg_conductorState createState() => _reg_conductorState();
}
class _reg_conductorState extends State<reg_conductor>{
  final _claveFormulario = GlobalKey<FormState>();
  final TextEditingController _cedula = TextEditingController();
  final TextEditingController _nombre = TextEditingController();
  final TextEditingController _apellido = TextEditingController();
  final TextEditingController _telefono = TextEditingController();
  final TextEditingController _direccion = TextEditingController();
  final TextEditingController _correo = TextEditingController();
  final TextEditingController _contrasena = TextEditingController();


  //reg_conductor(MyApp myApp);
bool claveOculta = true;
  bool claveOculta1 = true;

  final _datosAcceso = DatosAcceso();
  final _validarCampos = ValidadorCampos();

  //final _contrasena = TextEditingController();
  //final _repeatedcontrasena = TextEditingController();
  //final _email = TextEditingController();

@override
  //dispose = se vacia la pila para que no sea lento la app
  dispose() {
    super.dispose();
    _contrasena.dispose();

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("registro conductor"),
      ),

      body: Form(
        key: _claveFormulario,
        child: ListView(shrinkWrap: true, children: <Widget>[
          Padding(
             padding: EdgeInsets.all(16.0),
            child: TextFormField(
              autovalidateMode: AutovalidateMode.onUserInteraction,
              controller:_cedula,
            keyboardType: TextInputType.number,
            maxLength: 10,
            decoration: InputDecoration(
              labelText: "Cedula",
              hintText: 'Escriba su cedula',
            ),
             
              validator: (value) => _validarCampos.validarCedula(value),
            onSaved: (value) {
              _datosAcceso.telefono = value;
            },
            ),
          ),
          Padding(
           padding: EdgeInsets.all(16.0),
            child: TextFormField(
              autovalidateMode: AutovalidateMode.onUserInteraction,
              controller:_nombre,
            keyboardType: TextInputType.text,
            maxLength: 20,
            decoration: InputDecoration(
              labelText: "Nombres",
              hintText: 'Escriba sus nombres',
            ),
             
              validator: (value) => _validarCampos.validarNombre(value),
            onSaved: (value) {
              _datosAcceso.telefono = value;
            },
            ),
          ),
          
          Padding(
            padding: EdgeInsets.all(16.0),
            child: TextFormField(
              autovalidateMode: AutovalidateMode.onUserInteraction,
              controller:_apellido,
            keyboardType: TextInputType.text,
            maxLength: 20,
            decoration: InputDecoration(
              labelText: "Apellido",
              hintText: 'Escriba sus apellidos',
            ),
             
              validator: (value) => _validarCampos.validarApellido(value),
            onSaved: (value) {
              _datosAcceso.telefono = value;
            },
            ),
          ),
          
          Padding(
            padding: EdgeInsets.all(16.0),
            child: 

            TextFormField(
            autovalidateMode: AutovalidateMode.onUserInteraction,
            controller:_telefono,
            keyboardType: TextInputType.number,
            maxLength: 10,
            decoration: InputDecoration(
              labelText: "Telefono",
              hintText: 'Escriba su telefono',
            ),
            validator: (value) => _validarCampos.validarTelefono(value),
            onSaved: (value) {
              _datosAcceso.telefono = value;
            },
          ),
          ),
            Padding(
            padding: EdgeInsets.all(16.0),
            child: 

             TextFormField(
            autovalidateMode: AutovalidateMode.onUserInteraction,
            controller:_direccion,
            keyboardType: TextInputType.streetAddress,
            maxLength: 30,
            decoration: InputDecoration(
              labelText: "direccion residencia",
              
              hintText: 'Escriba su direccion',
            ),
            validator: (value) => _validarCampos.validarDirecion(value),
            onSaved: (value) {
              _datosAcceso.direcionResidencia = value;
            },
          ),
          ),

          //correo electronico
          Padding(
            padding: EdgeInsets.all(16.0),
            child: 

             TextFormField(
            autovalidateMode: AutovalidateMode.onUserInteraction,
            controller:_correo,
            keyboardType: TextInputType.visiblePassword,
            maxLength: 30,
            decoration: InputDecoration(
              labelText: "correo electronico",
              prefixIcon: const Icon(
                Icons.email_outlined,
                color: Colors.grey,
              ),
              hintText: 'Escriba su correo electronico',
            ),
            validator: (value) => _validarCampos.validarEmail(value),
            onSaved: (value) {
              _datosAcceso.email = value;
            },
          ),
          ),

          Padding(
            padding: EdgeInsets.all(16.0),
            child: 

             TextFormField(
            autovalidateMode: AutovalidateMode.onUserInteraction,
            controller: _contrasena,
            obscureText: claveOculta,
            keyboardType: TextInputType.visiblePassword,
            maxLength: 30,
            decoration: InputDecoration(
              labelText: "contraseña",
              prefixIcon: const Icon(
                Icons.lock,
                color: Colors.grey,
              ),
              hintText: 'Ingrese su clave',
              
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

      
       
         
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0),
                ),
                primary: Colors.greenAccent[400],
                padding:
                    const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                textStyle: const TextStyle(fontSize: 20),
              ),
              onPressed: () {},
              child:
                  const Text('Registrarte', style: TextStyle(color: Colors.white)),
              //onPressed: _enviaServidor,
            ),
          ),
        ]),
      ),
    );
  }
}