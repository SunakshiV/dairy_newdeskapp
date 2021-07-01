import 'dart:math';

import 'package:dairy_newdeskapp/utils/AppColors.dart';
import 'package:dairy_newdeskapp/utils/SizeConfig.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../TabBarDemo.dart';

class HomeMainScreen extends StatefulWidget {
  @override
  HomeScreenMainState createState() => HomeScreenMainState();
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
  Color color = Color((Random().nextDouble() * 0xFFFFFF).toInt()).withOpacity(1.0);

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
                          onTap: (){
                            setState(() {
                              color = Color((Random().nextDouble() * 0xFFFFFF).toInt()).withOpacity(1.0);
                              pressAttention = !pressAttention;
                            });
                          },
                          child:  Container(
                            child: Row(
                              children: <Widget>[
                                Container(
                                    margin: EdgeInsets.only(
                                        left: SizeConfig.blockSizeHorizontal * 2,
                                        top: SizeConfig.blockSizeHorizontal * 2),
                                    height: SizeConfig.blockSizeVertical * 2.6,
                                    width: SizeConfig.blockSizeHorizontal * 1.5,
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image: AssetImage(
                                                "assests/image/homeicon.png"),
                                            fit: BoxFit.fill))),


                                   Container(
                                    color: pressAttention ? Colors.grey : Colors.blue,
                                    margin: EdgeInsets.only(
                                        left: SizeConfig.blockSizeHorizontal * 1,
                                        top: SizeConfig.blockSizeHorizontal * 2),

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
                  width: SizeConfig.blockSizeHorizontal * 20,
                  height: SizeConfig.blockSizeVertical * 80,
                  color: AppColors.white,
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
              child: Text(
                'All Accounts',
                style: TextStyle(color: AppColors.white, fontSize: 10),
              ),
            ),
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
}
