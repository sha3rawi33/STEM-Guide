import 'package:flutter/material.dart';
import 'package:stem_guide/core/models/school.dart';
import 'package:stem_guide/ui/shared/uihelpers.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Row(
          children: <Widget>[
            RaisedButton(
              child: Text("Splash"),
              onPressed: () {
                Navigator.pushNamed(context, "/splash");
              },
            ),
            RaisedButton(
              child: Text("Login"),
              onPressed: () {
                Navigator.pushNamed(context, "/login");
              },
            ),
            RaisedButton(
              child: Text("Sign Up"),
              onPressed: () {
                Navigator.pushNamed(context, "/signup");
              },
            ),
            RaisedButton(
              child: Text("Gallery"),
              onPressed: () {
                Navigator.pushNamed(
                  context,
                  "/school/gallery",
                  arguments: GalleryViewArguemnts(
                    school: School(
                      name: "STEM October",
                      description: '',
                      imagesNum: 27
                    ),
                    department: 'lab'
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
