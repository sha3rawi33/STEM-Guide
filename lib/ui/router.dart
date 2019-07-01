import 'package:flutter/material.dart';
import 'package:stem_guide/ui/shared/uihelpers.dart';
import 'package:stem_guide/ui/views/gallery_view.dart';
import 'package:stem_guide/ui/views/home_view.dart';
import 'package:stem_guide/ui/views/gallery_page_view.dart';
import 'package:stem_guide/ui/views/loginScreen.dart';
import 'package:stem_guide/ui/views/signupScreen.dart';
import 'package:stem_guide/ui/views/splashScreen.dart';

class Router {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => HomeView());

      case '/login':
        return MaterialPageRoute(builder: (_) => LoginScreen());

      case '/signup':
        return MaterialPageRoute(builder: (_) => SignupScreen());

      case '/splash':
        return MaterialPageRoute(builder: (_) => SplashScreen());

      case '/school/gallery':
        final GalleryViewArguemnts args = settings.arguments;
        return MaterialPageRoute(
            builder: (_) => GalleryView(
                  school: args.school,
                  department: args.department,
                ));

      case '/school/gallery/pageview':
        final GalleryPageViewArguments args = settings.arguments;
        return MaterialPageRoute(
            builder: (_) => GalleryPageView(
                  school: args.school,
                  department: args.department,
                  initialIndex: args.startingIndex,
                ));
      default:
        return MaterialPageRoute(
            builder: (_) => Scaffold(
                  body: Center(
                    child: Text(
                        "Unknown route: ${settings.name}"),
                  ), // TODO: Find a beter 404
                ));
    }
  }
}
