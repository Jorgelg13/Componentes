import 'package:flutter/material.dart';

class SliderPage extends StatefulWidget {
  @override
  _SliderPageState createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage> {
  double _valorSlider = 100.0;
  bool _bloquearCheck = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sliders'),
      ),
      body: Container(
        padding: EdgeInsets.only(top: 50),
        child: Column(
          children: <Widget>[
            _crearSlider(),
            _crearCheckbox(),
            _crearSwitch(),
            Expanded(child: _crearImagen()),
          ],
        ),
      ),
    );
  }

  Widget _crearSlider() {
    return Slider(
      activeColor: Colors.purple,
      label: 'Tamaño de la imagen',
      value: _valorSlider,
      min: 10.0,
      max: 400.0,
      onChanged: (_bloquearCheck)
          ? null
          : (valor) {
              setState(() {
                _valorSlider = valor;
              });
            },
    );
  }

  Widget _crearImagen() {
    return Image(
      image:
          NetworkImage('http://pngimg.com/uploads/ironman/ironman_PNG44.png'),
      width: _valorSlider,
      fit: BoxFit.contain,
    );
  }

  Widget _crearCheckbox() {
    /*return Checkbox(
      value: _bloquearCheck,
      onChanged: (valor){
        setState(() {
          _bloquearCheck = valor;
        });
      },
    );*/

    return CheckboxListTile(
      value: _bloquearCheck,
      title: Text('Bloquear Slider'),
      onChanged: (valor) {
        setState(() {
          _bloquearCheck = valor;
        });
      },
    );
  }

  Widget _crearSwitch() {
 return SwitchListTile(
      value: _bloquearCheck,
      title: Text('Bloquear Slider'),
      onChanged: (valor) {
        setState(() {
          _bloquearCheck = valor;
        });
      },
    );
  }
}
