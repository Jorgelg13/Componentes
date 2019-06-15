import 'package:componentes/src/pages/input_page.dart';
import 'package:flutter/material.dart';
import 'package:componentes/src/pages/alert_page.dart';
import 'package:componentes/src/pages/avatar.dart';
import 'package:componentes/src/pages/home_page.dart';
import 'package:componentes/src/pages/card_page.dart';
import 'package:componentes/src/pages/animated_page.dart';


Map<String, WidgetBuilder> getApplicationsRoutes(){
    return <String, WidgetBuilder>{
          '/' : (BuildContext context) => HomePage(),
          'alert' : (BuildContext context) => AlertPage(),
          'avatar' : (BuildContext context) => AvatarPage(),
          'card':(BuildContext context) => CardPage(),
          'animatedContainer': (BuildContext context) => AnimatedContainerPage(),
          'inputs': (BuildContext context) => InputPage(),
  };
}


