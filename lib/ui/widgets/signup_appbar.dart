import 'package:flutter/material.dart';
import 'package:stem_guide/ui/widgets/rounded_clipper.dart';

class SignupAppbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.20,
      width: MediaQuery.of(context).size.width,
      child: Stack(
        children: <Widget>[
          ClipPath(
            child: Container(
              height: MediaQuery.of(context).size.height * 0.20,
              width: MediaQuery.of(context).size.width,
              color: Colors.deepPurple[300],
            ),
            clipper: RoundedClipper(60),
          ),
          ClipPath(
            child: Container(
              height: MediaQuery.of(context).size.height * 0.18,
              width: MediaQuery.of(context).size.width,
              color: Colors.deepPurpleAccent,
            ),
            clipper: RoundedClipper(50),
          ),
          Positioned(
              top: -50,
              left: -30,
              child: Container(
                height: MediaQuery.of(context).size.height * 0.15,
                width: MediaQuery.of(context).size.height * 0.15,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                        (MediaQuery.of(context).size.height * 0.15) / 2),
                    color: Colors.deepPurple[300].withOpacity(0.3)),
                child: Center(
                  child: Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.deepPurpleAccent),
                  ),
                ),
              )),
          Positioned(
              top: -50,
              left: MediaQuery.of(context).size.width * 0.6,
              child: Container(
                height: MediaQuery.of(context).size.height * 0.20,
                width: MediaQuery.of(context).size.height * 0.20,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                        (MediaQuery.of(context).size.height * 0.20) / 2),
                    color: Colors.deepPurple[300].withOpacity(0.3)),
                child: Center(
                  child: Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.deepPurpleAccent),
                  ),
                ),
              )),
          Positioned(
              top: -50,
              left: 80,
              child: Container(
                height: MediaQuery.of(context).size.height * 0.15,
                width: MediaQuery.of(context).size.height * 0.15,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                        (MediaQuery.of(context).size.height * 0.15) / 2),
                    color: Colors.deepPurple[300].withOpacity(0.3)),
              )),
          Container(
            margin: EdgeInsets.only(
                top: MediaQuery.of(context).size.height * 0.15 - 50),
            height: MediaQuery.of(context).size.height * 0.33,
            width: MediaQuery.of(context).size.width,
            child: Column(
              children: <Widget>[
                Text(
                  "Sign Up",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
