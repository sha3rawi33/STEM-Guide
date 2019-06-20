import 'package:flutter/material.dart';
import 'models/school.dart';
import 'loginScreen.dart';
import 'gallery/gallery_page.dart';
void main() {
  runApp(MaterialApp(
    title: "STEM Guide",
    home: Gallery(school: SchoolModel("STEM October", "description", [], [], 27), department: "lab"),
    routes: {
//       'home':(context) => home(),
    },
  ));
}