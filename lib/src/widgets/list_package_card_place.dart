import 'package:flutter/material.dart';
import 'package:trippy_app/src/widgets/package_card_place.dart';

class ListPackageCardPlace extends StatelessWidget {
  const ListPackageCardPlace({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20.0),
      padding: EdgeInsets.only(
        left: 25.0,
        right: 25.0,
        bottom: 25.0,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 202.0,
            margin: EdgeInsets.only(bottom: 15.0),
            child: TextButton(
                onPressed: () {},
                style: TextButton.styleFrom(
                  padding: EdgeInsets.symmetric(horizontal: 5.0, vertical: 0.0),
                  primary: Colors.white,
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Travel Packages',
                      style: TextStyle(
                        fontSize: 22.0,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                    Icon(
                      Icons.keyboard_arrow_right_outlined,
                      size: 28.0,
                    )
                  ],
                )),
          ),
          PackageCardPlace(
            'http://blog.videpan.es/wp-content/uploads/2016/05/Curva-de-la-Herradura.jpg',
          ),
          PackageCardPlace(
            'http://blog.videpan.es/wp-content/uploads/2016/05/Curva-de-la-Herradura.jpg',
          ),
          PackageCardPlace(
            'http://blog.videpan.es/wp-content/uploads/2016/05/Curva-de-la-Herradura.jpg',
          ),
          PackageCardPlace(
            'http://blog.videpan.es/wp-content/uploads/2016/05/Curva-de-la-Herradura.jpg',
          ),
        ],
      ),
    );
  }
}
