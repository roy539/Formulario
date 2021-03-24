import 'package:flutter/material.dart';

import 'package:pruebass/src/routes/routes.dart';
//import 'package:prueba/src/contador.dart';

class MyApp extends StatelessWidget {

  /*
  final nombres = [
    'Carlos'
    'Alexis'
    'Dafne'
    'Liliana'
    'Romina'
    'Rodrigo'
    'Valentin'
  ];
  */


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'App de Imagenes',
      theme: ThemeData(
        primaryColor: Colors.blue,
      ),
      initialRoute: '/',
      routes: obtenerRutas(),
      //home: HomePage(),
    );
  }
}

      /*
      Scaffold(
        appBar: AppBar(
          title: Text('Rodrigo Gonzalez Lira'),
        ),
        body: ListView( children: _crearItems()),),); 
  }
  List<Widget> _crearItems(){
    List<Widget> lista = new List<Widget>();

    for(var opt in nombres){
      final tempWidget = ListTile(
                      title: Text(opt),
                      subtitle: Text('Esto es un subtitulo'),
                      trailing: Icon(Icons.keyboard_arrow_right),
                      onTap: (){}
                    );
      lista.add(tempWidget);
      lista.add(Divider());
    }
  return lista;
  }
}
*/

/*

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'App de Imagenes',
      theme: ThemeData(
        primaryColor: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  int contador = 0;
  TextStyle estilosTexto = TextStyle(fontSize: 20, fontWeight: FontWeight.bold);

  @override
  Widget build(BuildContext context) {
    var scaffold = Scaffold(
      appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.menu),
            tooltip: 'Menú principal',
            onPressed: () => {},
          ),
          title: Text('Imágenes'),
          centerTitle: true,
          elevation: 5.0,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.add_alert),
              tooltip: 'Alertas',
              onPressed: () => {},
            ),
            IconButton(
              icon: Icon(Icons.mail),
              tooltip: 'Correo',
              onPressed: () => {},
            ),
          ]),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              width: 150,
              child: Image.asset('assets/images/Halo1.png'),
            ),
            SizedBox(
              height: 50,
            ),
            Container(
              width: 150,
              child: Image.asset('assets/images/Halo2.png'),
            ),
            SizedBox(
              height: 50,
            ),
            Container(
              width: 200,
              child: Image.network(
                  'https://thumbs.gfycat.com/ArtisticAlienatedIbex-small.gif'),
            ),
            Text(
              'haz presionado este numero de veces',
              style: estilosTexto,
            ),
            SizedBox(
              height: 20,
            ),
            Text('$contador'),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          contador++;
          print(contador);
        },
        child: Icon(Icons.plus_one),
      ),
    );
    return scaffold;
  }
}

*/