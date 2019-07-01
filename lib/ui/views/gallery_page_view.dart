import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';
import 'package:photo_view/photo_view_gallery.dart';
import 'package:stem_guide/core/models/image.dart';
import 'package:stem_guide/core/models/school.dart';

class GalleryPageView extends StatelessWidget {
  final School school;
  final String department;
  final int initialIndex;
  const GalleryPageView(
      {Key key, this.school, this.department, this.initialIndex})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PhotoViewGallery.builder(
      scrollPhysics: BouncingScrollPhysics(),
      builder: (BuildContext context, int index) {
        var image = ImageModel(
          school: school,
          department: department,
          index: index,
        );

        return PhotoViewGalleryPageOptions(
          imageProvider: AssetImage(image.path),
          initialScale: PhotoViewComputedScale.contained,
          heroTag: image.path,
        );
      },
      itemCount: school.imagesNum,
      pageController: PageController(initialPage: initialIndex),
    );
  }
}
