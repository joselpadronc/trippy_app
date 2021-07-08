import 'package:flutter/material.dart';

// myWidgets
import 'package:trippy_app/src/widgets/my_bottom_navbar.dart';

class ExploreTrippy extends StatelessWidget {
  const ExploreTrippy({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.tealAccent,
      body: Container(
        alignment: Alignment.center,
        child: Text("To Explore Places"),
      ),
      bottomNavigationBar: MyBottomNavbar(),
    );
  }
}
