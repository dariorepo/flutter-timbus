import 'package:flutter/material.dart';
import 'package:proyecto_tim_bus/utils/rutas_enlace.dart';

class PaginaInicio extends StatelessWidget {
  final String title;

  const PaginaInicio({
    Key key,
    @required this.title,
  })  : assert(title != null, 'El titulo no puede ser null'),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        backgroundColor: Colors.orange[400],
      ),
      body: Container(
        //center
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Container(
                padding: const EdgeInsets.only(left:10, top:.01, right:0.1, bottom:90,),
                //para poner una imagen de fondo
                height: 180,
                width: MediaQuery.of(context).size.width,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Colors.cyan,
                  image: DecorationImage(
                    image: AssetImage("assets/images/torre.jpeg"),
                    fit: BoxFit.fill,
                  ),
                ),

                //todo: botonessss
                child: Row(
                  //crossAxisAlignment: CrossAxisAlignment.start,
                  //width: MediaQuery.of(context).size.width,
                  children: <Widget>[
                    //todo=  boton 01 de Iniciar sesion
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 16.0,),
                      //boton azulito de iniciar sesion
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                          primary: Colors.blue[400],
                          //pading para espesificar el tamaño del texto
                          padding: const EdgeInsets.symmetric(
                              horizontal: 30, vertical: 15),
                          textStyle: const TextStyle(fontSize: 20),
                        ),
                        child: const Text('Iniciar Sesión',
                            style: TextStyle(
                                color: Colors.white,
                                decoration: TextDecoration.none)),
                        //al presionar el boton hace una accion
                        onPressed: () => Navigator.of(context)
                            .pushNamed(RutasEnlace.PaginaAcceso),
                        //Navigator.of(context).pushNamed(AppRoutes.products),
                      ),
                    ),

                    //todo 02_boton
                    /** 
                  TextButton(
                    child: const Text(
                      ' Registrarse',
                      style: TextStyle(
                          color: Colors.black54,
                          fontSize: 18.0,
                          decoration: TextDecoration.underline),
                    ),
                    onPressed: () => Navigator.of(context)
                        .pushNamed(RutasEnlace.PaginaRegistro),
                  ),
                  */

                  const SizedBox(height: 10.0),

                     //todo=  boton 02 de Registrase
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 10,),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: Colors.greenAccent[400],          //[0]
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
                            padding: const EdgeInsets.symmetric(
                              horizontal: 30, vertical: 15),),
                        child: const Text(
                          ' Registrarse',
                          style: TextStyle(
                              color: Colors.purple,
                              fontSize: 18.0,
                              decoration: TextDecoration.none,),
                        ),
                        onPressed: () => Navigator.of(context)
                            .pushNamed(RutasEnlace.RegistroTipoUsuario),
                      ),
                    ),
                  ],
                ),
              ),

              //caja de espacio
              const SizedBox(height: 20.0),



              //coleccion de imagenes
              Container(
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[


                      Padding(
                        padding: EdgeInsets.all(10),
                        child: SizedBox(
                          width: 305,
                          height: 305,
                          child: DecoratedBox(
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage("assets/images/bus.jpg"),
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                        ),
                      ),

                      //segunda imagen
                      Padding(
                        padding: EdgeInsets.all(10),
                        child: SizedBox(
                          width: 305,
                          height: 305,
                          child: DecoratedBox(
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage("assets/images/niñabus.jpg"),
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                        ),
                      ),

                      //tercera imagen
                      Padding(
                        padding: EdgeInsets.all(10),
                        child: SizedBox(
                          width: 305,
                          height: 305,
                          child: DecoratedBox(
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage("assets/images/niños.jpg"),
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                        ),
                      ),


                      //cuarta imagen
                      Padding(
                        padding: EdgeInsets.all(10),
                        child: SizedBox(
                          width: 305,
                          height: 305,
                          child: DecoratedBox(
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image:
                                    AssetImage("assets/images/busblanco.jpg"),
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                        ),
                      ),

                    ],




                  ),
                ),
              ),

              //caja de espacio
              const SizedBox(height: 20.0),

              //todo: container que tiene el pie de pagina
              Container(
                color: Colors.orange[300],
                height: 145, // era 140  etablecido desde 
                width: MediaQuery.of(context).size.width,
                //alignment: Alignment.centerLeft,
                child: SingleChildScrollView(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: <Widget>[

                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        //mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          //primer boton 
                          ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.orange[300],
                          padding: const EdgeInsets.symmetric(
                              horizontal: 5, vertical: 5),
                            ),

                        child: const Text(
                          'Terminos y Condiciones',
                          style: TextStyle(
                              color: Colors.purple,
                              fontSize: 10.0,
                              decoration: TextDecoration.none,),
                        ),
                        onPressed: () => Navigator.of(context)
                            .pushNamed(RutasEnlace.RegistroTipoUsuario),
                      ),

                      //segundo boton de pie de pagina
                      ElevatedButton(
                            style: ElevatedButton.styleFrom(
                          primary: Colors.orange[300],
                          padding: const EdgeInsets.symmetric(
                              horizontal: 5, vertical: 5),
                            ),
                            child: Text('Politica de Tratamiento de Datos',
                            style: TextStyle(color: Colors.purple, fontSize: 10.0,),),
                            onPressed: () => Navigator.of(context)
                                .pushNamed(RutasEnlace.RegistroTipoUsuario),
                          ),

                      //tercer boton de pie de pagina
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.orange[300],
                          padding: const EdgeInsets.symmetric(
                              horizontal: 5, vertical: 5),
                            ),
                            child: Text('Mision Vision',
                            style: TextStyle(color: Colors.purple, fontSize: 10.0,),),
                            onPressed: () => Navigator.of(context)
                                .pushNamed(RutasEnlace.RegistroTipoUsuario),
                          ),
                      ],
                      ),

                    const SizedBox(height: 50.15),
                      //todo= segunda columna
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        //mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                         //cuarto boton de pie de pagina
                          ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.orange[300],
                          padding: const EdgeInsets.symmetric(
                              horizontal: 5, vertical: 5),
                            ),
                            child: Text('Soporte',
                            style: TextStyle(color: Colors.purple, fontSize: 10.0,),),
                            onPressed: () => Navigator.of(context)
                                .pushNamed(RutasEnlace.RegistroTipoUsuario),
                          ),

                      //quinto boton de pie de pagina
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.orange[300],
                          padding: const EdgeInsets.symmetric(
                              horizontal: 5, vertical: 5),
                            ),
                            child: Text('Instituciones Vinculadas',
                            style: TextStyle(color: Colors.purple, fontSize: 10.0,),),
                            onPressed: () => Navigator.of(context)
                                .pushNamed(RutasEnlace.RegistroTipoUsuario),
                          ),

                      //sexto boton de pie de pagina
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.orange[300],
                          padding: const EdgeInsets.symmetric(
                              horizontal: 5, vertical: 5),
                            ),
                            child: Text('Empresas Vinculadas',
                            style: TextStyle(color: Colors.purple, fontSize: 10.0,),),
                            onPressed: () => Navigator.of(context)
                                .pushNamed(RutasEnlace.RegistroTipoUsuario),
                          ),

                        ]
                        ),

                        //todo= tercera columna
                        Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        //mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.orange[300],
                          padding: const EdgeInsets.symmetric(
                              horizontal: 5, vertical: 5),
                            ),
                            child: Text('Contacto',
                            style: TextStyle(color: Colors.purple, fontSize: 10.0,),),
                            onPressed: () => Navigator.of(context)
                                .pushNamed(RutasEnlace.RegistroTipoUsuario),
                          ),
                        ])

                    ],
                  ),
                  scrollDirection: Axis.horizontal,
                ),
              ),

              /*
            RaisedButton(
              child: Text('Profile'),
              onPressed: () => Navigator.of(context)
                  .pushNamed(AppRoutes.profile, arguments: 'Rider'),
            ),
            RaisedButton(
              child: Text('Todos'),
              onPressed: () => Navigator.of(context).pushNamed(AppRoutes.todos),
            ),*/
            ],
          ),
        ),
      ),
    );
  }
}
