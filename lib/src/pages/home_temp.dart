import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/basic.dart';
import 'package:flutter/src/widgets/framework.dart';

class HomePageTemp extends StatelessWidget {
  
  final opciones =['Uno', 'Dos','Tres','Cuatro','Cinco', 'Seis','Siete'];
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Componentes'),
      ),
      body: ListView(
        //children: _crearItems()
        children: _crearItemsCorta(),
      ),
    );
  }

  List<Widget> _crearItems (){
    List<Widget> lista = new List<Widget>();

    for (String opt in opciones) {
      final tempWidget = ListTile(title: Text(opt),);
      lista..add(tempWidget)
           ..add(Divider());
    }

     return lista;
  }

  List<Widget> _crearItemsCorta(){
     var widgets = opciones.map((item){
       return Column(
         children: <Widget>[
           ListTile(
             title: Text(item + '!'),
             subtitle: Text('Esto es un subtitulo'),
             leading: Icon(Icons.face),
             trailing: Icon(Icons.arrow_back),
             onTap:(){
               opciones[0] = 'jorge';
      
             } ,
             ),
             Divider()
         ],
       );
     }).toList();

     return widgets;
  }


}
