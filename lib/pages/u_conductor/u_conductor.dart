import 'package:flutter/material.dart';
import 'package:proyecto_tim_bus/utils/rutas_enlace.dart';



class UsuarioConductor extends StatelessWidget {
  goBack(BuildContext context) {
    Navigator.pop(context);
  }
//height: MediaQuery.of(context).size.height,
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
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    //primer icono
                    IconButton(
                        onPressed: () => Navigator.of(context)
                        //.pushNamed(RutasEnlace.paginaEstudiante)
                        ,
                        icon: Icon(Icons.notifications, size: 50)),
                    SizedBox(height: 5),
                    //segundo icono
                    IconButton(
                        onPressed: () => Navigator.of(context)
                        .pushNamed(RutasEnlace.ConfiguracionesConductor),
                        icon: Icon(Icons.settings, size: 50)),
                    SizedBox(height: 5),
                    // terser icono
                    IconButton(
                        onPressed: () => goBack(context),
                        //.pushNamed(RutasEnlace.paginaEstudiante)
                        icon: Icon(Icons.exit_to_app_sharp, size: 50)),
                  ],
                ),
              ),

              //barra del emcabezado
              Container(
                //linea de codofo para el paddiinf
                padding:
                    EdgeInsets.only(left: 20, right: 20, top: 70, bottom: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.blueAccent,
                          width: 5,
                        ),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              //primer icono del Row
                              /**
                              ClipOval(
                                child: SizedBox(
                                  width: 90,
                                  height: 90,
                                  child: DecoratedBox(
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                        image: AssetImage(
                                          "assets/images/conductor.png",
                                        ),
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                  ),
                                  //child:  Image.network(''),
                                ),
                              ),
                              */

                              ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(70.0),
                                  ),
                                  primary: Colors.white,
                                  //pading para espesificar el tamaño del texto
                                  padding: const EdgeInsets.all(1),
                                  //textStyle: const TextStyle(fontSize: 20),
                                ),

                                child: Image.asset(
                                  "assets/images/conductor.png",
                                  fit: BoxFit.none,
                                  scale: 6,
                                  alignment: Alignment.center,),

                                /**
                                child: const Text('ruta',
                                    style: TextStyle(
                                      color: Colors.black,
                                      //decoration: TextDecoration.underline
                                    ),),
                                   */

                                //al presionar el boton hace una accion
                                onPressed: () => Navigator.of(context)
                                .pushNamed(RutasEnlace.PerfilConductor),
                                //Navigator.of(context).pushNamed(AppRoutes.products),
                              ),

                              // caja para dejar un espacio
                              SizedBox(height: 10),

                              //boton de ruta
                              ElevatedButton(
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
                                child: const Text('ruta',
                                    style: TextStyle(
                                      color: Colors.black,
                                      //decoration: TextDecoration.underline
                                    )),
                                //al presionar el boton hace una accion
                                onPressed: () => Navigator.of(context)
                                .pushNamed(RutasEnlace.RutaConductor)
                                ,
                                //Navigator.of(context).pushNamed(AppRoutes.products),
                              ),
                              //caja para dejar espacio
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),

                SizedBox(height: 2),

              Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Column(
                      //mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          //padding: EdgeInsets.only(left: 150),
                          child: Padding(
                            padding: const EdgeInsets.only(
                                right: 10, left: 110, bottom: 20),




                            //boton de institucion eliminado por no requerimiento u inesesario
                            /** 
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
                              child: const Text('Institucion',
                                  style: TextStyle(
                                      color: Colors.black,
                                      decoration: TextDecoration.none)),
                              //al presionar el boton hace una accion
                              onPressed: () => Navigator.of(context)
                              //.pushNamed(RutasEnlace.paginaEmpresa)
                              ,
                              //Navigator.of(context).pushNamed(AppRoutes.products),
                            ),

                            */



                          ),
                        ),
                        // boton numero 2 pago transporte
                        Padding(
                          padding: const EdgeInsets.only(right: 10, left: 50, bottom: 20),
                          //boton
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
                            child: const Text('Registrar Vehiculo',
                                style: TextStyle(
                                    color: Colors.black,
                                    decoration: TextDecoration.none)),
                            //al presionar el boton hace una accion
                            onPressed: () => Navigator.of(context)
                            .pushNamed(RutasEnlace.RegistrarVehiculo)
                            ,
                            //Navigator.of(context).pushNamed(AppRoutes.products),
                          ),
                        ),
                      ],
                    ),
                  ])
              // botones de institucion y pago transporte
              //botones institucion
            ],
          ),
        ),
      ),
    );
  }
}
