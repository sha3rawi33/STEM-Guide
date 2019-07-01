import 'package:flutter/material.dart';
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
        padding: EdgeInsets.symmetric(horizontal: 8.0),
        crossAxisCount: 4,
        crossAxisSpacing: 3.5,
        mainAxisSpacing: 3.5,
        itemBuilder: (context, index) => _buildImage(context, index),
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
      child: ClipRRect(
        borderRadius: BorderRadius.all(
          Radius.circular(5.0),
        ),
        child: Hero(
            tag: imageModel.path,
            child: Image.asset(
              imageModel.path,
            )),
      ),
    );
  }
}
