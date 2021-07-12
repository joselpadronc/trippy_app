import 'package:flutter/material.dart';

// MyWidgets
import 'package:trippy_app/src/widgets/big_card_place.dart';

class ListBigCardPlace extends StatelessWidget {
  const ListBigCardPlace({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 354.0,
      alignment: Alignment.bottomLeft,
      child: ListView(
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.only(
          bottom: 6.0,
          right: 25.0,
          left: 25.0,
          top: 12.0,
        ),
        children: <BigCardPlace>[
          BigCardPlace(
            'http://blog.videpan.es/wp-content/uploads/2016/05/Curva-de-la-Herradura.jpg',
          ),
          BigCardPlace(
            'http://blog.videpan.es/wp-content/uploads/2016/05/Curva-de-la-Herradura.jpg',
          ),
          BigCardPlace(
            'http://blog.videpan.es/wp-content/uploads/2016/05/Curva-de-la-Herradura.jpg',
          ),
          BigCardPlace(
            'http://blog.videpan.es/wp-content/uploads/2016/05/Curva-de-la-Herradura.jpg',
          ),
        ],
      ),
    );
  }
}
