import 'package:flutter/material.dart';

// MyWidgets
import 'package:trippy_app/src/widgets/card_recommended_place.dart';

class ListRecommended extends StatelessWidget {
  const ListRecommended({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        right: 25.0,
        left: 25.0,
      ),
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.only(
              bottom: 15.0,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Recommended",
                  style: TextStyle(
                    fontSize: 22.0,
                    fontWeight: FontWeight.bold,
                    color: Color.fromRGBO(31, 31, 36, 1),
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                    primary: Colors.black26,
                    padding: EdgeInsets.only(
                      top: 0,
                      bottom: 0,
                      left: 2.0,
                      right: 2.0,
                    ),
                  ),
                  child: Row(
                    children: [
                      Text(
                        "View More",
                        style: TextStyle(fontSize: 16.0),
                      ),
                      Icon(Icons.keyboard_arrow_right_outlined),
                    ],
                  ),
                )
              ],
            ),
          ),
          CardRecommendedPlace(
            'https://www.lavanguardia.com/files/article_main_microformat/uploads/2016/05/20/5fa2cb6b6c307.jpeg',
            'Lugar recomendado',
          ),
          CardRecommendedPlace(
            'https://www.lavanguardia.com/files/article_main_microformat/uploads/2016/05/20/5fa2cb6b6c307.jpeg',
            'Lugar recomendado',
          ),
          CardRecommendedPlace(
            'https://www.lavanguardia.com/files/article_main_microformat/uploads/2016/05/20/5fa2cb6b6c307.jpeg',
            'Lugar recomendado',
          ),
        ],
      ),
    );
  }
}
