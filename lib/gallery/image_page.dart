import 'package:flutter/material.dart';
import 'package:extended_image/extended_image.dart';
import 'package:stem_guide/models/image.dart';

class ImagePageView extends StatelessWidget {
  final ImageModel imageModel;
  const ImagePageView({Key key, image})
      : imageModel = image,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return ExtendedImageGesturePageView.builder(
      itemBuilder: (BuildContext context, int index) {
        var newImage =
            ImageModel(imageModel.school, imageModel.department, index);

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
      itemCount: imageModel.school.imagesNum,
      controller: PageController(initialPage: imageModel.index),
      scrollDirection: Axis.horizontal,
    );
  }
}
