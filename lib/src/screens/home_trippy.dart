import 'package:flutter/material.dart';
import 'package:trippy_app/src/widgets/list_recommended.dart';

// MyWidgets
import 'package:trippy_app/src/widgets/my_bottom_navbar.dart';
import 'package:trippy_app/src/widgets/list_card_place.dart';

class HomeTrippy extends StatelessWidget {
  const HomeTrippy({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(245, 248, 255, 1),
      body: Container(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            mainHome(),
            ListRecommended(),
          ],
        ),
      ),
      bottomNavigationBar: MyBottomNavbar(),
    );
  }

  Widget mainHome() {
    return Stack(
      children: <Widget>[
        Container(
          height: 350.0,
          padding: EdgeInsets.only(
            top: 50.0,
            left: 20.0,
            right: 20.0,
          ),
          decoration: BoxDecoration(
            color: Color.fromRGBO(92, 111, 251, 1),
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(65.0),
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Good Morning, Alfa",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 32.0,
                ),
              ),
              SizedBox(
                height: 15.0,
              ),
              Text(
                "Where would you like to go?",
                style: TextStyle(
                  color: Colors.white30,
                  fontSize: 16.0,
                ),
              ),
              Container(
                alignment: Alignment.center,
                margin: EdgeInsets.only(
                  top: 35.0,
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: TextField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.search_outlined),
                    contentPadding: EdgeInsets.only(
                      left: 10.0,
                      right: 10.0,
                      top: 14.0,
                      bottom: 12.0,
                    ),
                    border: InputBorder.none,
                    focusedBorder: InputBorder.none,
                    enabledBorder: InputBorder.none,
                    hintText: 'Lets exploring ...',
                  ),
                ),
              ),
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 225.0),
          child: ListCardPlace(),
        ),
      ],
    );
  }
}
