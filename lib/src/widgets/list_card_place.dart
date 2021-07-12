import 'package:flutter/material.dart';

// MyWidgets
import 'package:trippy_app/src/widgets/card_place.dart';

class ListCardPlace extends StatelessWidget {
  const ListCardPlace({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          height: 50.0,
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              textBtnMain("For You", 20, Colors.white),
              textBtnMain("Popular", 16, Colors.white38),
              textBtnMain("Newest", 16, Colors.white38),
            ],
          ),
        ),
        Container(
          height: 250.0,
          margin: EdgeInsets.only(top: 15.0),
          child: ListView(
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.only(
              bottom: 25.0,
              right: 25.0,
              left: 25.0,
              top: 5.0,
            ),
            children: <CardPlace>[
              CardPlace(
                'http://blog.videpan.es/wp-content/uploads/2016/05/Curva-de-la-Herradura.jpg',
                'Curva de la Herradura',
              ),
              CardPlace(
                'https://tipsparatuviaje.com/wp-content/uploads/2019/08/gran-muralla-china.jpg',
                'Muralla China',
              ),
              CardPlace(
                'https://i0.wp.com/blog.vivaaerobus.com/wp-content/uploads/2020/04/paisaje-canon-del-sumidero.jpg',
                'Cañón del Sumidero',
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget textBtnMain(String textBtn, double textSize, Color textColor) {
    return Container(
      margin: EdgeInsets.only(right: 18.0),
      child: TextButton(
        onPressed: () {},
        style: TextButton.styleFrom(
          padding: EdgeInsets.symmetric(horizontal: 5.0, vertical: 0.0),
          primary: textColor,
        ),
        child: Text(
          textBtn,
          style: TextStyle(
            fontSize: textSize,
            fontWeight: FontWeight.w800,
          ),
        ),
      ),
    );
  }
}
