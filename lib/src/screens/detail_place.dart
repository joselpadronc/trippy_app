import 'package:flutter/material.dart';

// MyWidgets

class DetailPlace extends StatelessWidget {
  DetailPlace({Key? key}) : super(key: key);

  String imagePlace =
      'https://tipsparatuviaje.com/wp-content/uploads/2019/08/gran-muralla-china.jpg';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(245, 248, 255, 1),
      body: Stack(
        children: [
          ListView(
            padding: EdgeInsets.zero,
            children: [
              mainPlaceInfo(),
              descriptionPlace(
                "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.",
              ),
            ],
          ),
          topNavBtns(context),
        ],
      ),
    );
  }

  Widget topNavBtns(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        top: 45.0,
        left: 15.0,
        right: 15.0,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          FloatingActionButton(
            heroTag: 'Back',
            onPressed: () {
              Navigator.pop(context);
            },
            child: Icon(
              Icons.keyboard_arrow_left_outlined,
              size: 45.0,
              color: Colors.white,
            ),
            backgroundColor: Colors.black26,
            elevation: 0.0,
          ),
          FloatingActionButton(
            heroTag: 'Menu',
            onPressed: () {},
            child: Icon(
              Icons.more_horiz,
              size: 45.0,
              color: Colors.white,
            ),
            backgroundColor: Colors.black26,
            elevation: 0.0,
          ),
        ],
      ),
    );
  }

  Widget mainPlaceInfo() {
    return Container(
      alignment: Alignment.topLeft,
      height: 475.0,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(35.0),
          bottomRight: Radius.circular(35.0),
        ),
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: Colors.black12,
            spreadRadius: 1.0,
            blurRadius: 12.0,
          )
        ],
      ),
      child: Stack(
        children: [
          Column(
            children: [
              Container(
                padding: EdgeInsets.only(right: 20.0, left: 20.0),
                height: 380.0,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(imagePlace),
                    fit: BoxFit.cover,
                  ),
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(35.0),
                    bottomRight: Radius.circular(35.0),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 12.0, horizontal: 25.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Muralla China",
                      style: TextStyle(
                        fontSize: 32.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                      textAlign: TextAlign.left,
                    ),
                    Container(
                      margin: EdgeInsets.only(
                        top: 10.0,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            margin: EdgeInsets.only(right: 25.0),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.star,
                                  size: 14.0,
                                  color: Color.fromRGBO(121, 134, 216, 1),
                                ),
                                SizedBox(
                                  width: 5.0,
                                ),
                                Text(
                                  "5.0",
                                  style: TextStyle(fontSize: 18.0),
                                )
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(right: 25.0),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.timer,
                                  size: 14.0,
                                  color: Color.fromRGBO(121, 134, 216, 1),
                                ),
                                SizedBox(
                                  width: 5.0,
                                ),
                                Text(
                                  "12 days",
                                  style: TextStyle(fontSize: 18.0),
                                )
                              ],
                            ),
                          ),
                          Text("150 km", style: TextStyle(fontSize: 18.0)),
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
          Container(
            height: 50.0,
            alignment: Alignment.bottomRight,
            margin: EdgeInsets.only(top: 350.0),
            padding: EdgeInsets.symmetric(horizontal: 25.0),
            child: FloatingActionButton(
              heroTag: 'Favorite',
              onPressed: () {},
              backgroundColor: Colors.white,
              child: Icon(
                Icons.favorite_border,
                color: Colors.red,
                size: 28.0,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget descriptionPlace(String textDescription) {
    return Container(
      alignment: Alignment.topLeft,
      padding: EdgeInsets.symmetric(horizontal: 25.0),
      margin: EdgeInsets.only(top: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "About",
            style: TextStyle(
              fontSize: 28.0,
              fontWeight: FontWeight.bold,
              color: Color.fromRGBO(121, 134, 216, 1),
            ),
            textAlign: TextAlign.left,
          ),
          SizedBox(
            height: 15.0,
          ),
          Text(
            textDescription,
            style: TextStyle(
              fontSize: 16.0,
              color: Colors.black38,
              fontWeight: FontWeight.w600,
            ),
          ),
          Container(
            alignment: Alignment.center,
            child: Container(
              margin: EdgeInsets.only(
                top: 25.0,
                bottom: 25.0,
              ),
              padding: EdgeInsets.symmetric(horizontal: 25.0, vertical: 15.0),
              decoration: BoxDecoration(
                color: Color.fromRGBO(92, 111, 251, 1),
                borderRadius: BorderRadius.circular(30.0),
              ),
              child: InkWell(
                onTap: () {},
                borderRadius: BorderRadius.circular(30.0),
                child: Text(
                  "Explore Now",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
