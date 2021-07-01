import 'dart:html';
import 'dart:ui';

import 'package:dairy_newdeskapp/utils/AppColors.dart';
import 'package:dairy_newdeskapp/utils/SizeConfig.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'home/HomeMainScreen.dart';

class SignUpScreen extends StatefulWidget {
  @override
  SignUpState createState() => SignUpState();
// TODO: implement createState

/* @override
 */
}

class SignUpState extends State<SignUpScreen> {
  var value = false;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    bool _isChecked = false;
    return Scaffold(
      body: Container(
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(color: AppColors.white),
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                        //   width: MediaQuery.of(context).size.width/2,
                        width: SizeConfig.blockSizeHorizontal * 45,
                        color: AppColors.white,
                        child: Column(children: <Widget>[
                          Container(
                            margin: EdgeInsets.only(top: 10, left: 10),
                            alignment: Alignment.topLeft,
                            child: Text(
                              'First Name',
                              style: TextStyle(
                                  color: AppColors.black, fontSize: 15),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.all(10),
                            alignment: Alignment.topLeft,
                            child: TextField(
                              decoration: InputDecoration(
                                  labelText: '',
                                  hoverColor: AppColors.lightBlue,
                                  border: OutlineInputBorder()),
                            ),
                          ),
                        ]),
                      ),
                      Container(
                        //   width: MediaQuery.of(context).size.width/2,
                        width: SizeConfig.blockSizeHorizontal * 45,
                        color: AppColors.white,
                        child: Column(children: <Widget>[
                          Container(
                            margin: EdgeInsets.only(top: 10, left: 10),
                            alignment: Alignment.topLeft,
                            child: Text(
                              'Last Name  ',
                              style: TextStyle(
                                  color: AppColors.black, fontSize: 15),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.all(10),
                            alignment: Alignment.topLeft,
                            child: TextField(
                              decoration: InputDecoration(
                                  labelText: '',
                                  hoverColor: AppColors.lightBlue,
                                  border: OutlineInputBorder()),
                            ),
                          ),
                        ]),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 10, left: 10),
                  alignment: Alignment.topLeft,
                  child: Text(
                    'Email',
                    style: TextStyle(color: AppColors.black, fontSize: 15),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(10),
                  alignment: Alignment.topLeft,
                  child: TextField(
                    decoration: InputDecoration(
                        labelText: '',
                        hoverColor: AppColors.lightBlue,
                        border: OutlineInputBorder()),
                  ),
                ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                        //   width: MediaQuery.of(context).size.width/2,
                        width: SizeConfig.blockSizeHorizontal * 45,
                        color: AppColors.white,
                        child: Column(children: <Widget>[
                          Container(
                            margin: EdgeInsets.only(top: 10, left: 10),
                            alignment: Alignment.topLeft,
                            child: Text(
                              'Phone Number',
                              style: TextStyle(
                                  color: AppColors.black, fontSize: 15),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.all(10),
                            alignment: Alignment.topLeft,
                            child: TextField(
                              decoration: InputDecoration(
                                  labelText: '',
                                  hoverColor: AppColors.lightBlue,
                                  border: OutlineInputBorder()),
                            ),
                          ),
                        ]),
                      ),
                      Container(
                        //   width: MediaQuery.of(context).size.width/2,
                        width: SizeConfig.blockSizeHorizontal * 45,
                        color: AppColors.white,
                        child: Column(children: <Widget>[
                          Container(
                            margin: EdgeInsets.only(top: 10, left: 10),
                            alignment: Alignment.topLeft,
                            child: Text(
                              'Reference Code',
                              style: TextStyle(
                                  color: AppColors.black, fontSize: 15),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.all(10),
                            alignment: Alignment.topLeft,
                            child: TextField(
                              decoration: InputDecoration(
                                  labelText: '',
                                  hoverColor: AppColors.lightBlue,
                                  border: OutlineInputBorder()),
                            ),
                          ),
                        ]),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 10, left: 10),
                  alignment: Alignment.topLeft,
                  child: Text(
                    'Password',
                    style: TextStyle(color: AppColors.black, fontSize: 15),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(10),
                  alignment: Alignment.topLeft,
                  child: TextField(
                    decoration: InputDecoration(
                        labelText: '6+ characters',
                        hoverColor: AppColors.lightBlue,
                        border: OutlineInputBorder()),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 10, left: 10),
                  alignment: Alignment.topLeft,
                  child: Text(
                    'Confirm Password',
                    style: TextStyle(color: AppColors.black, fontSize: 15),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(10),
                  alignment: Alignment.topLeft,
                  child: TextField(
                    decoration: InputDecoration(
                        labelText: '6+ characters',
                        hoverColor: AppColors.lightBlue,
                        border: OutlineInputBorder()),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 10),
                  alignment: Alignment.topLeft,
                  child: CheckboxListTile(
                    value: this.value,
                    controlAffinity: ListTileControlAffinity.leading,
                    title: Text(
                        'Creating an account means you’re okay with our Terms of Service, Privacy Policy, and our default Notification Settings.'),
                    onChanged: (bool value) {
                      setState(() {
                        this.value = value;
                      });
                    },
                  ),
                ),
                InkWell(
                  child: Container(
                    width: SizeConfig.blockSizeHorizontal * 25,
                    height: SizeConfig.blockSizeVertical * 7,
                    margin: EdgeInsets.only(top: 10),
                    alignment: Alignment.center,
                    child: Text(
                      'Create Account',
                      style: TextStyle(color: AppColors.white, fontSize: 18),
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      gradient: LinearGradient(
                        colors: <Color>[
                          Color(0xFF0D47A1),
                          Color(0xFF1976D2),
                          Color(0xFF42A5F5),
                        ],
                      ),
                    ),
                  ),
                  onTap: () {
                    print("Tapped on container");
                    Scaffold.of(context).showSnackBar(new SnackBar(
                        content: new Text("Login")));
                    nextscreen();
                  },


                )
              ],
            ),
          )),
    );
  }
  void nextscreen() {
    Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(builder: (context) => HomeMainScreen()),
            (route) => false);
  }
}
