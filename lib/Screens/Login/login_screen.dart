import 'dart:ui';

import 'package:animation_app_finished/Screens/Login/widgets/form_container.dart';
import 'package:animation_app_finished/Screens/Login/widgets/sign_up_button.dart';
import 'package:animation_app_finished/Screens/Login/widgets/stagger_animation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart'show timeDilation;

import 'Home/home_screen].dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> with SingleTickerProviderStateMixin{

  AnimationController _animationController;


  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(vsync: this,duration: Duration(seconds: 2));

    _animationController.addStatusListener((status){
      if(status ==AnimationStatus.completed){
        Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>HomeScreen()));
      }
    });
  }


  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    timeDilation = 1;
    return Stack(children: <Widget>[
      Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("images/back.jpg"), fit: BoxFit.cover)),
          child: new BackdropFilter(
            filter: new ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
            child: new Container(
              decoration:
                  new BoxDecoration(color: Colors.white.withOpacity(0.0)),
            ),
          )),
      Scaffold(
        backgroundColor: Colors.transparent,
        body: Container(
          child: ListView(
            physics: PageScrollPhysics(),
            padding: EdgeInsets.zero,
            children: <Widget>[
              Stack(
                alignment: Alignment.bottomCenter,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(top: 70, bottom: 32),
                        child: Image.asset(
                          "images/tickicon.png",
                          width: 150,
                          height: 150,
                          fit: BoxFit.contain,
                        ),
                      ),
                      FormContainer(),
                      SignUpButton()
                    ],
                  ),
                  StaggerAnimation(
                      controller:_animationController.view
                  )
                ],
              ),
            ],
          ),
        ),
      )
    ]);
  }
}
