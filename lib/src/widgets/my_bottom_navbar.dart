import 'package:flutter/material.dart';

class MyBottomNavbar extends StatefulWidget {
  const MyBottomNavbar({Key? key}) : super(key: key);

  @override
  _MyBottomNavbarState createState() => _MyBottomNavbarState();
}

class _MyBottomNavbarState extends State<MyBottomNavbar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 55.0,
      padding: EdgeInsets.only(
        left: 25.0,
        right: 25.0,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(25),
          topRight: Radius.circular(25),
        ),
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: Colors.black12,
            blurRadius: 25.0,
            spreadRadius: 5.0,
            offset: Offset(0.0, 10.0),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          IconButton(
            onPressed: () {
              Navigator.pushReplacementNamed(context, '/home');
            },
            icon: Icon(
              Icons.home_outlined,
              size: 32.0,
              color: Color.fromRGBO(95, 111, 235, 0.8),
            ),
          ),
          IconButton(
            onPressed: () {
              Navigator.pushReplacementNamed(context, '/explore');
            },
            icon: Icon(
              Icons.room_outlined,
              size: 32.0,
              color: Color.fromRGBO(95, 111, 235, 0.4),
            ),
          ),
          IconButton(
            onPressed: () {
              Navigator.pushReplacementNamed(context, '/search');
            },
            icon: Icon(
              Icons.search_outlined,
              size: 32.0,
              color: Color.fromRGBO(95, 111, 235, 0.4),
            ),
          ),
          IconButton(
            onPressed: () {
              Navigator.pushReplacementNamed(context, '/home');
            },
            icon: Icon(
              Icons.person_outline,
              size: 32.0,
              color: Color.fromRGBO(95, 111, 235, 0.4),
            ),
          ),
        ],
      ),
    );
  }
}
