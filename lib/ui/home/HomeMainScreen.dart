import 'dart:math';

import 'package:dairy_newdeskapp/utils/AppColors.dart';
import 'package:dairy_newdeskapp/utils/SizeConfig.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../TabBarDemo.dart';

class HomeMainScreen extends StatefulWidget {
  @override
  HomeScreenMainState createState() => HomeScreenMainState();
//
// TODO: implement createState

}

class HomeScreenMainState extends State<HomeMainScreen> {
  bool expandFlag0 = false;
  bool expandFlag1 = false;
  bool expandFlag2 = false;
  bool expandFlag3 = false;
  bool expandFlag4 = false;
  bool expandFlag5 = false;
  bool expandFlag6 = false;
  bool pressAttention = false;
  bool pressAttention1 = false;
  var type;
  Color color =
      Color((Random().nextDouble() * 0xFFFFFF).toInt()).withOpacity(1.0);

  int select,valueRadio;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Container(
        //  padding: EdgeInsets.only(top: 20,left: 10,right: 10),
        child: Row(
          children: <Widget>[
            Container(
              //   width: MediaQuery.of(context).size.width/2,
              alignment: Alignment.topRight,

              width: SizeConfig.blockSizeHorizontal * 30,
              child: Column(children: <Widget>[
                Image.asset(
                  'assests/image/home.png',
                  width: SizeConfig.blockSizeHorizontal * 10,
                  height: SizeConfig.blockSizeVertical * 10,
                ),
                Container(
                    width: SizeConfig.blockSizeHorizontal * 20,
                    height: SizeConfig.blockSizeVertical * 80,
                    color: AppColors.homeBlue,
                    child: SingleChildScrollView(
                      child: Column(children: <Widget>[
                        Container(
                          child: Row(
                            children: <Widget>[
                              Container(
                                  margin: EdgeInsets.only(
                                      left: SizeConfig.blockSizeHorizontal * 2,
                                      top: SizeConfig.blockSizeHorizontal * 2),
                                  height: SizeConfig.blockSizeVertical * 6,
                                  width: SizeConfig.blockSizeHorizontal * 4,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage(
                                              "assests/image/person.png"),
                                          fit: BoxFit.fill))),
                              Container(
                                margin: EdgeInsets.only(
                                    left: SizeConfig.blockSizeHorizontal * 1,
                                    top: SizeConfig.blockSizeHorizontal * 2),

                                //   width: MediaQuery.of(context).size.width/2,
                                child: Text(
                                  'Mark Luis',
                                  style: TextStyle(
                                    color: AppColors.white,
                                    fontSize: 15,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            setState(() {
                              type = "home";
                              pressAttention = !pressAttention;
                            });
                          },
                          child: Container(
                            margin: EdgeInsets.only(top: 10),
                            height: SizeConfig.blockSizeVertical * 5,
                            color: pressAttention
                                ? AppColors.blueDark
                                : AppColors.homeBlue,
                            child: Row(
                              children: <Widget>[
                                Container(
                                    margin: EdgeInsets.only(
                                      left: SizeConfig.blockSizeHorizontal * 2,
                                    ),
                                    height: SizeConfig.blockSizeVertical * 2.6,
                                    width: SizeConfig.blockSizeHorizontal * 1.5,
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image: AssetImage(
                                                "assests/image/homeicon.png"),
                                            fit: BoxFit.fill))),
                                Container(
                                  margin: EdgeInsets.only(
                                    left: SizeConfig.blockSizeHorizontal * 1,
                                  ),

                                  //   width: MediaQuery.of(context).size.width/2,
                                  child: Text(
                                    'Home',
                                    style: TextStyle(
                                      color: AppColors.white,
                                      fontSize: 12,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            setState(() {
                              type = "account";
                              pressAttention1 = !pressAttention1;
                            });
                          },
                          child: Container(
                            margin: EdgeInsets.only(top: 10),
                            height: SizeConfig.blockSizeVertical * 5,
                            color: pressAttention1
                                ? AppColors.blueDark
                                : AppColors.homeBlue,
                            child: Row(
                              children: <Widget>[
                                Container(
                                    margin: EdgeInsets.only(
                                        left:
                                            SizeConfig.blockSizeHorizontal * 2),
                                    height: SizeConfig.blockSizeVertical * 2.6,
                                    width: SizeConfig.blockSizeHorizontal * 1.5,
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image: AssetImage(
                                                "assests/image/accounticon.png"),
                                            fit: BoxFit.fill))),
                                Container(
                                  margin: EdgeInsets.only(
                                      left: SizeConfig.blockSizeHorizontal * 1),

                                  //   width: MediaQuery.of(context).size.width/2,
                                  child: Text(
                                    'Accounts',
                                    style: TextStyle(
                                      color: AppColors.white,
                                      fontSize: 12,
                                    ),
                                  ),
                                ),
                                Container(
                                  alignment: Alignment.centerRight,
                                  child: IconButton(
                                      icon: new Container(
                                        height: 40.0,
                                        width: 40.0,
                                        child: new Center(
                                          child: new Icon(
                                            expandFlag0
                                                ? Icons.keyboard_arrow_up
                                                : Icons.keyboard_arrow_down,
                                            color: Colors.white,
                                            size: 25.0,
                                          ),
                                        ),
                                      ),
                                      onPressed: () {
                                        setState(() {
                                          expandFlag0 = !expandFlag0;
                                        });
                                      }),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Visibility(
                            maintainSize: true,
                            maintainAnimation: true,
                            maintainState: true,
                            child: Container()),
                        expandFlag0 == true ? Expandedview0() : Container(),
                        Container(
                          margin: EdgeInsets.only(
                              top: SizeConfig.blockSizeHorizontal * 1),
                          child: Row(
                            children: <Widget>[
                              Container(
                                  margin: EdgeInsets.only(
                                      left: SizeConfig.blockSizeHorizontal * 2),
                                  height: SizeConfig.blockSizeVertical * 2.6,
                                  width: SizeConfig.blockSizeHorizontal * 1.5,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage(
                                              "assests/image/taskicon.png"),
                                          fit: BoxFit.fill))),
                              Container(
                                margin: EdgeInsets.only(
                                    left: SizeConfig.blockSizeHorizontal * 1),

                                //   width: MediaQuery.of(context).size.width/2,
                                child: Text(
                                  'Task',
                                  style: TextStyle(
                                    color: AppColors.white,
                                    fontSize: 12,
                                  ),
                                ),
                              ),
                              Container(
                                child: IconButton(
                                    icon: new Container(
                                      height: 40.0,
                                      width: 40.0,
                                      child: new Center(
                                        child: new Icon(
                                          expandFlag1
                                              ? Icons.keyboard_arrow_up
                                              : Icons.keyboard_arrow_down,
                                          color: Colors.white,
                                          size: 25.0,
                                        ),
                                      ),
                                    ),
                                    onPressed: () {
                                      setState(() {
                                        expandFlag1 = !expandFlag1;
                                      });
                                    }),
                              ),
                            ],
                          ),
                        ),
                        Visibility(
                            maintainSize: true,
                            maintainAnimation: true,
                            maintainState: true,
                            child: Container()),
                        expandFlag1 == true ? Expandedview1() : Container(),
                        Container(
                          margin: EdgeInsets.only(
                              top: SizeConfig.blockSizeHorizontal * 1),
                          child: Row(
                            children: <Widget>[
                              Container(
                                  margin: EdgeInsets.only(
                                      left: SizeConfig.blockSizeHorizontal * 2),
                                  height: SizeConfig.blockSizeVertical * 2.6,
                                  width: SizeConfig.blockSizeHorizontal * 1.5,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage(
                                              "assests/image/reporticon.png"),
                                          fit: BoxFit.fill))),
                              Container(
                                margin: EdgeInsets.only(
                                    left: SizeConfig.blockSizeHorizontal * 1),

                                //   width: MediaQuery.of(context).size.width/2,
                                child: Text(
                                  'Reports',
                                  style: TextStyle(
                                    color: AppColors.white,
                                    fontSize: 12,
                                  ),
                                ),
                              ),
                              Container(
                                child: IconButton(
                                    icon: new Container(
                                      height: 40.0,
                                      width: 40.0,
                                      child: new Center(
                                        child: new Icon(
                                          expandFlag2
                                              ? Icons.keyboard_arrow_up
                                              : Icons.keyboard_arrow_down,
                                          color: Colors.white,
                                          size: 25.0,
                                        ),
                                      ),
                                    ),
                                    onPressed: () {
                                      setState(() {
                                        expandFlag2 = !expandFlag2;
                                      });
                                    }),
                              ),
                            ],
                          ),
                        ),
                        Visibility(
                            maintainSize: true,
                            maintainAnimation: true,
                            maintainState: true,
                            child: Container()),
                        expandFlag2 == true ? Expandedview2() : Container(),
                        Container(
                          margin: EdgeInsets.only(
                              top: SizeConfig.blockSizeHorizontal * 1),
                          child: Row(
                            children: <Widget>[
                              Container(
                                  margin: EdgeInsets.only(
                                      left: SizeConfig.blockSizeHorizontal * 2),
                                  height: SizeConfig.blockSizeVertical * 2.6,
                                  width: SizeConfig.blockSizeHorizontal * 1.5,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage(
                                              "assests/image/rateicon.png"),
                                          fit: BoxFit.fill))),
                              Container(
                                margin: EdgeInsets.only(
                                    left: SizeConfig.blockSizeHorizontal * 1),

                                //   width: MediaQuery.of(context).size.width/2,
                                child: Text(
                                  'Rate Management',
                                  style: TextStyle(
                                    color: AppColors.white,
                                    fontSize: 12,
                                  ),
                                ),
                              ),
                              Container(
                                child: IconButton(
                                    icon: new Container(
                                      height: 40.0,
                                      width: 40.0,
                                      child: new Center(
                                        child: new Icon(
                                          expandFlag3
                                              ? Icons.keyboard_arrow_up
                                              : Icons.keyboard_arrow_down,
                                          color: Colors.white,
                                          size: 25.0,
                                        ),
                                      ),
                                    ),
                                    onPressed: () {
                                      setState(() {
                                        expandFlag3 = !expandFlag3;
                                      });
                                    }),
                              ),
                            ],
                          ),
                        ),
                        Visibility(
                            maintainSize: true,
                            maintainAnimation: true,
                            maintainState: true,
                            child: Container()),
                        expandFlag3 == true ? Expandedview3() : Container(),
                        Container(
                          margin: EdgeInsets.only(
                              top: SizeConfig.blockSizeHorizontal * 1),
                          child: Row(
                            children: <Widget>[
                              Container(
                                  margin: EdgeInsets.only(
                                      left: SizeConfig.blockSizeHorizontal * 2),
                                  height: SizeConfig.blockSizeVertical * 2.6,
                                  width: SizeConfig.blockSizeHorizontal * 1.5,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage(
                                              "assests/image/databaseicon.png"),
                                          fit: BoxFit.fill))),
                              Container(
                                margin: EdgeInsets.only(
                                    left: SizeConfig.blockSizeHorizontal * 1),

                                //   width: MediaQuery.of(context).size.width/2,
                                child: Text(
                                  'Database Management',
                                  style: TextStyle(
                                    color: AppColors.white,
                                    fontSize: 12,
                                  ),
                                ),
                              ),
                              Container(
                                child: IconButton(
                                    icon: new Container(
                                      height: 40.0,
                                      width: 40.0,
                                      child: new Center(
                                        child: new Icon(
                                          expandFlag4
                                              ? Icons.keyboard_arrow_up
                                              : Icons.keyboard_arrow_down,
                                          color: Colors.white,
                                          size: 25.0,
                                        ),
                                      ),
                                    ),
                                    onPressed: () {
                                      setState(() {
                                        expandFlag4 = !expandFlag4;
                                      });
                                    }),
                              ),
                            ],
                          ),
                        ),
                        Visibility(
                            maintainSize: true,
                            maintainAnimation: true,
                            maintainState: true,
                            child: Container()),
                        expandFlag4 == true ? Expandedview4() : Container(),
                        Container(
                          margin: EdgeInsets.only(
                              top: SizeConfig.blockSizeHorizontal * 1),
                          child: Row(
                            children: <Widget>[
                              Container(
                                  margin: EdgeInsets.only(
                                      left: SizeConfig.blockSizeHorizontal * 2),
                                  height: SizeConfig.blockSizeVertical * 2.6,
                                  width: SizeConfig.blockSizeHorizontal * 1.5,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage(
                                              "assests/image/settingicon.png"),
                                          fit: BoxFit.fill))),
                              Container(
                                margin: EdgeInsets.only(
                                    left: SizeConfig.blockSizeHorizontal * 1),

                                //   width: MediaQuery.of(context).size.width/2,
                                child: Text(
                                  'Settings & Tools',
                                  style: TextStyle(
                                    color: AppColors.white,
                                    fontSize: 12,
                                  ),
                                ),
                              ),
                              Container(
                                child: IconButton(
                                    icon: new Container(
                                      height: 40.0,
                                      width: 40.0,
                                      child: new Center(
                                        child: new Icon(
                                          expandFlag5
                                              ? Icons.keyboard_arrow_up
                                              : Icons.keyboard_arrow_down,
                                          color: Colors.white,
                                          size: 25.0,
                                        ),
                                      ),
                                    ),
                                    onPressed: () {
                                      setState(() {
                                        expandFlag5 = !expandFlag5;
                                      });
                                    }),
                              ),
                            ],
                          ),
                        ),
                        Visibility(
                            maintainSize: true,
                            maintainAnimation: true,
                            maintainState: true,
                            child: Container()),
                        expandFlag5 == true ? Expandedview5() : Container(),
                        Container(
                          margin: EdgeInsets.only(
                              top: SizeConfig.blockSizeHorizontal * 1),
                          child: Row(
                            children: <Widget>[
                              Container(
                                  margin: EdgeInsets.only(
                                      left: SizeConfig.blockSizeHorizontal * 2),
                                  height: SizeConfig.blockSizeVertical * 2.6,
                                  width: SizeConfig.blockSizeHorizontal * 1.5,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage(
                                              "assests/image/helpicon.png"),
                                          fit: BoxFit.fill))),
                              Container(
                                margin: EdgeInsets.only(
                                    left: SizeConfig.blockSizeHorizontal * 1),

                                //   width: MediaQuery.of(context).size.width/2,
                                child: Text(
                                  'Help Desk',
                                  style: TextStyle(
                                    color: AppColors.white,
                                    fontSize: 12,
                                  ),
                                ),
                              ),
                              Container(
                                child: IconButton(
                                    icon: new Container(
                                      height: 40.0,
                                      width: 40.0,
                                      child: new Center(
                                        child: new Icon(
                                          expandFlag6
                                              ? Icons.keyboard_arrow_up
                                              : Icons.keyboard_arrow_down,
                                          color: Colors.white,
                                          size: 25.0,
                                        ),
                                      ),
                                    ),
                                    onPressed: () {
                                      setState(() {
                                        expandFlag6 = !expandFlag6;
                                      });
                                    }),
                              ),
                            ],
                          ),
                        ),
                        Visibility(
                            maintainSize: true,
                            maintainAnimation: true,
                            maintainState: true,
                            child: Container()),
                        expandFlag6 == true ? Expandedview6() : Container(),
                        Container(
                            margin: EdgeInsets.only(
                                top: SizeConfig.blockSizeVertical * 5),
                            alignment: Alignment.center,
                            width: SizeConfig.blockSizeHorizontal * 10,
                            height: SizeConfig.blockSizeVertical * 5,
                            child: Text(
                              '+ADD PAYMENTS',
                              style: TextStyle(
                                color: AppColors.white,
                                fontSize: 10,
                              ),
                            ),
                            decoration: BoxDecoration(
                              color: AppColors.lightGreen,
                              borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(5.0),
                                bottomRight: Radius.circular(5.0),
                                topLeft: Radius.circular(5.0),
                                topRight: Radius.circular(5.0),
                              ),
                            ))
                      ]),
                    )),
              ]),
            ),
            Container(
              width: SizeConfig.blockSizeHorizontal * 70,
              decoration: BoxDecoration(color: Colors.white),
              alignment: Alignment.topLeft,
              child: Column(children: <Widget>[
                Container(
                  height: SizeConfig.blockSizeVertical * 10,
                  width: SizeConfig.blockSizeHorizontal * 75,
                  color: AppColors.white,
                ),
                Container(
                  width: SizeConfig.blockSizeHorizontal * 65,
                  height: SizeConfig.blockSizeVertical * 80,
                  color: AppColors.homebg,
                  child: rightView(type),
                ),
              ]),
            )
          ],
        ),
      ),
    );
  }

  Expandedview0() {
    return Container(
      color: AppColors.blueDark,
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
                margin: EdgeInsets.only(
                    left: SizeConfig.blockSizeHorizontal * 4,
                    top: SizeConfig.blockSizeHorizontal * 1.5),
                alignment: Alignment.topLeft,
                child: InkWell(
                  onTap: () {
                    setState(() {
                      type = "all account";
                    });
                  },
                  child: Text(
                    'All Accounts',
                    style: TextStyle(color: AppColors.white, fontSize: 10),
                  ),
                )),
            Container(
              margin: EdgeInsets.only(
                  left: SizeConfig.blockSizeHorizontal * 4,
                  top: SizeConfig.blockSizeHorizontal * 1),
              alignment: Alignment.topLeft,
              child: Text(
                'Add Accounts',
                style: TextStyle(color: AppColors.white, fontSize: 10),
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                  left: SizeConfig.blockSizeHorizontal * 4,
                  top: SizeConfig.blockSizeHorizontal * 1,
                  bottom: SizeConfig.blockSizeHorizontal * 1),
              alignment: Alignment.topLeft,
              child: Text(
                'Bank Accounts',
                style: TextStyle(color: AppColors.white, fontSize: 10),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Expandedview1() {
    return Container(
      color: AppColors.blueDark,
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(
                  left: SizeConfig.blockSizeHorizontal * 4,
                  top: SizeConfig.blockSizeHorizontal * 1.5),
              alignment: Alignment.topLeft,
              child: Text(
                'Milk Collection',
                style: TextStyle(color: AppColors.white, fontSize: 10),
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                  left: SizeConfig.blockSizeHorizontal * 4,
                  top: SizeConfig.blockSizeHorizontal * 1),
              alignment: Alignment.topLeft,
              child: Text(
                'Milk Sale',
                style: TextStyle(color: AppColors.white, fontSize: 10),
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                left: SizeConfig.blockSizeHorizontal * 4,
                top: SizeConfig.blockSizeHorizontal * 1,
              ),
              alignment: Alignment.topLeft,
              child: Text(
                'Item Sale',
                style: TextStyle(color: AppColors.white, fontSize: 10),
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                left: SizeConfig.blockSizeHorizontal * 4,
                top: SizeConfig.blockSizeHorizontal * 1,
              ),
              alignment: Alignment.topLeft,
              child: Text(
                'Payments',
                style: TextStyle(color: AppColors.white, fontSize: 10),
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                left: SizeConfig.blockSizeHorizontal * 4,
                top: SizeConfig.blockSizeHorizontal * 1,
              ),
              alignment: Alignment.topLeft,
              child: Text(
                'Stock Update',
                style: TextStyle(color: AppColors.white, fontSize: 10),
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                left: SizeConfig.blockSizeHorizontal * 4,
                top: SizeConfig.blockSizeHorizontal * 1,
              ),
              alignment: Alignment.topLeft,
              child: Text(
                'Dispatch',
                style: TextStyle(color: AppColors.white, fontSize: 10),
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                left: SizeConfig.blockSizeHorizontal * 4,
                top: SizeConfig.blockSizeHorizontal * 1,
              ),
              alignment: Alignment.topLeft,
              child: Text(
                'Deduction',
                style: TextStyle(color: AppColors.white, fontSize: 10),
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                  left: SizeConfig.blockSizeHorizontal * 4,
                  top: SizeConfig.blockSizeHorizontal * 1,
                  bottom: SizeConfig.blockSizeHorizontal * 1),
              alignment: Alignment.topLeft,
              child: Text(
                'Bonus',
                style: TextStyle(color: AppColors.white, fontSize: 10),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Expandedview2() {
    return Container(
      color: AppColors.blueDark,
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(
                  left: SizeConfig.blockSizeHorizontal * 4,
                  top: SizeConfig.blockSizeHorizontal * 1.5),
              alignment: Alignment.topLeft,
              child: Text(
                'Purchase Report',
                style: TextStyle(color: AppColors.white, fontSize: 10),
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                  left: SizeConfig.blockSizeHorizontal * 4,
                  top: SizeConfig.blockSizeHorizontal * 1),
              alignment: Alignment.topLeft,
              child: Text(
                'Sale Report',
                style: TextStyle(color: AppColors.white, fontSize: 10),
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                left: SizeConfig.blockSizeHorizontal * 4,
                top: SizeConfig.blockSizeHorizontal * 1,
              ),
              alignment: Alignment.topLeft,
              child: Text(
                'Item Sale Report',
                style: TextStyle(color: AppColors.white, fontSize: 10),
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                left: SizeConfig.blockSizeHorizontal * 4,
                top: SizeConfig.blockSizeHorizontal * 1,
              ),
              alignment: Alignment.topLeft,
              child: Text(
                'Payment Report',
                style: TextStyle(color: AppColors.white, fontSize: 10),
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                left: SizeConfig.blockSizeHorizontal * 4,
                top: SizeConfig.blockSizeHorizontal * 1,
              ),
              alignment: Alignment.topLeft,
              child: Text(
                'Stock Report',
                style: TextStyle(color: AppColors.white, fontSize: 10),
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                  left: SizeConfig.blockSizeHorizontal * 4,
                  top: SizeConfig.blockSizeHorizontal * 1,
                  bottom: SizeConfig.blockSizeHorizontal * 1),
              alignment: Alignment.topLeft,
              child: Text(
                'Unio Sale Report',
                style: TextStyle(color: AppColors.white, fontSize: 10),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Expandedview3() {
    return Container(
      color: AppColors.blueDark,
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(
                  left: SizeConfig.blockSizeHorizontal * 4,
                  top: SizeConfig.blockSizeHorizontal * 1.5),
              alignment: Alignment.topLeft,
              child: Text(
                'Import Rate',
                style: TextStyle(color: AppColors.white, fontSize: 10),
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                  left: SizeConfig.blockSizeHorizontal * 4,
                  top: SizeConfig.blockSizeHorizontal * 1),
              alignment: Alignment.topLeft,
              child: Text(
                'Flat Rate',
                style: TextStyle(color: AppColors.white, fontSize: 10),
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                left: SizeConfig.blockSizeHorizontal * 4,
                top: SizeConfig.blockSizeHorizontal * 1,
                bottom: SizeConfig.blockSizeHorizontal * 1,
              ),
              alignment: Alignment.topLeft,
              child: Text(
                'Advance Rate',
                style: TextStyle(color: AppColors.white, fontSize: 10),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Expandedview4() {
    return Container(
      color: AppColors.blueDark,
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(
                  left: SizeConfig.blockSizeHorizontal * 4,
                  top: SizeConfig.blockSizeHorizontal * 1.5),
              alignment: Alignment.topLeft,
              child: Text(
                'Export Data',
                style: TextStyle(color: AppColors.white, fontSize: 10),
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                  left: SizeConfig.blockSizeHorizontal * 4,
                  top: SizeConfig.blockSizeHorizontal * 1,
                  bottom: SizeConfig.blockSizeHorizontal * 1),
              alignment: Alignment.topLeft,
              child: Text(
                'Import Data',
                style: TextStyle(color: AppColors.white, fontSize: 10),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Expandedview5() {
    return Container(
      color: AppColors.blueDark,
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(
                  left: SizeConfig.blockSizeHorizontal * 4,
                  top: SizeConfig.blockSizeHorizontal * 1.5),
              alignment: Alignment.topLeft,
              child: Text(
                'Resolution',
                style: TextStyle(color: AppColors.white, fontSize: 10),
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                  left: SizeConfig.blockSizeHorizontal * 4,
                  top: SizeConfig.blockSizeHorizontal * 1),
              alignment: Alignment.topLeft,
              child: Text(
                'Language',
                style: TextStyle(color: AppColors.white, fontSize: 10),
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                left: SizeConfig.blockSizeHorizontal * 4,
                top: SizeConfig.blockSizeHorizontal * 1,
              ),
              alignment: Alignment.topLeft,
              child: Text(
                'Analyser Data',
                style: TextStyle(color: AppColors.white, fontSize: 10),
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                left: SizeConfig.blockSizeHorizontal * 4,
                top: SizeConfig.blockSizeHorizontal * 1,
              ),
              alignment: Alignment.topLeft,
              child: Text(
                'Weighing Scale',
                style: TextStyle(color: AppColors.white, fontSize: 10),
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                left: SizeConfig.blockSizeHorizontal * 4,
                top: SizeConfig.blockSizeHorizontal * 1,
              ),
              alignment: Alignment.topLeft,
              child: Text(
                'Edit SNF formula',
                style: TextStyle(color: AppColors.white, fontSize: 10),
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                left: SizeConfig.blockSizeHorizontal * 4,
                top: SizeConfig.blockSizeHorizontal * 1,
              ),
              alignment: Alignment.topLeft,
              child: Text(
                'Format Date and Time',
                style: TextStyle(color: AppColors.white, fontSize: 10),
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                left: SizeConfig.blockSizeHorizontal * 4,
                top: SizeConfig.blockSizeHorizontal * 1,
              ),
              alignment: Alignment.topLeft,
              child: Text(
                'Edit Username',
                style: TextStyle(color: AppColors.white, fontSize: 10),
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                  left: SizeConfig.blockSizeHorizontal * 4,
                  top: SizeConfig.blockSizeHorizontal * 1,
                  bottom: SizeConfig.blockSizeHorizontal * 1),
              alignment: Alignment.topLeft,
              child: Text(
                'Edit Password',
                style: TextStyle(color: AppColors.white, fontSize: 10),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Expandedview6() {
    return Container(
      color: AppColors.blueDark,
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(
                  left: SizeConfig.blockSizeHorizontal * 4,
                  top: SizeConfig.blockSizeHorizontal * 1.5),
              alignment: Alignment.topLeft,
              child: Text(
                'Version',
                style: TextStyle(color: AppColors.white, fontSize: 10),
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                  left: SizeConfig.blockSizeHorizontal * 4,
                  top: SizeConfig.blockSizeHorizontal * 1),
              alignment: Alignment.topLeft,
              child: Text(
                'FAQ',
                style: TextStyle(color: AppColors.white, fontSize: 10),
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                left: SizeConfig.blockSizeHorizontal * 4,
                top: SizeConfig.blockSizeHorizontal * 1,
              ),
              alignment: Alignment.topLeft,
              child: Text(
                'Services',
                style: TextStyle(color: AppColors.white, fontSize: 10),
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                  left: SizeConfig.blockSizeHorizontal * 4,
                  top: SizeConfig.blockSizeHorizontal * 1,
                  bottom: SizeConfig.blockSizeHorizontal * 1),
              alignment: Alignment.topLeft,
              child: Text(
                'Helpline Number',
                style: TextStyle(color: AppColors.white, fontSize: 10),
              ),
            ),
          ],
        ),
      ),
    );
  }

  rightView(type) {
    if (type == 'home') {
      return Container(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Container(
                  padding: EdgeInsets.only(right: 20),
                  margin: EdgeInsets.only(
                      left: SizeConfig.blockSizeHorizontal * 1,
                      right: SizeConfig.blockSizeHorizontal * 1,
                      top: SizeConfig.blockSizeHorizontal * 1),
                  height: SizeConfig.blockSizeVertical * 5,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Container(
                              child: Column(children: <Widget>[
                                Container(
                                  //   width: MediaQuery.of(context).size.width/2,
                                  margin: EdgeInsets.only(top: 5, left: 10),

                                  child: Column(children: <Widget>[
                                    Container(
                                        child: new Icon(
                                      Icons.star,
                                      color: Colors.yellow,
                                    )),
                                  ]),
                                ),
                              ]),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 8, left: 10),
                              alignment: Alignment.topLeft,
                              child: Text(
                                'Reference about Loreum Ipsum , giving info',
                                style: TextStyle(
                                    color: AppColors.black, fontSize: 15),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Container(
                              child: Column(children: <Widget>[
                                Container(
                                  //   width: MediaQuery.of(context).size.width/2,
                                  margin: EdgeInsets.only(top: 5, left: 10),

                                  child: Column(children: <Widget>[
                                    Container(
                                        child: new Icon(
                                      Icons.star,
                                      color: Colors.yellow,
                                    )),
                                  ]),
                                ),
                              ]),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 8, left: 10),
                              alignment: Alignment.topLeft,
                              child: Text(
                                'Reference about Loreum Ipsum , giving info',
                                style: TextStyle(
                                    color: AppColors.black, fontSize: 15),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Container(
                              child: Column(children: <Widget>[
                                Container(
                                  //   width: MediaQuery.of(context).size.width/2,
                                  margin: EdgeInsets.only(top: 5, left: 10),

                                  child: Column(children: <Widget>[
                                    Container(
                                        child: new Icon(
                                      Icons.star,
                                      color: Colors.yellow,
                                    )),
                                  ]),
                                ),
                              ]),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 8, left: 10),
                              alignment: Alignment.topLeft,
                              child: Text(
                                'Reference about Loreum Ipsum , giving info',
                                style: TextStyle(
                                    color: AppColors.black, fontSize: 15),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Container(
                              child: Column(children: <Widget>[
                                Container(
                                  //   width: MediaQuery.of(context).size.width/2,
                                  margin: EdgeInsets.only(top: 5, left: 10),

                                  child: Column(children: <Widget>[
                                    Container(
                                        child: new Icon(
                                      Icons.star,
                                      color: Colors.yellow,
                                    )),
                                  ]),
                                ),
                              ]),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 8, left: 10),
                              alignment: Alignment.topLeft,
                              child: Text(
                                'Reference about Loreum Ipsum , giving info',
                                style: TextStyle(
                                    color: AppColors.black, fontSize: 15),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.black,
                    ),
                    borderRadius: BorderRadius.only(
                      bottomLeft:
                          Radius.circular(SizeConfig.blockSizeHorizontal * 0.3),
                      bottomRight:
                          Radius.circular(SizeConfig.blockSizeHorizontal * 0.3),
                      topLeft:
                          Radius.circular(SizeConfig.blockSizeHorizontal * 0.3),
                      topRight:
                          Radius.circular(SizeConfig.blockSizeHorizontal * 0.3),
                    ),
                  )),
              Container(
                margin:
                    EdgeInsets.only(top: SizeConfig.blockSizeHorizontal * 3),
                height: SizeConfig.blockSizeVertical * 20,
                child: Row(
                  children: <Widget>[
                    Container(
                      //   width: MediaQuery.of(context).size.width/2,
                      child: Column(children: <Widget>[
                        Container(
                            margin: EdgeInsets.only(
                                left: SizeConfig.blockSizeHorizontal * 1.2),
                            height: SizeConfig.blockSizeVertical * 15,
                            width: SizeConfig.blockSizeHorizontal * 20,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image:
                                        AssetImage("assests/image/milk1.png"),
                                    fit: BoxFit.fill))),
                      ]),
                    ),
                    Container(
                      child: Column(children: <Widget>[
                        Container(
                            margin: EdgeInsets.only(
                                left: SizeConfig.blockSizeHorizontal * 1.2),
                            height: SizeConfig.blockSizeVertical * 15,
                            width: SizeConfig.blockSizeHorizontal * 20,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image:
                                        AssetImage("assests/image/milk1.png"),
                                    fit: BoxFit.fill))),
                      ]),
                    ),
                    Container(
                      child: Column(children: <Widget>[
                        Container(
                            margin: EdgeInsets.only(
                                left: SizeConfig.blockSizeHorizontal * 1.2),
                            height: SizeConfig.blockSizeVertical * 15,
                            width: SizeConfig.blockSizeHorizontal * 20,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image:
                                        AssetImage("assests/image/milk1.png"),
                                    fit: BoxFit.fill))),
                      ]),
                    ),
                  ],
                ),
              ),
              Container(
                child: Row(
                  children: <Widget>[
                    Container(
                      width: SizeConfig.blockSizeHorizontal * 20,

                      margin: EdgeInsets.only(
                          left: SizeConfig.blockSizeVertical * 2),
                      //   width: MediaQuery.of(context).size.width/2,

                      child: Card(
                        elevation: 10,
                        child: Column(children: <Widget>[
                          Container(
                              margin: EdgeInsets.only(
                                  top: SizeConfig.blockSizeVertical * 3),
                              width: SizeConfig.blockSizeHorizontal * 15,
                              child: Container(
                                child: Row(
                                  children: <Widget>[
                                    Container(
                                        width:
                                            SizeConfig.blockSizeHorizontal * 2,
                                        height:
                                            SizeConfig.blockSizeVertical * 5,
                                        decoration: BoxDecoration(
                                            image: DecorationImage(
                                                image: AssetImage(
                                                    "assests/image/milkicon.png"),
                                                fit: BoxFit.fill))),
                                    Container(
                                      margin: EdgeInsets.only(
                                          left:
                                              SizeConfig.blockSizeVertical * 2),
                                      child: Text(
                                        'Milk Collection',
                                        style: TextStyle(
                                          color: AppColors.black,
                                          fontSize:
                                              SizeConfig.blockSizeVertical * 3,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              )),
                          Container(
                              margin: EdgeInsets.only(
                                  top: SizeConfig.blockSizeVertical * 3),
                              width: SizeConfig.blockSizeHorizontal * 15,
                              child: Container(
                                child: Row(
                                  children: <Widget>[
                                    Container(
                                        width:
                                            SizeConfig.blockSizeHorizontal * 2,
                                        height:
                                            SizeConfig.blockSizeVertical * 5,
                                        decoration: BoxDecoration(
                                            image: DecorationImage(
                                                image: AssetImage(
                                                    "assests/image/milkicon.png"),
                                                fit: BoxFit.fill))),
                                    Container(
                                      margin: EdgeInsets.only(
                                          left:
                                              SizeConfig.blockSizeVertical * 2),
                                      child: Text(
                                        'Milk Sale',
                                        style: TextStyle(
                                          color: AppColors.black,
                                          fontSize:
                                              SizeConfig.blockSizeVertical * 3,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              )),
                          Container(
                              margin: EdgeInsets.only(
                                  top: SizeConfig.blockSizeVertical * 3),
                              width: SizeConfig.blockSizeHorizontal * 15,
                              child: Container(
                                child: Row(
                                  children: <Widget>[
                                    Container(
                                        width:
                                            SizeConfig.blockSizeHorizontal * 2,
                                        height:
                                            SizeConfig.blockSizeVertical * 5,
                                        decoration: BoxDecoration(
                                            image: DecorationImage(
                                                image: AssetImage(
                                                    "assests/image/milkicon.png"),
                                                fit: BoxFit.fill))),
                                    Container(
                                      margin: EdgeInsets.only(
                                          left:
                                              SizeConfig.blockSizeVertical * 2),
                                      child: Text(
                                        'Session Report',
                                        style: TextStyle(
                                          color: AppColors.black,
                                          fontSize:
                                              SizeConfig.blockSizeVertical * 3,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              )),
                          Container(
                              margin: EdgeInsets.only(
                                  top: SizeConfig.blockSizeVertical * 3),
                              width: SizeConfig.blockSizeHorizontal * 15,
                              child: Container(
                                child: Row(
                                  children: <Widget>[
                                    Container(
                                        width:
                                            SizeConfig.blockSizeHorizontal * 2,
                                        height:
                                            SizeConfig.blockSizeVertical * 5,
                                        decoration: BoxDecoration(
                                            image: DecorationImage(
                                                image: AssetImage(
                                                    "assests/image/milkicon.png"),
                                                fit: BoxFit.fill))),
                                    Container(
                                      margin: EdgeInsets.only(
                                          left:
                                              SizeConfig.blockSizeVertical * 2),
                                      child: Text(
                                        'Item Sale',
                                        style: TextStyle(
                                          color: AppColors.black,
                                          fontSize:
                                              SizeConfig.blockSizeVertical * 3,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              )),
                          Container(
                              margin: EdgeInsets.only(
                                top: SizeConfig.blockSizeVertical * 3,
                                bottom: SizeConfig.blockSizeVertical * 3,
                              ),
                              width: SizeConfig.blockSizeHorizontal * 15,
                              child: Container(
                                child: Row(
                                  children: <Widget>[
                                    Container(
                                        width:
                                            SizeConfig.blockSizeHorizontal * 2,
                                        height:
                                            SizeConfig.blockSizeVertical * 5,
                                        decoration: BoxDecoration(
                                            image: DecorationImage(
                                                image: AssetImage(
                                                    "assests/image/milkicon.png"),
                                                fit: BoxFit.fill))),
                                    Container(
                                      margin: EdgeInsets.only(
                                          left:
                                              SizeConfig.blockSizeVertical * 2),
                                      child: Text(
                                        'Payment',
                                        style: TextStyle(
                                          color: AppColors.black,
                                          fontSize:
                                              SizeConfig.blockSizeVertical * 3,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              )),
                        ]),
                      ),
                    ),
                    Container(
                      width: SizeConfig.blockSizeHorizontal * 40,
                      height: SizeConfig.blockSizeHorizontal * 24,

                      margin: EdgeInsets.only(
                          left: SizeConfig.blockSizeVertical * 2),
                      //   width: MediaQuery.of(context).size.width/2,

                      child: Card(
                        elevation: 10,
                        child: Column(
                          children: <Widget>[
                            Container(
                              margin: EdgeInsets.only(top: 20, left: 10),
                              alignment: Alignment.topLeft,
                              child: Text(
                                'Notes',
                                style: TextStyle(
                                    color: AppColors.black, fontSize: 15),
                              ),
                            ),
                            Container(
                              height: SizeConfig.blockSizeVertical * 10,
                              margin: EdgeInsets.all(10),
                              alignment: Alignment.topLeft,
                              child: TextField(
                                maxLines: 3,
                                textAlign: TextAlign.left,
                                decoration: InputDecoration(
                                    labelText: 'type here',
                                    hoverColor: AppColors.lightBlue,
                                    border: OutlineInputBorder()),
                              ),
                            ),
                            InkWell(
                              child: Align(
                                alignment: Alignment.topLeft,
                                child: Container(
                                  width: SizeConfig.blockSizeHorizontal * 7,
                                  height: SizeConfig.blockSizeVertical * 4,
                                  margin: EdgeInsets.only(
                                      top: SizeConfig.blockSizeVertical * 1,
                                      left: SizeConfig.blockSizeVertical * 2),
                                  alignment: Alignment.center,
                                  child: Text(
                                    'ADD',
                                    style: TextStyle(
                                        color: AppColors.white, fontSize: 18),
                                  ),
                                  decoration:
                                      BoxDecoration(color: Colors.yellow),
                                ),
                              ),
                              onTap: () {
                                print("Tapped on container");
                                Scaffold.of(context).showSnackBar(new SnackBar(
                                    content: new Text("Sent Email")));
                              },
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      );
    } else if (type == 'all account') {
      return


        Container(
        width: SizeConfig.blockSizeHorizontal * 40,
        height: SizeConfig.blockSizeHorizontal * 24,

        //   width: MediaQuery.of(context).size.width/2,




        child: Card(
          color: AppColors.accountbgcolor,
          elevation: 10,

          child: Column(
            children: <Widget>[




              Container(
                margin: EdgeInsets.only(
                    top: 20, left: SizeConfig.blockSizeHorizontal * 1),
                alignment: Alignment.topLeft,
                child: Text(
                  'All Accounts',
                  style: TextStyle(
                      color: AppColors.allaccounttextcolor,
                      fontSize: SizeConfig.blockSizeVertical * 3),
                ),
              ),
              Container(
                child: Align(
                  alignment: Alignment.centerRight,
                  child: Container(
                      margin: EdgeInsets.only(
                        top: SizeConfig.blockSizeVertical * 3,
                      ),
                      width: SizeConfig.blockSizeHorizontal * 15,
                      child: Container(
                        color: AppColors.accountbgcolor,
                        height: SizeConfig.blockSizeVertical * 6,
                        child: Row(
                          children: <Widget>[
                            Container(
                              margin: EdgeInsets.only(
                                  left: SizeConfig.blockSizeVertical * 2),
                              child: Text(
                                'Export To',
                                style: TextStyle(
                                  color: AppColors.black,
                                  fontSize: SizeConfig.blockSizeVertical * 2,
                                ),
                              ),
                            ),
                            InkWell(
                              onTap: () {
                                print("Tapped on container");
                              },
                              child: Container(
                                  margin: EdgeInsets.only(
                                    left: SizeConfig.blockSizeHorizontal * 1,
                                  ),
                                  width: SizeConfig.blockSizeHorizontal * 6,
                                  height: SizeConfig.blockSizeVertical * 4,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage(
                                              "assests/image/pdf.png"),
                                          fit: BoxFit.fill))),
                            )
                          ],
                        ),
                      )),
                ),
              ),



               Container(
                  margin: EdgeInsets.only(
                      left: SizeConfig.blockSizeHorizontal * 1,
                      right: SizeConfig.blockSizeHorizontal * 1),
                  height: SizeConfig.blockSizeVertical * 5,

                  child : SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: <Widget>[
                        Container(
                          alignment: Alignment.centerLeft,
                          width: SizeConfig.blockSizeHorizontal*5,
                          margin: EdgeInsets.only(
                            left: SizeConfig.blockSizeHorizontal * 1,
                          ),

                          //   width: MediaQuery.of(context).size.width/2,
                          child: Text(
                            'SR NO.',
                            style: TextStyle(
                              color: AppColors.white,
                              fontSize: (SizeConfig.blockSizeVertical *1.3),
                            ),
                          ),
                        ),
                        Container(
                          alignment: Alignment.center,
                          width: SizeConfig.blockSizeHorizontal*5,
                          margin: EdgeInsets.only(
                            left: SizeConfig.blockSizeHorizontal * 1,
                          ),

                          //   width: MediaQuery.of(context).size.width/2,
                          child: Text(
                            'CODE',
                            style: TextStyle(
                              color: AppColors.white,
                              fontSize: (SizeConfig.blockSizeVertical *1.3),
                            ),
                          ),
                        ),
                        Container(
                          alignment: Alignment.center,
                          width: SizeConfig.blockSizeHorizontal*5,
                          margin: EdgeInsets.only(
                            left: SizeConfig.blockSizeHorizontal * 1,
                          ),

                          //   width: MediaQuery.of(context).size.width/2,
                          child: Text(
                            'NAME',
                            style: TextStyle(
                              color: AppColors.white,
                              fontSize: (SizeConfig.blockSizeVertical *1.3),
                            ),
                          ),
                        ),
                        Container(
                          alignment: Alignment.center,
                          width: SizeConfig.blockSizeHorizontal*5,
                          margin: EdgeInsets.only(
                            left: SizeConfig.blockSizeHorizontal * 1,
                          ),

                          //   width: MediaQuery.of(context).size.width/2,
                          child: Text(
                            'NOMINEE',
                            style: TextStyle(
                              color: AppColors.white,
                              fontSize: (SizeConfig.blockSizeVertical *1.3),
                            ),
                          ),
                        ),
                        Container(
                          alignment: Alignment.center,
                          width: SizeConfig.blockSizeHorizontal*5,
                          margin: EdgeInsets.only(
                            left: SizeConfig.blockSizeHorizontal * 1,
                          ),

                          //   width: MediaQuery.of(context).size.width/2,
                          child: Text(
                            'CITY',
                            style: TextStyle(
                              color: AppColors.white,
                              fontSize: (SizeConfig.blockSizeVertical *1.3),
                            ),
                          ),
                        ),
                        Container(
                          alignment: Alignment.center,
                          width: SizeConfig.blockSizeHorizontal*5,
                          margin: EdgeInsets.only(
                            left: SizeConfig.blockSizeHorizontal * 1,
                          ),

                          //   width: MediaQuery.of(context).size.width/2,
                          child: Text(
                            'ADDRESS',
                            style: TextStyle(
                              color: AppColors.white,
                              fontSize: (SizeConfig.blockSizeVertical *1.3),
                            ),
                          ),
                        ),
                        Container(
                          alignment: Alignment.center,
                          width: SizeConfig.blockSizeHorizontal*5,
                          margin: EdgeInsets.only(
                            left: SizeConfig.blockSizeHorizontal * 1,
                          ),

                          //   width: MediaQuery.of(context).size.width/2,
                          child: Text(
                            'PHONE NO.',
                            style: TextStyle(
                              color: AppColors.white,
                              fontSize: (SizeConfig.blockSizeVertical *1.3),
                            ),
                          ),
                        ),
                        Container(
                          alignment: Alignment.center,
                          width: SizeConfig.blockSizeHorizontal*5,
                          margin: EdgeInsets.only(
                            left: SizeConfig.blockSizeHorizontal * 1,
                          ),

                          //   width: MediaQuery.of(context).size.width/2,
                          child: Text(
                            'MOBILE',
                            style: TextStyle(
                              color: AppColors.white,
                              fontSize: (SizeConfig.blockSizeVertical *1.3),
                            ),
                          ),
                        ),
                        Container(
                          alignment: Alignment.center,
                          width: SizeConfig.blockSizeHorizontal*5,
                          margin: EdgeInsets.only(
                            left: SizeConfig.blockSizeHorizontal * 1,
                          ),

                          //   width: MediaQuery.of(context).size.width/2,
                          child: Text(
                            'UPI/GST',
                            style: TextStyle(
                              color: AppColors.white,
                              fontSize: (SizeConfig.blockSizeVertical *1.3),
                            ),
                          ),
                        ),
                        Container(
                          alignment: Alignment.center,
                          width: SizeConfig.blockSizeHorizontal*5,
                          margin: EdgeInsets.only(
                            left: SizeConfig.blockSizeHorizontal * 1,
                          ),

                          //   width: MediaQuery.of(context).size.width/2,
                          child: Text(
                            'EMAIL',
                            style: TextStyle(
                              color: AppColors.white,
                              fontSize: (SizeConfig.blockSizeVertical *1.3),
                            ),
                          ),
                        ),
                        Container(
                          alignment: Alignment.center,
                          width: SizeConfig.blockSizeHorizontal*5,
                          margin: EdgeInsets.only(
                            left: SizeConfig.blockSizeHorizontal * 1,
                          ),

                          //   width: MediaQuery.of(context).size.width/2,
                          child: Text(
                            'PAN',
                            style: TextStyle(
                              color: AppColors.white,
                              fontSize: (SizeConfig.blockSizeVertical *1.3),
                            ),
                          ),
                        ),
                        Container(
                          alignment: Alignment.center,
                          width: SizeConfig.blockSizeHorizontal*5,
                          margin: EdgeInsets.only(
                            left: SizeConfig.blockSizeHorizontal * 1,
                          ),

                          //   width: MediaQuery.of(context).size.width/2,
                          child: Text(
                            'AADHAR',
                            style: TextStyle(
                              color: AppColors.white,
                              fontSize: (SizeConfig.blockSizeVertical *1.3),
                            ),
                          ),
                        ),
                        Container(
                          alignment: Alignment.center,
                          width: SizeConfig.blockSizeHorizontal*5,  margin: EdgeInsets.only(
                            left: SizeConfig.blockSizeHorizontal * 1,
                          ),

                          //   width: MediaQuery.of(context).size.width/2,
                          child: Text(
                            'BANK BRANCH',
                            style: TextStyle(
                              color: AppColors.white,
                              fontSize: (SizeConfig.blockSizeVertical *1.3),
                            ),
                          ),
                        ),
                        Container(
                          alignment: Alignment.center,
                          width: SizeConfig.blockSizeHorizontal*5,

                          margin: EdgeInsets.only(
                            left: SizeConfig.blockSizeHorizontal * 1,
                          ),

                          //   width: MediaQuery.of(context).size.width/2,
                          child: Text(
                            'ACCOUNT NO.',
                            style: TextStyle(
                              color: AppColors.white,
                              fontSize: (SizeConfig.blockSizeVertical *1.3),
                            ),
                          ),
                        ),
                        Container(
                          alignment: Alignment.center,
                          width: SizeConfig.blockSizeHorizontal*5,
                          margin: EdgeInsets.only(
                            left: SizeConfig.blockSizeHorizontal * 1,
                          ),

                          //   width: MediaQuery.of(context).size.width/2,
                          child: Text(
                            'IFSC',
                            style: TextStyle(
                              color: AppColors.white,
                              fontSize: (SizeConfig.blockSizeVertical *1.3),
                            ),
                          ),
                        ),
                        Container(
                          width: SizeConfig.blockSizeHorizontal*5,
                          margin: EdgeInsets.only(
                            left: SizeConfig.blockSizeHorizontal * 2,
                          ),

                          //   width: MediaQuery.of(context).size.width/2,
                          child: Text(
                            'ACTION',
                            style: TextStyle(
                              color: AppColors.white,
                              fontSize: (SizeConfig.blockSizeVertical *1.3),
                            ),
                          ),
                        ),












                      ],
                    ),
                    ),
                   decoration: BoxDecoration(
                     color: AppColors.allaccountbgcolor,
                     borderRadius: BorderRadius.only(
                       bottomLeft:
                       Radius.circular(SizeConfig.blockSizeHorizontal * 0.3),
                       bottomRight:
                       Radius.circular(SizeConfig.blockSizeHorizontal * 0.3),
                       topLeft:
                       Radius.circular(SizeConfig.blockSizeHorizontal * 0.3),
                       topRight:
                       Radius.circular(SizeConfig.blockSizeHorizontal * 0.3),
                     ),
                   )
               ),





////////////////////////////////// Scroll add



              Container(

                 child: Container(
                   height: SizeConfig.blockSizeHorizontal *60,
                   child: ListView.builder(
                       itemCount: 5,
                       itemBuilder: (BuildContext context, int index) {
                         return Row(
                           mainAxisAlignment: MainAxisAlignment.start,
                           children: [

                             Radio(
                               activeColor: AppColors.lightBlue,
                               value: index,
                               groupValue: select,
                               onChanged: (value) {
                                 setState(() {
                                   valueRadio = index;
                                   print(valueRadio);
                                   select = value;
                                 });
                               },
                             ),






                             Container(
                               alignment: Alignment.center,
                               width: SizeConfig.blockSizeHorizontal*15,
                               child: Text('hii',
                                 maxLines: 2,
                                 style: TextStyle(
                                     color: AppColors.black,
                                     fontFamily: 'Poppins-Normal',
                                     fontWeight: FontWeight.normal,
                                     fontSize: 14,
                                     letterSpacing: 1.0),
                               ),
                             ),


                           ],
                         );
                       }),
                 ),

                  margin: EdgeInsets.only(
                      left: SizeConfig.blockSizeHorizontal * 1,
                      right: SizeConfig.blockSizeHorizontal * 1,),
                  height: SizeConfig.blockSizeVertical * 50,

                  decoration: BoxDecoration(
                    color: AppColors.white,
                    borderRadius: BorderRadius.only(
                      bottomLeft:
                      Radius.circular(SizeConfig.blockSizeHorizontal * 0.3),
                      bottomRight:
                      Radius.circular(SizeConfig.blockSizeHorizontal * 0.3),
                      topLeft:
                      Radius.circular(SizeConfig.blockSizeHorizontal * 0.3),
                      topRight:
                      Radius.circular(SizeConfig.blockSizeHorizontal * 0.3),
                    ),
                  )),



            ],
          ),
        ),
      );
    }
  }
}
