import 'package:flutter/material.dart';

class ContadorPage extends StatefulWidget {

  @override
  createState() {
    return _ContadorPageState();
  }  
}

class _ContadorPageState extends State<ContadorPage> {

  final _estiloTexto = new TextStyle(fontSize: 25);
  
  int _contador = 15;

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        title: Text('Titulo'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
          Text('Numero de clicks', style: _estiloTexto),
          Text( '$_contador', style:_estiloTexto),
        ],
        )
        ),
      floatingActionButton: _crearBotones()
    );
  }

  Widget _crearBotones() {

    return Row (
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        SizedBox(width: 30.0),
        FloatingActionButton( child: Icon(Icons.exposure_zero), onPressed: _reiniciarContador),
        Expanded(child : SizedBox()),
        FloatingActionButton( child: Icon(Icons.remove), onPressed: _restartClicks),
        SizedBox(width: 100.0),
        FloatingActionButton(child: Icon(Icons.add), onPressed: _sumarClicks),
        SizedBox(width: 0.0)
      ],
    );

  }

  void _sumarClicks() {
    setState(() {
      _contador++;
    });
  }

  void _restartClicks() {
    setState(() {
      _contador--;
    });
  }

  void _reiniciarContador() {
    setState(() {
      _contador = 0;
    });
  }


}

