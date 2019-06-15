import 'package:flutter/material.dart';


class AvatarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Avatar pagina'),
        actions: <Widget>[
          Container(
            padding: EdgeInsets.all(2.5),
            child: CircleAvatar(
              backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR6D444ASxSViWXx8PTiBh6P3i_1DCy2xhE4XLJpjAaIPe2ujQL'),
              radius: 25.0,
            ),
          ),
          Container(
            margin:EdgeInsets.only(right: 10.0) ,
            child: CircleAvatar(
              child: Text('JL'),
              backgroundColor: Colors.yellow,
            ),
          )
        ],
      ),
      body: Center(
        child: FadeInImage(
          image: NetworkImage('https://pngmafia.net/image/2019/01/Iron-Man-5-min.png'),
          placeholder: AssetImage('assets/cargando.gif'),
        ),
      ),
      floatingActionButton: FloatingActionButton(
         child: Icon(Icons.keyboard_return),
         onPressed: (){
           Navigator.pop(context);
         },
      ),
    );
  }
}