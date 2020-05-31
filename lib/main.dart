import 'dart:async';

import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  String page = "login";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: (page == "login")? Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Stack(
          fit: StackFit.passthrough,
          children: [
             
            SizedBox(height: 100),
            SafeArea(
                          child: Align(
                alignment: Alignment.topCenter,
                            child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Material(
                                      color: Colors.transparent,        child: GestureDetector(
                                                         onTap: (){
                                                           setState(() {
                                                             page = "signup";
                                                           });
                                                           },                                             child: Text("Sign up",
                        style: TextStyle(fontSize: 20, color: Colors.grey[600])),
                                              ),
                  ),
                ),
              ),
            ),
            LoginPage(),
          ]
        ),
      ): Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Stack(
          fit: StackFit.passthrough,
          children: [
            SignUp(),
            SafeArea(
                          child: Align(
                alignment: Alignment.bottomCenter,
                            child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Material(
                                      color: Colors.transparent,        child: GestureDetector(
                                                         onTap: (){
                                                           setState(() {
                                                             page = "login";
                                                           });
                                                           },                                             child: Text("Log In",
                        style: TextStyle(fontSize: 20, color: Colors.grey[600])),
                                              ),
                  ),
                ),
              ),
            ),
          ]
        ),
      )
      
    );
  }
}

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  var _alignment = Alignment.topCenter;

  double topRight = 0;

  double topLeft = 0;

  double bottomRight = 500;

  double bottomLeft = 500;

  @override
  void initState() {
super.initState();
setState(() {
  _alignment = Alignment.bottomCenter;
  
});
Timer(const Duration(milliseconds: 5), () {
      setState(() {
        topLeft = 500;
  topRight = 500;
  bottomLeft = 0;
  bottomRight = 0;
      });
    });

  }

  @override
  Widget build(BuildContext context) {
    return Stack(
        fit: StackFit.passthrough,
        children: [
           AnimatedContainer(
             duration: Duration(milliseconds: 10),
             
             alignment: _alignment,
             child: AnimatedContainer(
               duration: Duration(milliseconds: 10),
                 height: MediaQuery.of(context).size.height * 4/5,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      color: Colors.pink[100],
                      image: DecorationImage(image: NetworkImage("https://img4.goodfon.com/wallpaper/nbig/0/4d/macaroon-colorful-makaruny-sweet-macaron-french-sladkoe-d-23.jpg"), fit: BoxFit.fill),
                      
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(bottomLeft),
                        bottomRight: Radius.circular(bottomRight),
                          topRight: Radius.circular(topRight),
                          topLeft: Radius.circular(topLeft))),
                  
                ),
           ),
          Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          SizedBox(height: 100),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(),
          ),
          
          Expanded(
            child: Stack(fit: StackFit.passthrough,
          children: <Widget>[
           
            Column(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(50.0),
                
                    child: Hero(
                                              tag: "login",
                                              child: Material(
                                                color: Colors.transparent,
                                                child: Text(
                            "Log In",
                            style:
                                TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Hero(
                                     tag: "username",         child: Container(
                          height: 50,
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(Radius.circular(50)),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Material(
                                        color: Colors.transparent,                  child: Text(
                                "User name",
                                textAlign: TextAlign.left,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Hero(
                                       tag: "password",       child: Container(
                          height: 50,
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(Radius.circular(50)),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                Material(
                                    color: Colors.transparent,                      child: Text(
                                "Password",
                                textAlign: TextAlign.left,
                              ),
                            ),
                            Icon(Icons.remove_red_eye, color: Colors.grey[400],)
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Hero
                
                  (
                                  tag: "fp",            child: Material(
                                    color: Colors.transparent,
                                                child: Text(
                            "Forgot password?",
                            textAlign: TextAlign.left,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Hero(
                                    tag: "button",          child: Container(
                          height: 50,
                          decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.all(Radius.circular(50)),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(
                                right: 30, top: 15.0, bottom: 15, left: 30),
                          
                          child: Material(
                                                  color: Colors.transparent,        child: Text(
                                "Log In",
                                style: TextStyle(
                                    color: Colors.white, fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
          ],)
          )
        ],
      ),
        ]
      
    );
  }
}

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  var _alignment = Alignment.bottomCenter;

  double topRight = 500;

  double topLeft = 500;

  double bottomRight = 0;

  double bottomLeft = 0;

  

  @override
  void initState() {
super.initState();
setState(() {
  _alignment = Alignment.topCenter;
  
});
Timer(const Duration(milliseconds: 5), () {
      setState(() {
        topLeft = 0;
  topRight = 0;
  bottomLeft = 500;
  bottomRight = 500;
      });
    });



  }

  @override
  Widget build(BuildContext context) {
    return Stack(
        fit: StackFit.passthrough,
        children: [
          AnimatedContainer(
            duration: Duration(milliseconds: 10),
            alignment: _alignment,
            child: AnimatedContainer(
                duration: Duration(milliseconds: 10),
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 4/5,
                  decoration: BoxDecoration(
                      color: Colors.pink[100],
                      image: DecorationImage(image: NetworkImage("https://img4.goodfon.com/wallpaper/nbig/0/4d/macaroon-colorful-makaruny-sweet-macaron-french-sladkoe-d-23.jpg"), fit: BoxFit.fill),
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(topRight),
                        topLeft: Radius.circular(topLeft),
                          bottomRight: Radius.circular(bottomRight),
                          bottomLeft: Radius.circular(bottomLeft))),
                  
                ),
          ),
          Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          
          
          Expanded(
            child: Stack(fit: StackFit.passthrough,
          children: <Widget>[
            
            Column(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(50.0),
                
                    child: Hero(
                                              tag: "signup",
                                              child: Material(
                                                color: Colors.transparent,
                                                child: Text(
                            "Sign up",
                            style:
                                TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Hero(
                                     tag: "username",         child: Container(
                          height: 50,
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(Radius.circular(50)),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Material(
                                   color: Colors.transparent,                       child: Text(
                                "User name",
                                textAlign: TextAlign.left,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(
                          height: 50,
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(Radius.circular(50)),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Text(
                                "Email Id",
                                textAlign: TextAlign.left,
                              ),
                          ),
                        ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Hero(
                            tag: "password",                  child: Container(
                          height: 50,
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(Radius.circular(50)),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Material(
                                    color: Colors.transparent,                      child: Text(
                                "Password",
                                textAlign: TextAlign.left,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(
                          height: 50,
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(Radius.circular(50)),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Text(
                                "Confirm password",
                                textAlign: TextAlign.left,
                              ),
                          ),
                        ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Container(
                        width: double.infinity,
                        child: Hero
                
                  (
                                    tag: "fp",            child: Material(
                                      color: Colors.transparent,
                                                                        child: Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: <Widget>[
                                        SizedBox(width: 50),
                                        Icon(Icons.check_box_outline_blank),
                                        SizedBox(width: 5),
                                        Expanded(
                                                                                  child: Material(
                                          color: Colors.transparent,
                                                      child: Text(
                              "I agree to the Terms & conditions",
                              textAlign: TextAlign.left,
                            ),
                          ),
                                        ),
                                      ],),
                                    )
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Hero(
                                 tag: "button",             child: Container(
                          height: 50,
                          decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.all(Radius.circular(50)),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(
                                right: 30, top: 15.0, bottom: 15, left: 30),
                            child: Material(
                                             color: Colors.transparent,             child: Text(
                                "Sign up",
                                style: TextStyle(
                                    color: Colors.white, fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
          ],)
          ),
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(),
          ),
          
        ],
      ),
        ]
      
    );
  }
}
