import 'package:flutter/material.dart';

// myWidgets
import 'package:trippy_app/src/widgets/my_bottom_navbar.dart';

class SearchTrippy extends StatelessWidget {
  const SearchTrippy({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyanAccent,
      body: Container(
        alignment: Alignment.center,
        child: Text("Search Place"),
      ),
      bottomNavigationBar: MyBottomNavbar(),
    );
  }
}
