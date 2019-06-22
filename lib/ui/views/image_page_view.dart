import 'package:flutter/material.dart';
import 'package:extended_image/extended_image.dart';
import 'package:stem_guide/core/models/image.dart';
import 'package:stem_guide/core/models/school.dart';

class GalleryPageView extends StatelessWidget {
  final School school;
  final String department;
  final int startingIndex;
  const GalleryPageView(
      {Key key, this.school, this.department, this.startingIndex})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ExtendedImageGesturePageView.builder(
      itemBuilder: (BuildContext context, int index) {
        var newImage =
            ImageModel(school: school, department: department, index: index);

        Widget image = ExtendedImage.asset(
          newImage.path,
          fit: BoxFit.contain,
          mode: ExtendedImageMode.Gesture,
        );

        return Hero(
          tag: newImage.path,
          child: Container(
            child: image,
            padding: EdgeInsets.all(5.0),
          ),
        );
      },
      itemCount: school.imagesNum,
      controller: PageController(initialPage: startingIndex),
      scrollDirection: Axis.horizontal,
    );
  }
}
