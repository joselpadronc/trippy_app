import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:trippy_app/src/widgets/big_card_place.dart';

// myWidgets
import 'package:trippy_app/src/widgets/list_big_card_place.dart';
import 'package:trippy_app/src/widgets/list_package_card_place.dart';
import 'package:trippy_app/src/widgets/my_bottom_navbar.dart';
import 'package:trippy_app/src/widgets/package_card_place.dart';

class ExploreTrippy extends StatelessWidget {
  const ExploreTrippy({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(89, 108, 249, 1),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color.fromRGBO(92, 111, 250, 1),
              Color.fromRGBO(89, 108, 249, 1),
            ],
            begin: FractionalOffset(0.0, 0.0),
            end: FractionalOffset(0.0, 10.0),
            stops: [0.0, 0.6],
            tileMode: TileMode.clamp,
          ),
        ),
        child: ListView(
          children: [
            mainTopInfo(),
            ListBigCardPlace(),
            ListPackageCardPlace(),
          ],
        ),
      ),
      bottomNavigationBar: MyBottomNavbar(),
    );
  }

  Widget mainTopInfo() {
    return Container(
      padding: EdgeInsets.only(
        top: 40.0,
        left: 25.0,
        right: 25.0,
        bottom: 15.0,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Discover",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 32.0,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.left,
              ),
              SizedBox(height: 20.0),
              Text(
                "Find your tour promo this month",
                style: TextStyle(
                  color: Colors.white38,
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.left,
              )
            ],
          ),
          Container(
            child: CircleAvatar(
              backgroundImage: NetworkImage(
                'https://joselpadronc.vercel.app/img/me.jpg',
              ),
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50.0),
              boxShadow: <BoxShadow>[
                BoxShadow(
                  color: Colors.black26,
                  spreadRadius: 2.0,
                  blurRadius: 10.0,
                  offset: Offset(0.0, 2.0),
                )
              ],
            ),
          ),
          // ListBigCardPlace(),
        ],
      ),
    );
  }
}
