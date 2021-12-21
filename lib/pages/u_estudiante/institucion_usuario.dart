import 'package:flutter/material.dart';
import 'package:proyecto_tim_bus/utils/rutas_enlace.dart';


class InstitucionUsuario extends StatelessWidget {
  goBack(BuildContext context) {
    Navigator.pop(context);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          decoration: BoxDecoration(color: Colors.white10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Container(
                height: 80,
                color: Colors.orange[400],
                child: Row(
                  //crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    //primer icono
                    IconButton(
                      onPressed: () => goBack(context),
                      //.pushNamed(RutasEnlace.paginaEstudiante)
                      icon: Icon(
                        Icons.arrow_back,
                        size: 50,
                      ),
                    ),

                    const SizedBox(
                      height: 50.0,
                    ),

                    Text(
                      "  Institucion",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 40,
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(
                height: 20,
              ),

              Container(
                height: 600,
                width: 370,
                padding:
                    EdgeInsets.only(left: 20, top: 20, right: 20, bottom: 20),
                decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.blueAccent,
                      width: 2,
                    ),
                    borderRadius: BorderRadius.circular(30.0)),
                child: Column(
                  //mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[

                    const CircleAvatar(
                      radius: 50.0,
                      backgroundImage: AssetImage("assets/images/institucion.jpg"),
                    ),
                      Text("Informacion  Institucion",
                        style: TextStyle(
                          color: Colors.cyan,
                          fontSize: 20,
                          ),),

                    const SizedBox(height: 10,),

                    Text("nombre"),
                    Text("direcion"),
                    Text("telefono"),
                    Text("correo"),
                    Text("NIT"),


                  ],
                ),
              ),

              SizedBox(
                height: 20,
              ),

              // botones de institucion y pago transporte
              //botones institucion
            ],
          ),
        ),
      ),
    );
  }
}

