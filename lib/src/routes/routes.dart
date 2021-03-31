import 'package:flutter/material.dart';
import 'package:pruebass/src/pages/api_page.dart';
import 'package:pruebass/src/pages/billetes_page.dart';
//import 'package:pruebass/src/pages/botones_page.dart';
//import 'package:pruebass/src/pages/formulario_page.dart';
import 'package:pruebass/src/pages/fotos_page.dart';
//import 'package:pruebass/src/pages/home_page.dart';
import 'package:pruebass/src/pages/lugares_page.dart';
import 'package:pruebass/src/pages/mapa_page.dart';
import 'package:pruebass/src/pages/podcast_page.dart';




Map<String, WidgetBuilder> obtenerRutas(){
   return <String, WidgetBuilder>{
 '/': (BuildContext context) => ApiPage(),
        'mapa' : (BuildContext context) => MapaPage(),
        'billetes' : (BuildContext context) => BilletesPage(),
        'fotos' : (BuildContext context) => FotosPage(),
        'podcast' : (BuildContext context) => PodcastPage(),
        'lugares' : (BuildContext context) => LugaresPage(),
        };
      }