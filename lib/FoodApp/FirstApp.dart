import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_app_new/FoodApp/SecondPage.dart';

class FirstPage extends StatefulWidget {
  @override
  _FirstPageState createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  List<String> images = [
    "asset/list1.jpg",
    "asset/list2.jpg",
    "asset/list3.jpg",
    "asset/list4.jpg",
    "asset/list5.jpg",
    "asset/list6.jpg"
  ];
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        height: height,
        child: Column(
          children: [
            Container(
              height: height / 2 - 20,
              child: Stack(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.fill,
                            colorFilter: ColorFilter.mode(
                                Colors.black.withOpacity(0.5),
                                BlendMode.darken),
                            image: AssetImage(
                              "asset/f1.jpg",
                            )),
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(150),
                        )),
                    height: height / 2 - 50,
                    child: Column(
                      children: [
                        SizedBox(
                          height: 30,
                        ),
                        Row(
                          children: [
                            Spacer(),
                            Padding(
                              padding: EdgeInsets.fromLTRB(0, 0, 20, 20),
                              child: Icon(
                                Icons.notifications_none,
                                color: Colors.white,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.fromLTRB(0, 0, 30, 20),
                              child: Icon(
                                Icons.search,
                                color: Colors.white,
                              ),
                            )
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 30,
                            ),
                            Text(
                              "Contact Us Now",
                              style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                              ),
                            ),
                            Text(
                              "Cheeziuos",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 40,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              "Get Your Desire Now",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 30,
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  new Positioned(
                    top: height / 2 - 70,
                    width: width,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.fromLTRB(0, 0, 10, 0),
                          child: Container(
                            decoration: BoxDecoration(
                                color: Colors.lime[700],
                                borderRadius: BorderRadius.all(
                                  Radius.circular(50),
                                )),
                            child: Padding(
                              padding: EdgeInsets.fromLTRB(50, 10, 50, 10),
                              child: Text(
                                "Order Now",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.all(5),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "SPECIAL OFFERS",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Container(
              height: height / 2 - 90,
              child: Expanded(
                child: ListView.builder(
                  itemCount: images.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: EdgeInsets.all(5),
                      child: Container(
                        width: 160,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.fill,
                            colorFilter: ColorFilter.mode(
                                Colors.black.withOpacity(0.3),
                                BlendMode.darken),
                            image: AssetImage(
                              images[index],
                            ),
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
            Spacer(),
            Container(
              height: height - (height / 2 - 90 + height / 2 - 20 + 35),
              width: width,
              child: Stack(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 30, 0, 0),
                    child: Container(
                      height: 50,
                      width: width,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                        fit: BoxFit.fill,
                        colorFilter: ColorFilter.mode(
                            Colors.black.withOpacity(0.3), BlendMode.darken),
                        image: AssetImage("asset/foof2.jpg"),
                      )),
                    ),
                  ),
                  new Positioned(
                    width: width,
                    bottom: 10,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        ClipOval(
                          child: Material(
                            color: Colors.lime[700],
                            child: InkWell(
                              splashColor: Colors.lime[100],
                              child: SizedBox(
                                width: 56,
                                height: 56,
                                child: Icon(
                                  Icons.menu,
                                  color: Colors.white,
                                ),
                              ),
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => SecondPage()));
                              },
                            ),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
