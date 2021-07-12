import 'package:flutter/material.dart';

class PackageCardPlace extends StatelessWidget {
  String imagePlace =
      'http://blog.videpan.es/wp-content/uploads/2016/05/Curva-de-la-Herradura.jpg';

  PackageCardPlace(this.imagePlace);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 105.0,
      margin: EdgeInsets.only(bottom: 25.0),
      padding: EdgeInsets.only(right: 10.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Row(
        children: [
          Container(
            width: 110.0,
            margin: EdgeInsets.only(right: 10.0),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(imagePlace),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.circular(10.0),
            ),
          ),
          Container(
            width: 225.0,
            padding: EdgeInsets.only(top: 10.0, bottom: 10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Curva de la Herradura",
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    fontSize: 18.0,
                    color: Colors.black87,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(height: 10.0),
                Text(
                  "Explore the montain in",
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    fontSize: 15.0,
                    color: Colors.black45,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                SizedBox(height: 10.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.star,
                          color: Color.fromRGBO(238, 166, 43, 1),
                        ),
                        Icon(
                          Icons.star,
                          color: Color.fromRGBO(238, 166, 43, 1),
                        ),
                        Icon(
                          Icons.star,
                          color: Color.fromRGBO(238, 166, 43, 1),
                        ),
                        Icon(
                          Icons.star_half,
                          color: Color.fromRGBO(238, 166, 43, 1),
                        ),
                        Icon(
                          Icons.star_outline,
                          color: Color.fromRGBO(238, 166, 43, 1),
                        ),
                      ],
                    ),
                    Text(
                      "\$ 450",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18.0,
                        color: Colors.black87,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
