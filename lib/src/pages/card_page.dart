import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Card Pagina'),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.keyboard_return),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
      body: ListView(
        padding: EdgeInsets.all(10.0),
        children: <Widget>[
          _cardTipo1(),
          SizedBox(height: 20.0,),
          _cardTipo2(),
          SizedBox(height: 20.0,),
          _cardTipo1(),
          SizedBox(height: 20.0,),
          _cardTipo2(),
          SizedBox(height: 20.0,),
          _cardTipo1(),
          SizedBox(height: 20.0,),
          _cardTipo2(),
          SizedBox(height: 20.0,),          
        ],
      ),
    );
  }

  Widget _cardTipo1() {
    return Card(
      elevation: 10.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
      child: Column(
        children: <Widget>[
          ListTile(
            leading: Icon(Icons.photo_album, color: Colors.blue),
            title: Text('Soy un titulo'),
            subtitle: Text(
                'esto es un subtitulo, de la tarteja para el desarrollo en el curso de flutter, impartido en Udemy en linea.'),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              FlatButton(
                child: Text('Cancelar'),
                onPressed: () {},
              ),
              FlatButton(
                child: Text('Ok'),
                onPressed: () {},
              )
            ],
          )
        ],
      ),
    );
  }

  //aqui vamos hacer una tarjeta que tenga una imagen
  Widget _cardTipo2() {
    final card = Container(
      child: Column(
        children: <Widget>[
          FadeInImage(
            image: NetworkImage(
                'https://pixelz.cc/wp-content/uploads/2016/11/quarten-switzerland-landscape-4k-wallpaper.jpg'),
            placeholder: AssetImage('assets/cargando.gif'),
            height: 250,
            fit: BoxFit.cover,
          ),
          //Image(image: NetworkImage('https://pixelz.cc/wp-content/uploads/2016/11/quarten-switzerland-landscape-4k-wallpaper.jpg'),
          //),
          Container(
              padding: EdgeInsets.all(10.0),
              child: Text('Nombre de la imagen colocada'))
        ],
      ),
    );

    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30.0),
        color: Colors.white,
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: Colors.black26,
            blurRadius: 10.0,
            spreadRadius: 1.5,
            offset: Offset(2.0,8.0)
            )
        ]
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30.0),
        child: card,
      ),
    );
  }
}
