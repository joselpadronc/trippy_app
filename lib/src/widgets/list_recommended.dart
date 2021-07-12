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
            'https://i0.wp.com/blog.vivaaerobus.com/wp-content/uploads/2020/04/paisajes-hermosos-de-mexico-reales.jpg',
            'Popocatépetl e Iztaccíhuatl',
          ),
          CardRecommendedPlace(
            'https://i2.wp.com/blog.vivaaerobus.com/wp-content/uploads/2020/04/Huasteca-Potosina.jpg',
            'Huasteca Potosina',
          ),
          CardRecommendedPlace(
            'https://i1.wp.com/blog.vivaaerobus.com/wp-content/uploads/2020/04/paisaje-de-los-cabos.jpg',
            'Los Cabos',
          ),
        ],
      ),
    );
  }
}
