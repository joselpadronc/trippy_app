import 'package:flutter/material.dart';

// Screens
import 'package:trippy_app/src/screens/home_trippy.dart';
import 'package:trippy_app/src/screens/explore_trippy.dart';
import 'package:trippy_app/src/screens/search_trippy.dart';
import 'package:trippy_app/src/screens/detail_place.dart';

Map<String, WidgetBuilder> getApplicationRoutes() {
  return <String, WidgetBuilder>{
    '/home': (BuildContext context) => HomeTrippy(),
    '/explore': (BuildContext context) => ExploreTrippy(),
    '/search': (BuildContext context) => SearchTrippy(),
    '/detail': (BuildContext context) => DetailPlace(),
  };
}
