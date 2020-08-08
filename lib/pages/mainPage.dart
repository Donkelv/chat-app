import 'package:flutter/material.dart';
import 'package:delayed_display/delayed_display.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Stack(
        children: [
          DelayedDisplay(
            delay: Duration(seconds: 3),
            slidingCurve: Curves.easeInCirc,
            child: Image.asset(
              "assets/1862.jpg",
              fit: BoxFit.cover,
              height: height,
              width: width,
            ),
          ),
          Positioned(
            bottom: 35.0,
            left: 20.0,
            right: 20.0,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                DelayedDisplay(
                  delay: Duration(seconds: 3),
                  slidingCurve: Curves.easeIn,
                  child: Text(
                    "Chat App",
                    style: TextStyle(
                        color: Color(0xFFE5352A),
                        fontSize: 20.0,
                        fontWeight: FontWeight.w600),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    top: 20.0,
                  ),
                  child: DelayedDisplay(
                    delay: Duration(seconds: 4),
                    slidingCurve: Curves.easeIn,
                    child: Text(
                      "Instantly Chat With Friends",
                      textAlign: TextAlign.start,
                      softWrap: true,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30.0,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    top: 10.0,
                  ),
                  child: DelayedDisplay(
                    delay: Duration(seconds: 4),
                    slidingCurve: Curves.easeIn,
                    child: Text(
                      "Make New Friends on Here!",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12.0,
                        fontWeight: FontWeight.w100,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    top: 20.0,
                  ),
                  child: DelayedDisplay(
                    delay: Duration(seconds: 5),
                    slidingCurve: Curves.easeIn,
                    child: Material(
                      color: Colors.transparent,
                      borderRadius: BorderRadius.circular(25.0),
                      child: Ink(
                        width: width,
                        height: 50.0,
                        decoration: BoxDecoration(
                            color: Color(0xFFE5352A),
                            borderRadius: BorderRadius.circular(25.0)),
                        child: InkWell(
                          onTap: () {
                            Navigator.pushNamed(context, '/createAccount');
                          },
                          borderRadius: BorderRadius.circular(25.0),
                          child: Center(
                            child: Text(
                              "Create New Account",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 15.0,
                                fontWeight: FontWeight.w300,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    top: 20.0,
                  ),
                  child: DelayedDisplay(
                    delay: Duration(seconds: 6),
                    slidingCurve: Curves.easeIn,
                    child: Material(
                      color: Colors.transparent,
                      borderRadius: BorderRadius.circular(25.0),
                      child: Ink(
                        height: 50.0,
                        width: width,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(25.0)),
                        child: InkWell(
                          borderRadius: BorderRadius.circular(25.0),
                          onTap: () {
                            Navigator.pushNamed(context, '/loginScreen');
                          },
                          child: Center(
                            child: Text(
                              "Login With Email",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 15.0,
                                fontWeight: FontWeight.w300,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    top: 20.0,
                  ),
                  child: Align(
                    alignment: Alignment.center,
                    child: DelayedDisplay(
                      delay: Duration(seconds: 6),
                      slidingCurve: Curves.easeInCirc,
                      child: Text(
                        "Terms and Condition",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 12.0,
                          fontWeight: FontWeight.w100,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
