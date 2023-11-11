import 'package:flutter/material.dart';
import 'package:movike_3/presentation/splash_screen/splash_screen.dart';
import 'package:movike_3/presentation/login_three_screen/login_three_screen.dart';
import 'package:movike_3/presentation/login_screen/login_screen.dart';
import 'package:movike_3/presentation/registro_screen/registro_screen.dart';
import 'package:movike_3/presentation/bienvenida_screen/bienvenida_screen.dart';
import 'package:movike_3/presentation/encuesta_screen/encuesta_screen.dart';
import 'package:movike_3/presentation/ventana_de_inicio_screen/ventana_de_inicio_screen.dart';
import 'package:movike_3/presentation/ventana_de_busqueda_container_screen/ventana_de_busqueda_container_screen.dart';
import 'package:movike_3/presentation/ventana_de_inicio_one_tab_container_screen/ventana_de_inicio_one_tab_container_screen.dart';
import 'package:movike_3/presentation/ventana_de_busqueda_one_screen/ventana_de_busqueda_one_screen.dart';
import 'package:movike_3/presentation/ventana_de_configuracion_screen/ventana_de_configuracion_screen.dart';
import 'package:movike_3/presentation/pantalla_de_agregaci_n_screen/pantalla_de_agregaci_n_screen.dart';
import 'package:movike_3/presentation/pantalla_de_agregaci_n_one_screen/pantalla_de_agregaci_n_one_screen.dart';
import 'package:movike_3/presentation/pantalla_de_agregaci_n_two_screen/pantalla_de_agregaci_n_two_screen.dart';
import 'package:movike_3/presentation/cuenta_screen/cuenta_screen.dart';
import 'package:movike_3/presentation/pantalla_de_opci_n_screen/pantalla_de_opci_n_screen.dart';
import 'package:movike_3/presentation/pantalla_de_comentario_screen/pantalla_de_comentario_screen.dart';
import 'package:movike_3/presentation/pantalla_de_agradecimiento_screen/pantalla_de_agradecimiento_screen.dart';
import 'package:movike_3/presentation/idioma_screen/idioma_screen.dart';
import 'package:movike_3/presentation/idioma_one_screen/idioma_one_screen.dart';
import 'package:movike_3/presentation/idioma_two_screen/idioma_two_screen.dart';
import 'package:movike_3/presentation/cerrar_sesi_n_screen/cerrar_sesi_n_screen.dart';
import 'package:movike_3/presentation/login_one_screen/login_one_screen.dart';
import 'package:movike_3/presentation/registro_one_screen/registro_one_screen.dart';
import 'package:movike_3/presentation/login_two_screen/login_two_screen.dart';
import 'package:movike_3/presentation/encuesta_one_screen/encuesta_one_screen.dart';
import 'package:movike_3/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String splashScreen = '/splash_screen';

  static const String loginThreeScreen = '/login_three_screen';

  static const String loginScreen = '/login_screen';

  static const String registroScreen = '/registro_screen';

  static const String bienvenidaScreen = '/bienvenida_screen';

  static const String encuestaScreen = '/encuesta_screen';

  static const String ventanaDeInicioScreen = '/ventana_de_inicio_screen';

  static const String ventanaDeBusquedaPage = '/ventana_de_busqueda_page';

  static const String ventanaDeBusquedaContainerScreen =
      '/ventana_de_busqueda_container_screen';

  static const String ventanaDeInicioOnePage = '/ventana_de_inicio_one_page';

  static const String ventanaDeInicioOneTabContainerScreen =
      '/ventana_de_inicio_one_tab_container_screen';

  static const String ventanaDeInicioTwoPage = '/ventana_de_inicio_two_page';

  static const String ventanaDeBusquedaOneScreen =
      '/ventana_de_busqueda_one_screen';

  static const String ventanaDeConfiguracionScreen =
      '/ventana_de_configuracion_screen';

  static const String pantallaDeAgregaciNScreen =
      '/pantalla_de_agregaci_n_screen';

  static const String pantallaDeAgregaciNOneScreen =
      '/pantalla_de_agregaci_n_one_screen';

  static const String pantallaDeAgregaciNTwoScreen =
      '/pantalla_de_agregaci_n_two_screen';

  static const String cuentaScreen = '/cuenta_screen';

  static const String pantallaDeOpciNScreen = '/pantalla_de_opci_n_screen';

  static const String pantallaDeComentarioScreen =
      '/pantalla_de_comentario_screen';

  static const String pantallaDeAgradecimientoScreen =
      '/pantalla_de_agradecimiento_screen';

  static const String idiomaScreen = '/idioma_screen';

  static const String idiomaOneScreen = '/idioma_one_screen';

  static const String idiomaTwoScreen = '/idioma_two_screen';

  static const String cerrarSesiNScreen = '/cerrar_sesi_n_screen';

  static const String loginOneScreen = '/login_one_screen';

  static const String registroOneScreen = '/registro_one_screen';

  static const String loginTwoScreen = '/login_two_screen';

  static const String encuestaOneScreen = '/encuesta_one_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static Map<String, WidgetBuilder> routes = {
    splashScreen: (context) => SplashScreen(),
    loginThreeScreen: (context) => LoginThreeScreen(),
    loginScreen: (context) => LoginScreen(),
    registroScreen: (context) => RegistroScreen(),
    bienvenidaScreen: (context) => BienvenidaScreen(),
    encuestaScreen: (context) => EncuestaScreen(),
    ventanaDeInicioScreen: (context) => VentanaDeInicioScreen(),
    ventanaDeBusquedaContainerScreen: (context) =>
        VentanaDeBusquedaContainerScreen(),
    ventanaDeInicioOneTabContainerScreen: (context) =>
        VentanaDeInicioOneTabContainerScreen(),
    ventanaDeBusquedaOneScreen: (context) => VentanaDeBusquedaOneScreen(),
    ventanaDeConfiguracionScreen: (context) => VentanaDeConfiguracionScreen(),
    pantallaDeAgregaciNScreen: (context) => PantallaDeAgregaciNScreen(),
    pantallaDeAgregaciNOneScreen: (context) => PantallaDeAgregaciNOneScreen(),
    pantallaDeAgregaciNTwoScreen: (context) => PantallaDeAgregaciNTwoScreen(),
    cuentaScreen: (context) => CuentaScreen(),
    pantallaDeOpciNScreen: (context) => PantallaDeOpciNScreen(),
    pantallaDeComentarioScreen: (context) => PantallaDeComentarioScreen(),
    pantallaDeAgradecimientoScreen: (context) =>
        PantallaDeAgradecimientoScreen(),
    idiomaScreen: (context) => IdiomaScreen(),
    idiomaOneScreen: (context) => IdiomaOneScreen(),
    idiomaTwoScreen: (context) => IdiomaTwoScreen(),
    cerrarSesiNScreen: (context) => CerrarSesiNScreen(),
    loginOneScreen: (context) => LoginOneScreen(),
    registroOneScreen: (context) => RegistroOneScreen(),
    loginTwoScreen: (context) => LoginTwoScreen(),
    encuestaOneScreen: (context) => EncuestaOneScreen(),
    appNavigationScreen: (context) => AppNavigationScreen()
  };
}
