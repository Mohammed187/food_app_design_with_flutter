import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:getwidget/components/button/gf_button.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';

class ThirdPage extends StatefulWidget {
  @override
  _ThirdPageState createState() => _ThirdPageState();
}

class _ThirdPageState extends State<ThirdPage> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    String date = ModalRoute.of(context).settings.arguments;
    return Scaffold(
      body: Container(
        color: Colors.white,
        height: height,
        width: width,
        child: Stack(
          children: <Widget>[
            Container(
              height: (height / 2) - 100,
              width: width,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage(
                    date,
                  ),
                ),
              ),
              child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.fromLTRB(0, 40, 40, 0),
                          child: Badge(
                            badgeColor: Colors.lime,
                            badgeContent: Text(
                              "3",
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                            child: Icon(
                              Icons.notifications_off,
                              color: Colors.white,
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
            new Positioned(
              top: (height / 2) - 150,
              child: Padding(
                padding: EdgeInsets.fromLTRB(25, 0, 25, 0),
                child: Container(
                  height: height - 180,
                  child: Stack(
                    children: <Widget>[
                      Container(
                        decoration:
                            BoxDecoration(color: Colors.white, boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: Offset(0, 3),
                          ),
                        ]),
                        height: (height / 2) + 100,
                        width: width - 50,
                        child: Padding(
                          padding: EdgeInsets.fromLTRB(10, 20, 10, 0),
                          child: Column(
                            children: <Widget>[
                              Row(
                                children: <Widget>[
                                  Text(
                                    "Delicious Food",
                                    style: TextStyle(
                                      fontSize: 18,
                                    ),
                                  ),
                                  Spacer(),
                                  SmoothStarRating(
                                    allowHalfRating: false,
                                    starCount: 5,
                                    rating: 3,
                                    size: 20.0,
                                    isReadOnly: true,
                                    color: Colors.yellow,
                                    borderColor: Colors.grey,
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Padding(
                                padding: EdgeInsets.fromLTRB(0, 0, 20, 0),
                                child: Text(
                                  "Metadata. A simple yet fully customizable ratingbar for flutter, which also include bar indicator, Supporting any fraction of rating.",
                                  style: TextStyle(
                                    color: Colors.grey,
                                  ),
                                  textAlign: TextAlign.justify,
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Divider(
                                thickness: 0.9,
                              ),
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  "Allergens",
                                  style: TextStyle(
                                    fontSize: 20,
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                children: <Widget>[
                                  GFButton(
                                    onPressed: null,
                                    text: "Share",
                                    icon: Icon(Icons.share),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  GFButton(
                                    color: Colors.green,
                                    onPressed: null,
                                    text: "Order",
                                    icon: Icon(Icons.done),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  GFButton(
                                    color: Colors.yellow,
                                    onPressed: null,
                                    text: "Cart",
                                    icon: Icon(Icons.remove_shopping_cart),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                ],
                              ),
                              Divider(
                                thickness: 0.9,
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                children: <Widget>[
                                  Container(
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.grey.withOpacity(0.5),
                                            offset: Offset(0, 1),
                                          )
                                        ]),
                                    child: Padding(
                                      padding: EdgeInsets.all(20),
                                      child: Column(
                                        children: <Widget>[
                                          Text(
                                            "Monday",
                                            style: TextStyle(
                                              color: Colors.grey,
                                            ),
                                          ),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          Text("4/7")
                                        ],
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.grey.withOpacity(0.5),
                                            offset: Offset(0, 1),
                                          )
                                        ]),
                                    child: Padding(
                                      padding: EdgeInsets.all(20),
                                      child: Column(
                                        children: <Widget>[
                                          Text(
                                            "Friday",
                                            style: TextStyle(
                                              color: Colors.grey,
                                            ),
                                          ),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          Text("4/7")
                                        ],
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.grey.withOpacity(0.5),
                                            offset: Offset(0, 1),
                                          )
                                        ]),
                                    child: Padding(
                                      padding: EdgeInsets.all(20),
                                      child: Column(
                                        children: <Widget>[
                                          Text(
                                            "Sunday",
                                            style: TextStyle(
                                              color: Colors.grey,
                                            ),
                                          ),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          Text("4/7")
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                      new Positioned(
                        top: (height / 2) + 80,
                        child: Container(
                          width: width - 50,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Container(
                                height: 50,
                                width: width - 150,
                                decoration: BoxDecoration(
                                    color: Colors.lime[700],
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(50),
                                    )),
                                child: Align(
                                  child: Text(
                                    "Order Now",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
