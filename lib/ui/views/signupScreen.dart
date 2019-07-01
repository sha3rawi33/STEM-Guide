import 'package:flutter/material.dart';
import 'package:stem_guide/ui/widgets/signup_appbar.dart';

class SignupScreen extends StatefulWidget {
  @override
  _SignupScreenState createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  FocusNode focusNode1;
  FocusNode focusNode2;
  FocusNode focusNode3;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  String _email;
  String _password;

  @override
  void initState() {
    super.initState();

    focusNode1 = FocusNode();
    focusNode2 = FocusNode();
    focusNode3 = FocusNode();
  }

  @override
  void dispose() {
    // Clean up the focus node when the Form is disposed
    focusNode1.dispose();
    focusNode2.dispose();
    focusNode3.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomPadding: false,
      body: Column(
        children: <Widget>[
          SignupAppbar(),
          Container(
            width: MediaQuery.of(context).size.width,
            height: (MediaQuery.of(context).size.height * 0.80) - 22,
            margin: EdgeInsets.fromLTRB(20, 12, 20, 10),
            child: Form(
              key: _formKey,
              autovalidate: _autoValidate,
              child: Column(
                children: <Widget>[
                  TextFormField(
                    validator: (value) {
                      if (value.isEmpty) {
                        return 'Enter name';
                      }
                    },
                    obscureText: true,
                    keyboardType: TextInputType.text,
                    style: TextStyle(fontSize: 16, color: Colors.black),
                    textInputAction: TextInputAction.next,
                    decoration: InputDecoration(
                      labelText: "Name",
                      contentPadding: new EdgeInsets.symmetric(
                          vertical: MediaQuery.of(context).size.height * 0.022,
                          horizontal: 15.0),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(25)),
                      ),
                    ),
                    onFieldSubmitted: (String value) {
                      FocusScope.of(context).requestFocus(focusNode1);
                    },
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    validator: validateEmail,
                    onSaved: (String val) {
                      _email = val;
                    },
                    focusNode: focusNode1,
                    keyboardType: TextInputType.emailAddress,
                    style: TextStyle(fontSize: 16, color: Colors.black),
                    textInputAction: TextInputAction.next,
                    decoration: InputDecoration(
                      labelText: "Email",
                      contentPadding: new EdgeInsets.symmetric(
                          vertical: MediaQuery.of(context).size.height * 0.022,
                          horizontal: 15.0),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(25)),
                      ),
                    ),
                    onFieldSubmitted: (String value) {
                      FocusScope.of(context).requestFocus(focusNode2);
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
                    focusNode: focusNode2,
                    obscureText: true,
                    keyboardType: TextInputType.text,
                    style: TextStyle(fontSize: 16, color: Colors.black),
                    textInputAction: TextInputAction.next,
                    decoration: InputDecoration(
                      labelText: "Password",
                      contentPadding: new EdgeInsets.symmetric(
                          vertical: MediaQuery.of(context).size.height * 0.022,
                          horizontal: 15.0),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(25)),
                      ),
                    ),
                    onFieldSubmitted: (String value) {
                      FocusScope.of(context).requestFocus(focusNode3);
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
                    focusNode: focusNode3,
                    obscureText: true,
                    keyboardType: TextInputType.text,
                    style: TextStyle(fontSize: 16, color: Colors.black),
                    textInputAction: TextInputAction.done,
                    decoration: InputDecoration(
                      labelText: "Confirm Password",
                      contentPadding: new EdgeInsets.symmetric(
                          vertical: MediaQuery.of(context).size.height * 0.022,
                          horizontal: 15.0),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(25)),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15,
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
                              "SIGN UP",
                              style:
                              TextStyle(color: Colors.white, fontSize: 16),
                            ),
                          ),
                        )),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Container(
                    child: GestureDetector(
                        onTap: () {
                          print("pressed");
                          Navigator.pop(context);
                        },
                        child: Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                                color: Colors.deepPurpleAccent,
                                shape: BoxShape.circle),
                            child:
                            Icon(Icons.arrow_back, color: Colors.white))),
                  ),
                ],
              ),
            ),
          )
        ],
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
