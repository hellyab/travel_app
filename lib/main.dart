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
      initialRoute: "/home",
      onGenerateRoute: (settings) {
        if (settings.name == "/sightDetail") {
          return PageRouteBuilder(
            pageBuilder: (context, animation, secondaryAnimation) {
              late Sight sight;
              if (settings.arguments is Sight) {
                sight = settings.arguments as Sight;
              } else {
                sight = Sight(
                  imagePath: "assets/images/lighthouse.jpg",
                  name: "Some Lighthouse",
                  rating: 3.5,
                );
              }
              return DetailScreen(
                sight: sight,
              );
            },
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
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      title: 'Travel App',
      routes: {
        "/home": (context) => HomeScreen(),
      },
    );
  }
}
