import 'package:flutter/material.dart';
import 'package:travel_app/screens/screens.dart';

import 'models/models.dart';

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
          return MaterialPageRoute(
            builder: (context) {
              return DetailScreen(sight: settings.arguments as Sight);
            },
          );
        }
      },
    );
  }
}
