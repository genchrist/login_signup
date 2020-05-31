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
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          SizedBox(height: 100),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Hero(
              tag: "signup",
                          child: Material(
                                              color: Colors.transparent,        child: GestureDetector(
                                                                 onTap: (){
                                                                   Navigator.push(context, PageTransition(type: PageTransitionType.fade, child: SignUp()));
                                                                 },                                             child: Text("Sign up",
                  style: TextStyle(fontSize: 20, color: Colors.grey[600])),
                                                      ),
                          ),
            ),
          ),
          
          Expanded(
            child: Stack(fit: StackFit.passthrough,
          children: <Widget>[
            Hero(
              tag: "bg",
                          child: Container(
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    color: Colors.pink[100],
                    image: DecorationImage(image: NetworkImage("https://img4.goodfon.com/wallpaper/nbig/0/4d/macaroon-colorful-makaruny-sweet-macaron-french-sladkoe-d-23.jpg"), fit: BoxFit.fill),
                    
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(500),
                        topLeft: Radius.circular(500))),
                
              ),
            ),
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
    );
  }
}

class SignUp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          
          
          Expanded(
            child: Stack(fit: StackFit.passthrough,
          children: <Widget>[
            Hero(
              tag: "bg", 
                          child: Container(
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    color: Colors.pink[100],
                    image: DecorationImage(image: NetworkImage("https://img4.goodfon.com/wallpaper/nbig/0/4d/macaroon-colorful-makaruny-sweet-macaron-french-sladkoe-d-23.jpg"), fit: BoxFit.fill),
                    borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(500),
                        bottomLeft: Radius.circular(500))),
                
              ),
            ),
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
            child: Hero(
              tag: "login",
                          child: Material(
                                          color: Colors.transparent,            child: GestureDetector(
                                                        onTap: (){
                                                          Navigator.pop(context);
                                                        },
                                                                                                              child: Text("Log In",
                  style: TextStyle(fontSize: 20, color: Colors.grey[600])),
                                                      ),
                          ),
            ),
          ),
        ],
      ),
    );
  }
}
