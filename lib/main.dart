import 'package:flutter/material.dart';
import 'package:stem_guide/ui/router.dart';

void main() {
  runApp(MaterialApp(
    title: "STEM Guide",
    initialRoute: '/',
    onGenerateRoute: Router.generateRoute,
  ));
}