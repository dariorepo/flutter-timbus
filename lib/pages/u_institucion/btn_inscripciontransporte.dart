import 'package:flutter/material.dart';
import 'package:proyecto_tim_bus/utils/rutas_enlace.dart';


class InscripcionTransporte extends StatelessWidget {
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
                      height: 50,
                  ),

                    Text(
                      " Inscripcion al Transporte",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 30,
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(
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
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[



                    SizedBox(height: 10),


                    Text(" Icono - Transtambo        btn  -inscribirme "),
                    Text(" Icono - Transpubenza      btn  -inscribirme"),
                    Text(" Icono - Transipiales      btn  -inscribirme"),
                    Text(" Icono - Translibertad     btn  -inscribirme"),
                    Text(" Icono - Sotracauca        btn  -inscribirme"),
                    Text(" Icono - Talbelalcazar     btn  -inscribirme"),


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
