import 'package:flutter/material.dart';
import 'package:proyecto_tim_bus/utils/rutas_enlace.dart';


class PaginaTemporal extends StatefulWidget {
  const PaginaTemporal({Key key}) : super(key: key);

  @override
  _PaginaTemporal createState() => _PaginaTemporal();
}

class _PaginaTemporal extends State<PaginaTemporal> {
  @override
  void initState() {
    Future.delayed(
      Duration( seconds: 1 ),  //milliseconds: 9000,
      () => Navigator.of(context).pushNamedAndRemoveUntil(
        RutasEnlace.home,
        (route) => false,
      ),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //SafeArea = lugar donde vamos a trabajar = Contenedor
      body: SafeArea(
        //Stack = es una pila
        child: Stack(
          //dentro de la pila voy a tener una serie de contenidos
          children: <Widget>[
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Center(
                  child: Container(  //ClipOval
                    padding: EdgeInsets.only(top: 40),
                    child: SizedBox(
                      width:200,      //width:400,
                      height: 200,    //height: 400,
                      child: DecoratedBox(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("assets/images/logo.png"),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      //child:  Image.network(''
                    ),
                  ),
                ),

                /** 
                Padding(
                  padding: EdgeInsets.all(10),
                  child: ClipRRect(
                      borderRadius: BorderRadius.all(
                          Radius.circular(10)), //rounded corners
                      child: Opacity(
                        opacity: 0.6,
                        child: DecoratedBox(
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage("assets/images/1.jpg"),
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),

                        //Image.network('',
                        //  width: 100,
                        //height: 100,
                      )),
                ),
                */

                Text("App Para el Transporte Escolar", style: TextStyle(fontSize: 20, color: Colors.blueAccent[400],),),
                Spacer(),
                CircularProgressIndicator(backgroundColor: Colors.greenAccent[400],),
                Spacer(),
                Text('Bienvenido', style: TextStyle(fontSize: 20, color: Colors.blueAccent[400],),),
                Spacer(),
              ],
            ),

            /*
            Container(
              child: FractionallySizedBox(
                heightFactor: 1.0,
                widthFactor: 1.0,
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/images/1.jpg"),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
            ),

            */
          ],
        ),

/*
        child: Column(
          children: <Widget>[
            Spacer(),
            Center(
              child: FractionallySizedBox(
                widthFactor: .6,
                //child: FlutterLogo(size: 400),
                heightFactor: 1.0,
                widthFactor: 1.0,
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/images/1.jpg"),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
            ),
            Spacer(),
            CircularProgressIndicator(),
            Spacer(),
            Text('Bienvenido/Welcome')


          ],
        ),
        */
      ),
    );
  }
}
