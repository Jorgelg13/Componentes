import 'package:flutter/material.dart';
import 'dart:math';

class AnimatedContainerPage extends StatefulWidget {
  @override
  _AnimatedContainerPageState createState() => _AnimatedContainerPageState();
}

class _AnimatedContainerPageState extends State<AnimatedContainerPage> {
  double _ancho = 50.0;
  double _alto = 50.0;
  Color _color = Colors.purple;
  BorderRadiusGeometry _borderRadius = BorderRadius.circular(8.0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contenedor de animacion'),
      ),
      body: Center(
        child: AnimatedContainer(
          duration: Duration(milliseconds: 800),
          curve: Curves.easeInOutBack,
          width: _ancho,
          height: _alto,
          decoration: BoxDecoration(borderRadius: _borderRadius, color: _color),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.play_arrow),
        onPressed: () {
          _cambiarForma();
        },
      ),
    );
  }

  void _cambiarForma() {
    final aleatorio = Random();
    setState(() {
      _ancho = aleatorio.nextInt(250).toDouble();
      _alto = aleatorio.nextInt(450).toDouble();
      _color = Color.fromARGB(
        aleatorio.nextInt(255), 
        aleatorio.nextInt(255), 
        aleatorio.nextInt(255), 
        aleatorio.nextInt(255));
      _borderRadius = BorderRadius.circular(aleatorio.nextInt(100).toDouble());
    });
  }
}
