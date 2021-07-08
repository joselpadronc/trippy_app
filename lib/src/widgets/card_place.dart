import 'package:flutter/material.dart';

class CardPlace extends StatelessWidget {
  CardPlace(this.imagePlace, this.namePlace, {Key? key}) : super(key: key);

  String imagePlace =
      'https://tipsparatuviaje.com/wp-content/uploads/2019/08/gran-muralla-china.jpg';
  String namePlace = "Muralla China";

  // CardPlace();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 225.0,
      width: 225.0,
      margin: EdgeInsets.only(
        right: 25.0,
      ),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage(imagePlace),
          fit: BoxFit.cover,
        ),
        color: Colors.white,
        borderRadius: BorderRadius.circular(25.0),
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: Colors.black26,
            blurRadius: 15.0,
            spreadRadius: 2.0,
            offset: Offset(0.0, 8.0),
          )
        ],
      ),
      child: InkWell(
        onTap: () {
          Navigator.pushNamed(context, '/detail');
        },
        borderRadius: BorderRadius.circular(25.0),
        child: Container(
          margin: EdgeInsets.only(
            top: 180.0,
            left: 20.0,
          ),
          child: Text(
            namePlace,
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 18.0,
            ),
          ),
        ),
      ),
    );
  }
}
