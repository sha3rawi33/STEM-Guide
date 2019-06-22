import 'package:flutter/material.dart';
import 'package:extended_image/extended_image.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:stem_guide/core/models/image.dart';
import 'package:stem_guide/core/models/school.dart';
import 'package:stem_guide/ui/shared/uihelpers.dart';

/// [GalleryView] assumes that all its images are in
/// assets/images/schools/{school.compactName}/{department}{n}.jpg
/// where n is an increasing number starting at 0.
class GalleryView extends StatelessWidget {
  final School school;
  final String department;

  const GalleryView({Key key, this.school, this.department}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("${school.name}'s $department!"),
      ),
      body: StaggeredGridView.countBuilder(
        crossAxisCount: 6,
        crossAxisSpacing: 1.0,
        mainAxisSpacing: 1.0,
        itemBuilder: (context, index) {
          return _buildImage(context, index);
        },
        itemCount: school.imagesNum,
        staggeredTileBuilder: (_) => StaggeredTile.fit(2),
      ),
    );
  }

  Widget _buildImage(BuildContext context, int index) {
    ImageModel imageModel =
        ImageModel(school: school, department: department, index: index);

    return GestureDetector(
      onTap: () {
        Navigator.of(context).pushNamed('/school/gallery/pageview',
            arguments: GalleryPageViewArguments(
              school: school,
              department: department,
              startingIndex: index,
            ));
      },
      child: Hero(
        tag: imageModel.path,
        child: ExtendedImage.asset(imageModel.path),
      ),
    );
  }
}
