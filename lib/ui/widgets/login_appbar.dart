import 'package:flutter/material.dart';
import 'package:stem_guide/ui/widgets/rounded_clipper.dart';

class LoginAppBar extends StatelessWidget {
  const LoginAppBar({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.35,
      width: MediaQuery.of(context).size.width,
      child: Stack(
        children: <Widget>[
          ClipPath(
            child: Container(
              height: MediaQuery.of(context).size.height * 0.35,
              width: MediaQuery.of(context).size.width,
              color: Colors.deepPurple[300],
            ),
            clipper: RoundedClipper(60),
          ),
          ClipPath(
            child: Container(
              height: MediaQuery.of(context).size.height * 0.33,
              width: MediaQuery.of(context).size.width,
              color: Colors.deepPurpleAccent,
            ),
            clipper: RoundedClipper(50),
          ),
          Positioned(
              top: -110,
              left: -110,
              child: Container(
                height: MediaQuery.of(context).size.height * 0.30,
                width: MediaQuery.of(context).size.height * 0.30,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                        (MediaQuery.of(context).size.height * 0.30) / 2),
                    color: Colors.deepPurple[300].withOpacity(0.3)),
                child: Center(
                  child: Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle, color: Colors.deepPurpleAccent),
                  ),
                ),
              )),
          Positioned(
              top: -100,
              left: 100,
              child: Container(
                height: MediaQuery.of(context).size.height * 0.36,
                width: MediaQuery.of(context).size.height * 0.36,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                        (MediaQuery.of(context).size.height * 0.36) / 2),
                    color: Colors.deepPurple[300].withOpacity(0.3)),
                child: Center(
                  child: Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle, color: Colors.deepPurpleAccent),
                  ),
                ),
              )),
          Positioned(
              top: -50,
              left: 60,
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
                Image.asset(
                  "assets/login.png",
                  height: 100,
                  width: 100,
                  fit: BoxFit.cover,
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Welcome",
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