import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:stem_guide/ui/widgets/login_appbar.dart';

import 'signupScreen.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  FocusNode myFocusNode;

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  String _email;
  String _password;

  @override
  void initState() {
    super.initState();
    myFocusNode = FocusNode();
  }

  @override
  void dispose() {
    // Clean up the focus node when the Form is disposed
    myFocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomPadding: false,
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            LoginAppBar(),
            Container(
              height: MediaQuery.of(context).size.height * 0.65,
              width: MediaQuery.of(context).size.width,
              child: Container(
                margin: EdgeInsets.fromLTRB(20, 12, 20, 10),
                child: Form(
                  key: _formKey,
                  autovalidate: _autoValidate,
                  child: Column(
                    children: <Widget>[
                      TextFormField(
                        validator: validateEmail,
                        onSaved: (String val) {
                          _email = val;
                        },
                        keyboardType: TextInputType.emailAddress,
                        style: TextStyle(fontSize: 16, color: Colors.black),
                        textInputAction: TextInputAction.next,
                        decoration: InputDecoration(
                          labelText: "Email",
                          contentPadding: new EdgeInsets.symmetric(
                              vertical:
                              MediaQuery.of(context).size.height * 0.022,
                              horizontal: 15.0),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(25)),
                          ),
                        ),
                        onFieldSubmitted: (String value) {
                          FocusScope.of(context).requestFocus(myFocusNode);
                        },
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      TextFormField(
                        validator: validatePassword,
                        onSaved: (String val) {
                          _password = val;
                        },
                        focusNode: myFocusNode,
                        obscureText: true,
                        keyboardType: TextInputType.text,
                        style: TextStyle(fontSize: 16, color: Colors.black),
                        textInputAction: TextInputAction.done,
                        decoration: InputDecoration(
                          labelText: "Password",
                          contentPadding: new EdgeInsets.symmetric(
                              vertical:
                              MediaQuery.of(context).size.height * 0.022,
                              horizontal: 15.0),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(25)),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 7,
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 20),
                        child: Row(
                          children: <Widget>[
                            Checkbox(
                              activeColor: Colors.deepPurpleAccent,
                              value: _value1,
                              onChanged: _value1Changed,
                            ),
                            Text(
                              "Remember Me",
                              style: TextStyle(
                                  color: Colors.deepPurpleAccent,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 7,
                      ),
                      Container(
                        child: GestureDetector(
                            onTap: () {
                              print("pressed");
                              _validateInputs();
                            },
                            child: Container(
                              height: MediaQuery.of(context).size.height * 0.065,
                              decoration: BoxDecoration(
                                  color: Colors.deepPurpleAccent,
                                  borderRadius:
                                  BorderRadius.all(Radius.circular(25))),
                              child: Center(
                                child: Text(
                                  "SIGN IN",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 16),
                                ),
                              ),
                            )),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text(
                              "Connect with",
                              style: TextStyle(
                                  fontSize: 14, fontWeight: FontWeight.bold),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                InkWell(
                                  onTap: (){print("Facebook");},
                                  child: Container(
                                    margin: EdgeInsets.only(left: 7),
                                    height:
                                    MediaQuery.of(context).size.height * 0.065,
                                    width:
                                    MediaQuery.of(context).size.height * 0.065,
                                    decoration: BoxDecoration(
                                        color: Colors.blue[900],
                                        shape: BoxShape.circle),
                                    child: Center(
                                      child: Image.asset(
                                        "assets/facebook.png",
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ),
                                InkWell(
                                  onTap: (){print("Google");},
                                  child: Container(
                                    margin: EdgeInsets.only(left: 7),
                                    height:
                                    MediaQuery.of(context).size.height * 0.065,
                                    width:
                                    MediaQuery.of(context).size.height * 0.065,
                                    decoration: BoxDecoration(
                                        color: Colors.red, shape: BoxShape.circle),
                                    child: Image.asset(
                                      "assets/google.png",
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                                InkWell(
                                  onTap: (){print("Twitter");},
                                  child: Container(
                                    margin: EdgeInsets.only(left: 7),
                                    height:
                                    MediaQuery.of(context).size.height * 0.065,
                                    width:
                                    MediaQuery.of(context).size.height * 0.065,
                                    decoration: BoxDecoration(
                                        color: Colors.lightBlue[400],
                                        shape: BoxShape.circle),
                                    child: Image.asset(
                                      "assets/twitter.png",
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                                InkWell (
                                    onTap: (){print("Linkedin");},
                                    child: Container(
                                      margin: EdgeInsets.only(left: 7),
                                      height:
                                      MediaQuery.of(context).size.height * 0.065,
                                      width:
                                      MediaQuery.of(context).size.height * 0.065,
                                      decoration: BoxDecoration(
                                          color: Colors.lightBlue[800],
                                          shape: BoxShape.circle),
                                      child: Image.asset(
                                        "assets/linkedin.png",
                                        color: Colors.white,
                                      ),
                                    )
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                      Container(
                          margin: EdgeInsets.only(top: 10, bottom: 15),
                          height: MediaQuery.of(context).size.height * 0.05,
                          child: GestureDetector(
                            onTap: () {
                              print("signup");
                              Navigator.pushNamed(context, '/signup');
                            },
                            child: Center(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Text(
                                    "New User?",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.w600,
                                        fontSize: 16),
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    "Signup",
                                    style: TextStyle(
                                        color: Colors.deepPurpleAccent,
                                        fontWeight: FontWeight.w600,
                                        fontSize: 16),
                                  ),
                                ],
                              ),
                            ),
                          ))
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

  bool _value1 = false;
  bool _autoValidate = false;

  void _value1Changed(bool value) => setState(() => _value1 = value);

  void _validateInputs() {
    if (_formKey.currentState.validate()) {
//    If all data are correct then save data to out variables
      _formKey.currentState.save();
    } else {
//    If all data are not valid then start auto validation.
      setState(() {
        _autoValidate = true;
      });
    }
  }

  String validateEmail(String value) {
    Pattern pattern =
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
    RegExp regex = new RegExp(pattern);
    if (!regex.hasMatch(value))
      return 'Enter Valid Email';
    else
      return null;
  }

  String validatePassword(String value) {
    if (value.length < 6)
      return 'Password must be atleast 6 digits';
    else
      return null;
  }
}


