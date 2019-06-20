import 'package:flutter/material.dart';
import 'package:extended_image/extended_image.dart';
import 'package:stem_guide/models/image.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import '../models/school.dart';
import 'image_page.dart';


/// Gallery assumes that all its images are in
/// assets/images/schools/{school.compactName}/{deparment}{n}.jpg
/// where n is an increasing number starting at 0.
class Gallery extends StatelessWidget {
  final SchoolModel school;
  final String department;

  const Gallery({Key key, this.school, this.department}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
    ImageModel imageModel = ImageModel(school, department, index);

    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
          builder: (_) => ImagePageView(image: imageModel),
        ));
      },
      child: Hero(tag: imageModel.path, child: ExtendedImage.asset(imageModel.path)),
    );
  }
}
