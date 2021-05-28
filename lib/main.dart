import 'package:flutter/material.dart';
import 'package:travel_app/screens/screens.dart';

import 'models/models.dart';

const begin = Offset(1.0, 0.0);
const end = Offset.zero;
const curve = Curves.ease;

var tween = Tween(
  begin: begin,
  end: end,
).chain(CurveTween(curve: curve));

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Travel App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeScreen(),
      onGenerateRoute: (settings) {
        if (settings.name == "/sightDetail") {
          return PageRouteBuilder(
            pageBuilder: (context, animation, secondaryAnimation) =>
                DetailScreen(sight: settings.arguments as Sight),
            transitionsBuilder:
                (context, animation, secondaryAnimation, child) {
              return SlideTransition(
                child: child,
                position: animation.drive(tween),
              );
            },
            transitionDuration: Duration(
              milliseconds: 300,
            ),
          );
        }
      },
    );
  }
}
