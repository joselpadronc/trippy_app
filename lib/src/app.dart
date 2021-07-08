import 'package:flutter/material.dart';

// Routes
import 'package:trippy_app/src/routes/routes.dart';
// Screens
import 'package:trippy_app/src/screens/home_trippy.dart';

class TrippyApp extends StatelessWidget {
  const TrippyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Trippy',
      debugShowCheckedModeBanner: false,
      home: HomeTrippy(),
      initialRoute: 'home',
      routes: getApplicationRoutes(),
    );
  }
}
