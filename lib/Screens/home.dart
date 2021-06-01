import 'dart:ui';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

const themeColor = const Color(0xff063970);
enum BestTutorSite { shipper, seller}

class HomeScreen extends StatefulWidget {

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

BoxDecoration myBoxDecoration() {
  return BoxDecoration(
    border: Border.all(
      color: themeColor, //                   <--- border color
      width: 2.0,
    ),
  );
}

class _HomeScreenState extends State<HomeScreen> {
  BestTutorSite _site = BestTutorSite.shipper;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Center(
                child:Container(
                  child: Column(
                    children: <Widget>[
                      SizedBox(height: 50),
                      Text(
                        'Please select your profile',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w900,
                          fontSize: 25,
                        ),
                      ),
                      SizedBox(height: 20,),
                      Container(
                        margin: const EdgeInsets.all(20),
                        padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                        decoration: myBoxDecoration(),
                        child: ListTile(
                          title: Row(
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.fromLTRB(0,0,10,0),
                                child: Icon(Icons.house, size: 60,),
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: <Widget>[
                                  Padding(
                                    padding: const EdgeInsets.symmetric(vertical: 10),
                                    child: Text("Shipper",style: TextStyle(
                                      fontSize: 20,
                                    ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(0,0,0,10),
                                    child: Text("Lorel ipsum dolor sit amet,\nconsectetur adipiscing", style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.black54
                                    ),),
                                  )
                                ],
                              )
                            ],
                          ),
                          leading: Radio(
                            value: BestTutorSite.shipper,
                            groupValue: _site,
                            onChanged: (BestTutorSite value) {
                              setState(() {
                                _site = value;
                              });
                            },
                          ),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.all(20),
                        padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                        decoration: myBoxDecoration(),
                        child: ListTile(
                          title: Row(
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.fromLTRB(0,5,15,0),
                                child: Icon(Icons.local_shipping, size: 60,),
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: <Widget>[
                                  Padding(
                                    padding: const EdgeInsets.symmetric(vertical: 10),
                                    child: Text("Seller",style: TextStyle(
                                      fontSize: 20,
                                    ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(0,0,0,10),
                                    child: Text("Lorel ipsum dolor sit amet,\nconsectetur adipiscing", style: TextStyle(
                                        fontSize: 15,
                                        color: Colors.black54
                                    ),),
                                  )
                                ],
                              )
                            ],
                          ),
                          leading: Radio(
                            value: BestTutorSite.seller,
                            groupValue: _site,
                            onChanged: (BestTutorSite value) {
                              setState(() {
                                _site = value;
                              });
                            },
                          ),
                        ),
                      ),
                      SizedBox(height: 40,),
                      RaisedButton(
                        padding: EdgeInsets.fromLTRB(50, 15, 50, 15),
                        onPressed: (){},
                        child: Text('CONTINUE',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        color: themeColor,
                      )
                    ],
                  ),
                )
            ),
          ],
        ),
      ),
    );
  }
}