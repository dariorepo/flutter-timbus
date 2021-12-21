import 'package:flutter/material.dart';
import 'package:proyecto_tim_bus/pages/pag_acceso.dart';
import 'package:proyecto_tim_bus/pages/pag_inicio.dart';
import 'package:proyecto_tim_bus/pages/pag_registro.dart';
import 'package:proyecto_tim_bus/pages/pag_temporal.dart';
import 'package:proyecto_tim_bus/pages/reg_tiposUsuario.dart/reg_conductor.dart';
import 'package:proyecto_tim_bus/pages/reg_tiposUsuario.dart/reg_empresa.dart';
import 'package:proyecto_tim_bus/pages/reg_tiposUsuario.dart/reg_estudiante.dart';
import 'package:proyecto_tim_bus/pages/reg_tiposUsuario.dart/reg_institucion.dart';
import 'package:proyecto_tim_bus/pages/registro_tipo_usuario.dart';
import 'package:proyecto_tim_bus/pages/u_conductor/configuraciones.dart';
import 'package:proyecto_tim_bus/pages/u_conductor/perfil_conductor.dart';
import 'package:proyecto_tim_bus/pages/u_conductor/registrar_vehiculo.dart';
import 'package:proyecto_tim_bus/pages/u_conductor/ruta_conductor.dart';
import 'package:proyecto_tim_bus/pages/u_conductor/u_conductor.dart';
import 'package:proyecto_tim_bus/pages/u_empresa/configuraciones.dart';
import 'package:proyecto_tim_bus/pages/u_empresa/instituciones_vinculadas.dart';
import 'package:proyecto_tim_bus/pages/u_empresa/pago_instituciones.dart';
import 'package:proyecto_tim_bus/pages/u_empresa/perfil_empresa.dart';
import 'package:proyecto_tim_bus/pages/u_empresa/ruta_empresa.dart';
import 'package:proyecto_tim_bus/pages/u_empresa/u_empresa.dart';
import 'package:proyecto_tim_bus/pages/u_estudiante/configuraciones.dart';
import 'package:proyecto_tim_bus/pages/u_estudiante/institucion_usuario.dart';
import 'package:proyecto_tim_bus/pages/u_estudiante/pago_transporte.dart';
import 'package:proyecto_tim_bus/pages/u_estudiante/perfil_usuario.dart';
import 'package:proyecto_tim_bus/pages/u_estudiante/ruta_usuario.dart';
import 'package:proyecto_tim_bus/pages/u_estudiante/u_estudiante.dart';
import 'package:proyecto_tim_bus/pages/u_institucion/btn_inscripciontransporte.dart';
import 'package:proyecto_tim_bus/pages/u_institucion/btn_rutasconductores.dar';
import 'package:proyecto_tim_bus/pages/u_institucion/configuraciones.dart';
import 'package:proyecto_tim_bus/pages/u_institucion/formato_registro.dart';
import 'package:proyecto_tim_bus/pages/u_institucion/perfil_institucion.dart';
import 'package:proyecto_tim_bus/pages/u_institucion/ruta_institucion.dart';
import 'package:proyecto_tim_bus/pages/u_institucion/u_institucion.dart';
import 'package:proyecto_tim_bus/utils/rutas_enlace.dart';
import 'package:proyecto_tim_bus/utils/transition/scale_transition_route.dart';

class MenuLogin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Iniciando Aplicación',
      //cargasr las rutas de las posibles paguinas
      routes: <String, WidgetBuilder>{
        '/PaginaAcceso': (BuildContext context) => PaginaAcceso(),
        '/paginaRegistro': (BuildContext context) => PaginaRegistro(),
        '/UsuarioEstudiante': (BuildContext context) => UsuarioEstudiante(),
        '/UsuarioInstitucion': (BuildContext context) => UsuarioInstitucion(),
        '/UsuarioEmpresa': (BuildContext context) => UsuarioEmpresa(),
        '/UsuarioConductor': (BuildContext context) => UsuarioConductor(),
        '/RutaUsuario': (BuildContext context) => RutaUsuario(),
        '/PerfilUsuario': (BuildContext context) => PerfilUsuario(),
        '/PaginaPago': (BuildContext context) => PaginaPago(),
        '/InstitucionUsuario': (BuildContext context) => InstitucionUsuario(),
        '/RutaInstitucion': (BuildContext context) => RutaInstitucion(),
        '/PerfilInstitucion': (BuildContext context) => PerfilInstitucion(),
        '/FormatoInscripcion': (BuildContext context) => FormatoInscripcion(),
        '/RutasConductores': (BuildContext context) => RutasConductores(),
        '/InscripcionTransporte': (BuildContext context) =>
            InscripcionTransporte(),
        '/RutaEmpresa': (BuildContext context) => RutaEmpresa(),
        '/PerfilEmpresa': (BuildContext context) => PerfilEmpresa(),
        '/PagosInstituciones': (BuildContext context) => PagosInstituciones(),
        '/InstitucionesVinculdas': (BuildContext context) =>
            InstitucionesVinculdas(),
        '/RutaConductor': (BuildContext context) => RutaConductor(),
        '/RegistrarVehiculo': (BuildContext context) => RegistrarVehiculo(),
        '/PerfilConductor': (BuildContext context) => PerfilConductor(),
        '/RegistroTipoUsuario': (BuildContext context) => RegistroTipoUsuario(),
        '/reg_estudiante': (BuildContext context) => reg_estudiante(),
        '/reg_institucion': (BuildContext context) => reg_institucion(),
        '/reg_empresa': (BuildContext context) => reg_empresa(),
        '/reg_conductor': (BuildContext context) => reg_conductor(),


        '/ConfiguracionesEstudinate': (BuildContext context) => ConfiguracionesEstudinate(),
        '/ConfiguracionesInstitucion': (BuildContext context) => ConfiguracionesInstitucion(),
        '/ConfiguracionesEmpresa': (BuildContext context) => ConfiguracionesEmpresa(),
        '/ConfiguracionesConductor': (BuildContext context) => ConfiguracionesConductor(),




      },
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: RutasEnlace.PaginaTemporal,
      onGenerateRoute: (settings) {
        switch (settings.name) {
          case (RutasEnlace.PaginaTemporal):
            return MaterialPageRoute(
                builder: (context) => const PaginaTemporal());

          case (RutasEnlace.home):
            return MaterialPageRoute(
              builder: (context) => const PaginaInicio(
                title: 'TIM-BUS',
              ),
            );

          //case (RutasEnlace.products):
          //todo: return FadeTransitionRoute(widget: const ProductScreen());
          //case (RutasEnlace.cart):
          // todo: return FadeTransitionRoute(widget: const CartScreen());
          /** 
          case (RutasEnlace.profile):
            final name = settings.arguments;
            return ScaleTransitionRoute(
                //This cannot be [const] because of the [name] variable
            );
            */

          case (RutasEnlace.PaginaAcceso):
            final name = settings.arguments;
            return ScaleTransitionRoute(
                //This cannot be [const] because of the [name] variable
                widget: PaginaAcceso());

          case (RutasEnlace.PaginaRegistro):
            final name = settings.arguments;
            return ScaleTransitionRoute(
              //This cannot be [const] because of the [name] variable
              widget: PaginaRegistro(),
            );

          //pag estudiante
          case (RutasEnlace.UsuarioEstudiante):
            final name = settings.arguments;
            return ScaleTransitionRoute(
              //This cannot be [const] because of the [name] variable
              widget: UsuarioEstudiante(),
            );

          case (RutasEnlace.RutaUsuario):
            final name = settings.arguments;
            return ScaleTransitionRoute(
              //This cannot be [const] because of the [name] variable
              widget: RutaUsuario(),
            );

          case (RutasEnlace.PerfilUsuario):
            final name = settings.arguments;
            return ScaleTransitionRoute(
              //This cannot be [const] because of the [name] variable
              widget: PerfilUsuario(),
            );

          case (RutasEnlace.PaginaPago):
            final name = settings.arguments;
            return ScaleTransitionRoute(
              //This cannot be [const] because of the [name] variable
              widget: PaginaPago(),
            );

          case (RutasEnlace.InstitucionUsuario):
            final name = settings.arguments;
            return ScaleTransitionRoute(
              //This cannot be [const] because of the [name] variable
              widget: InstitucionUsuario(),
            );

          //pagina institucion
          case (RutasEnlace.UsuarioInstitucion):
            final name = settings.arguments;
            return ScaleTransitionRoute(
              //This cannot be [const] because of the [name] variable
              widget: UsuarioEstudiante(),
            );

          case (RutasEnlace.RutaInstitucion):
            final name = settings.arguments;
            return ScaleTransitionRoute(
              //This cannot be [const] because of the [name] variable
              widget: RutaInstitucion(),
            );

          case (RutasEnlace.PerfilInstitucion):
            final name = settings.arguments;
            return ScaleTransitionRoute(
              //This cannot be [const] because of the [name] variable
              widget: PerfilInstitucion(),
            );

          case (RutasEnlace.FormatoInscripcion):
            final name = settings.arguments;
            return ScaleTransitionRoute(
              //This cannot be [const] because of the [name] variable
              widget: FormatoInscripcion(),
            );

          case (RutasEnlace.RutasConductores):
            final name = settings.arguments;
            return ScaleTransitionRoute(
              //This cannot be [const] because of the [name] variable
              widget: RutasConductores(),
            );

          case (RutasEnlace.InscripcionTransporte):
            final name = settings.arguments;
            return ScaleTransitionRoute(
              //This cannot be [const] because of the [name] variable
              widget: InscripcionTransporte(),
            );

          //pagina empresa de transporte
          case (RutasEnlace.UsuarioEmpresa):
            final name = settings.arguments;
            return ScaleTransitionRoute(
              //This cannot be [const] because of the [name] variable
              widget: UsuarioEstudiante(),
            );

          case (RutasEnlace.RutaEmpresa):
            final name = settings.arguments;
            return ScaleTransitionRoute(
              //This cannot be [const] because of the [name] variable
              widget: RutaEmpresa(),
            );

          case (RutasEnlace.PerfilEmpresa):
            final name = settings.arguments;
            return ScaleTransitionRoute(
              //This cannot be [const] because of the [name] variable
              widget: PerfilEmpresa(),
            );
          case (RutasEnlace.PagosInstituciones):
            final name = settings.arguments;
            return ScaleTransitionRoute(
              //This cannot be [const] because of the [name] variable
              widget: PagosInstituciones(),
            );

          case (RutasEnlace.InstitucionesVinculdas):
            final name = settings.arguments;
            return ScaleTransitionRoute(
              //This cannot be [const] because of the [name] variable
              widget: InstitucionesVinculdas(),
            );

          //pagina conductor
          case (RutasEnlace.UsuarioConductor):
            final name = settings.arguments;
            return ScaleTransitionRoute(
              //This cannot be [const] because of the [name] variable
              widget: UsuarioEstudiante(),
            );

          case (RutasEnlace.RutaConductor):
            final name = settings.arguments;
            return ScaleTransitionRoute(
              //This cannot be [const] because of the [name] variable
              widget: RutaConductor(),
            );

          case (RutasEnlace.RegistrarVehiculo):
            final name = settings.arguments;
            return ScaleTransitionRoute(
              //This cannot be [const] because of the [name] variable
              widget: RegistrarVehiculo(),
            );

          case (RutasEnlace.PerfilConductor):
            final name = settings.arguments;
            return ScaleTransitionRoute(
              //This cannot be [const] because of the [name] variable
              widget: PerfilConductor(),
            );

          case (RutasEnlace.RegistroTipoUsuario):
            final name = settings.arguments;
            return ScaleTransitionRoute(
              //This cannot be [const] because of the [name] variable
              widget: PerfilConductor(),
            );

            case (RutasEnlace.reg_estudiante):
            final name = settings.arguments;
            return ScaleTransitionRoute(
              //This cannot be [const] because of the [name] variable
              widget: reg_estudiante(),
            );

            case (RutasEnlace.reg_institucion):
            final name = settings.arguments;
            return ScaleTransitionRoute(
              //This cannot be [const] because of the [name] variable
              widget: reg_institucion(),
            );

            case (RutasEnlace.reg_empresa):
            final name = settings.arguments;
            return ScaleTransitionRoute(
              //This cannot be [const] because of the [name] variable
              widget: reg_empresa(),
            );

            case (RutasEnlace.reg_conductor):
            final name = settings.arguments;
            return ScaleTransitionRoute(
              //This cannot be [const] because of the [name] variable
              widget: reg_conductor(),
            );

            case (RutasEnlace.ConfiguracionesEstudinate):
            final name = settings.arguments;
            return ScaleTransitionRoute(
              //This cannot be [const] because of the [name] variable
              widget: ConfiguracionesEstudinate(),
            );


            case (RutasEnlace.ConfiguracionesInstitucion):
            final name = settings.arguments;
            return ScaleTransitionRoute(
              //This cannot be [const] because of the [name] variable
              widget: ConfiguracionesInstitucion(),
            );

            case (RutasEnlace.ConfiguracionesEmpresa):
            final name = settings.arguments;
            return ScaleTransitionRoute(
              //This cannot be [const] because of the [name] variable
              widget:ConfiguracionesEmpresa(),
            );

            case (RutasEnlace.ConfiguracionesConductor):
            final name = settings.arguments;
            return ScaleTransitionRoute(
              //This cannot be [const] because of the [name] variable
              widget:ConfiguracionesConductor(),
            );

          default:
            return MaterialPageRoute(
              builder: (context) => PaginaInicio(
                title: '@Tim-Bus',
              ),
            );
        }
      },
    );
  }
}
