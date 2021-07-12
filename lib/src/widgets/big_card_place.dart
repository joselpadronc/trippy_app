import 'package:flutter/material.dart';

class BigCardPlace extends StatelessWidget {
  String imagePlace =
      'http://blog.videpan.es/wp-content/uploads/2016/05/Curva-de-la-Herradura.jpg';

  BigCardPlace(this.imagePlace, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Stack(
        children: [
          Container(
            height: 290.0,
            width: 325.0,
            margin: EdgeInsets.only(
              right: 25.0,
            ),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(imagePlace),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.circular(15.0),
              boxShadow: <BoxShadow>[
                BoxShadow(
                  color: Colors.black12,
                  blurRadius: 10.0,
                  spreadRadius: 8.0,
                  offset: Offset(0.0, 5.0),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(
              top: 225.0,
              left: 18.0,
            ),
            padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
            width: 290.0,
            height: 100.0,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12.0),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Column(
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
                    SizedBox(height: 6.0),
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
                  ],
                ),
                Text(
                  "\$ 350",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 22.0,
                    color: Colors.black87,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
