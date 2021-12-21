import 'package:flutter/material.dart';
import 'package:proyecto_tim_bus/utils/rutas_enlace.dart';



class RutaInstitucion extends StatelessWidget {
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
                      "  Ruta",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 40,
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
                    Container(
                      //padding: EdgeInsets.only(left: 150),
                      padding: const EdgeInsets.all(10),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                          primary: Colors.orange[400],
                          //pading para espesificar el tamaño del texto
                          padding: const EdgeInsets.symmetric(
                              horizontal: 30, vertical: 15),
                          textStyle: const TextStyle(fontSize: 20),
                        ),
                        child: const Text('Rutas Conductores',
                            style: TextStyle(
                                color: Colors.black,
                                decoration: TextDecoration.none)),
                        //al presionar el boton hace una accion
                        onPressed: () => Navigator.of(context)
                        //.pushNamed(RutasEnlace.paginaEmpresa)
                        ,
                        //Navigator.of(context).pushNamed(AppRoutes.products),
                      ),
                    ),

                    SizedBox(height: 0),

                    Text("                  mapa de navegacion"),


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
