import 'package:flutter/material.dart';

class CardRecommendedPlace extends StatelessWidget {
  String imagePlace =
      'https://www.lavanguardia.com/files/article_main_microformat/uploads/2016/05/20/5fa2cb6b6c307.jpeg';
  String namePlace = "Lugar Recomendado";

  CardRecommendedPlace(this.imagePlace, this.namePlace);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150.0,
      width: MediaQuery.of(context).size.width,
      margin: EdgeInsets.only(
        bottom: 25.0,
      ),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage(imagePlace),
          fit: BoxFit.cover,
        ),
        color: Colors.white,
        borderRadius: BorderRadius.circular(15.0),
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
        borderRadius: BorderRadius.circular(15.0),
        child: Container(
          margin: EdgeInsets.only(
            top: 108.0,
            left: 20.0,
          ),
          child: Text(
            namePlace,
            overflow: TextOverflow.ellipsis,
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
