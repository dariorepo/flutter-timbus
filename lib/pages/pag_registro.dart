import 'package:flutter/material.dart';
import 'package:proyecto_tim_bus/pages/primera_pagina.dart';
import 'package:proyecto_tim_bus/utils/datos_acceso.dart';
import 'package:proyecto_tim_bus/utils/rutas_enlace.dart';
import 'package:proyecto_tim_bus/utils/validador_campos.dart';


class ItemSelect {
  ItemSelect(this.nameSelectItem);
  String nameSelectItem;
}

class PaginaRegistro extends StatefulWidget {
  static String etiqueta = 'pagina-acceso';

  @override
  _PaginaRegistroState createState() => _PaginaRegistroState();
}

class _PaginaRegistroState extends State<PaginaRegistro> {
  GlobalKey<FormState> _key = GlobalKey();

/*------------------------------------------------------------ */
  int genero = 1;
  String info = '';

  List listPreferencia = [
    {"checked": true, "title": "Requerimientos"},
    {"checked": false, "title": "Análisis"},
    {"checked": false, "title": "Diseño"},
    {"checked": false, "title": "Codificación frontend"},
    {"checked": false, "title": "Codificación backend"},
    {"checked": false, "title": "Implantación"},
  ];

  List<Widget> _getListPreferencia() {
    List<Widget> tempListPref = [];
    for (var i = 0; i < this.listPreferencia.length; i++) {
      tempListPref.add(Row(
        children: <Widget>[
          Text(this.listPreferencia[i]["title"] + ":"),
          Checkbox(
              value: this.listPreferencia[i]["checked"],
              onChanged: (value) {
                setState(() {
                  this.listPreferencia[i]["checked"] = value;
                });
              })
        ],
      ));
    }
    return tempListPref;
  }

  void _cargarGenero(value) {
    setState(() {
      this.genero = value;
    });
  }
/*    --------------------------------------------- */

/*----------------------------------------------*/

  //TextEditingController _textcontroller = new TextEditingController();
  int numeroPregunta = 1;
  List<ItemSelect> opcSeleccionada = [null, null];
  List<ItemSelect> opcIde;
  List<ItemSelect> opcSangre;

/*---------------------------------------------- */
  bool claveOculta = true;
  bool claveOculta1 = true;

  final _datosAcceso = DatosAcceso();
  final _validarCampos = ValidadorCampos();

  final _password = TextEditingController();
  final _repeatedPassword = TextEditingController();
  final _email = TextEditingController();

  @override
  void initState() {
    opcIde = <ItemSelect>[
      ItemSelect('Targeta de identidad'),
      ItemSelect('Cedula'),
      ItemSelect('Trgeta extrangera'),
      ItemSelect('Otro'),
    ];

    opcSangre = <ItemSelect>[
      ItemSelect('O Positivo'),
      ItemSelect('O Negativo'),
      ItemSelect('A Positivo'),
      ItemSelect('A Negativo'),
    ];
    super.initState();
  }

  @override
  dispose() {
    super.dispose();
    _password.dispose();
    _repeatedPassword.dispose();
    _email.dispose();
  }

  @override
  Widget _botonDespSelect(List<ItemSelect> selectList, int index) {
    return disenoCompFormReg(
      Container(
        padding: EdgeInsets.all(1),
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          border: Border.all(),
          borderRadius: BorderRadius.all(Radius.circular(15.0)),
        ),
        child: DropdownButton<ItemSelect>(
          underline: SizedBox(),
          isExpanded: true,
          icon: Icon(Icons.arrow_drop_down),
          hint: Text("  Seleccione una opción"),
          value: opcSeleccionada[index],
          onChanged: (ItemSelect Value) {
            setState(() {
              opcSeleccionada[index] = Value;
            });
          },
          items: selectList.map((ItemSelect opcSelect) {
            return DropdownMenuItem<ItemSelect>(
              value: opcSelect,
              child: Row(
                children: <Widget>[
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    opcSelect.nameSelectItem,
                    style: TextStyle(color: Colors.black),
                  ),
                ],
              ),
            );
          }).toList(),
        ),
      ),
    );
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

  disenoCompFormReg(item) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 7),
      child: Card(
        child: ListTile(title: item),
        color: Colors.grey[50],
      ),
    );
  }

  Widget _cargaInfoForm() {
    return Column(
      children: <Widget>[
        const CircleAvatar(
          radius: 50.0,
          backgroundImage: NetworkImage(
              'https://i.blogs.es/66b2a4/photo-1511367461989-f85a21fda167/1366_2000.jpeg'),
        ),
        const SizedBox(height: 50.0),
        disenoCompFormReg(
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
        disenoCompFormReg(
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
        const SizedBox(height: 15.0),
        disenoCompFormReg(
          TextFormField(
            autovalidateMode: AutovalidateMode.onUserInteraction,
            controller: _repeatedPassword,
            obscureText: claveOculta1,
            keyboardType: TextInputType.visiblePassword,
            maxLength: 30,
            decoration: InputDecoration(
              prefixIcon: const Icon(
                Icons.password_outlined,
                color: Colors.indigoAccent,
              ),
              hintText: 'Repetir clave',
              contentPadding: const EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
              suffixIcon: GestureDetector(
                onTap: () => setState(() => claveOculta1 = !claveOculta1),
                child: Icon(
                  claveOculta1 ? Icons.visibility : Icons.visibility_off,
                  semanticLabel: claveOculta1 ? 'Ver Clave' : 'Ocultar clave',
                ),
              ),
            ),
            validator: (value) =>
                _validarCampos.validarClaveRepetida(_password.text, value),
            onSaved: (value) => _datosAcceso.claveRepetida = value,
          ),
        ),

/************************************************* */

        SizedBox(height: 10),
        Text(
          "¿Genero?",
        ),
        disenoCompFormReg(
          Row(
            children: <Widget>[
              Text("masculino"),
              Radio(
                  value: 1,
                  onChanged: this._cargarGenero,
                  groupValue: this.genero),
              SizedBox(width: 30),
              Text("Femenino"),
              Radio(
                  value: 2,
                  onChanged: this._cargarGenero,
                  groupValue: this.genero)
            ],
          ),
        ),
        SizedBox(height: 10),
        Text(
          "¿listPreferencias en ADSI?",
        ),
        disenoCompFormReg(
          Column(
            children: this._getListPreferencia(),
          ),
        ),
        SizedBox(height: 10),

/**------------------------------------------------------ */

        const SizedBox(height: 15.0),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "Tipo de identificación",
          ),
        ),
        _botonDespSelect(opcIde, 0),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "Tipo de sangre",
          ),
        ),
        _botonDespSelect(opcSangre, 1),

        /**------------------------------------------------------ */

        disenoCompFormReg(
          TextField(
            maxLines: 4,
            maxLength: 100,
            decoration: InputDecoration(
              labelText: "Comentarios",
              fillColor: Colors.white,
              prefixIcon: const Icon(
                Icons.comment_sharp,
                color: Colors.indigoAccent,
              ),
              hintText: '¿Sus comentarios?',
              contentPadding: const EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(32.0),
                  borderSide: BorderSide(color: Theme.of(context).accentColor)),
              focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Theme.of(context).accentColor)),
            ),
            onChanged: (value) {
              setState(() {
                this.info = value;
              });
            },
          ),
        ),

/*********************************************** */

        const SizedBox(height: 15.0),
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
            child: const Text('Guardar', style: TextStyle(color: Colors.white)),
            onPressed: _enviaServidor,
          ),
        ),
        /*-------------------------------------------------------*/
      ],
    );
  }

  _enviarRegistrarPagina() {
    Future.delayed(
      Duration(milliseconds: 1000),
      () => Navigator.of(context).pushNamedAndRemoveUntil(
        RutasEnlace.PaginaRegistro,
        (route) => false,
      ),
    );
  }

  //forms validation
  _enviaServidor() {
    if (_key.currentState.validate()) {
      _key.currentState.save();
      getItemAndNavigate(context);
      print('todo bien');
      print(this.genero);
      print(this.listPreferencia);
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
