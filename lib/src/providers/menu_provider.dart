import 'package:flutter/services.dart' show rootBundle;
import 'dart:convert';

class _MenuProvider {
  List<dynamic> opciones =[];

  _MenuProvider(){
    //cargarData();
  }
    
  Future<List<dynamic>> cargarData() async {

    final respuesta = await rootBundle.loadString('data/menu.json');

    Map dataMap = json.decode(respuesta);
    print(dataMap['rutas']);
    opciones= dataMap['rutas'];
    
    return opciones;
  }
}

final menuProvider = new _MenuProvider();