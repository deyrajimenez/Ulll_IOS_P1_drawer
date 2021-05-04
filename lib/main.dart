import 'package:flutter/material.dart';

void main() => runApp(RoblesApp());

class RoblesApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter',
      theme: ThemeData(
        primarySwatch: Colors.amber,
      ),
      home: EsScaffold(title: 'Flutter Español Deyra'),
    ); // fin de material
  } // fin de widget
} // fin de RoblesApp

class EsScaffold extends StatefulWidget {
  EsScaffold({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _EsScaffoldState createState() => _EsScaffoldState();
} // fin de EsScaffold

class _EsScaffoldState extends State<EsScaffold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      backgroundColor: Colors.white,
      body: Center(
        child: Image.asset(
          'assets/FlutterEnEspanol.jpg',
          width: 200.0,
        ),
      ), //fin de center
      drawer: Drawer(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
          FlutterLogo(
            size: 100.0,
          ),
          Text('Drawer Jimenez'),
        ]), //Fin de la columna
      ), //Fin drawer
      endDrawer: Drawer(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
          FlutterLogo(
            size: 100.0,
          ),
          Text('End Drawer por Jimenez'),
        ]), //Fin de la columna
      ), //Fin endDrawer
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.favorite),
        onPressed: () {
          showModalBottomSheet(
            context: context,
            builder: (BuildContext context) {
              return Container(
                height: 150.0,
                child: Column(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
                  FlutterLogo(
                    size: 100.0,
                  ),
                  Text('BottomSheet por Jimenez'),
                ]),
              ); //Fin del contenedor
            }, //Fin del builder
          ); //Fin de BottomSheet
        }, //Fin de onPressed
      ), //fin del boton
      bottomNavigationBar: BottomAppBar(
        color: Colors.yellow,
        child: Container(
          height: 50.0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              FlutterLogo(
                size: 30.0,
              ),
              Text('bottomNavigationBar con BottomAppBar por Jimenez')
            ],
          ),
        ),
      ),
    ); // fin de Scaffold
  } //fin de widget construir
} // fin de state<EsScaffold>
