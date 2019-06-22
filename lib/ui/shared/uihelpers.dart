import 'package:stem_guide/core/models/school.dart';

class GalleryViewArguemnts {
  final School school;
  final String department;

  const GalleryViewArguemnts({this.school, this.department});
}

class GalleryPageViewArguments {
  final School school;
  final String department;
  final int startingIndex;

  const GalleryPageViewArguments({this.school, this.department, this.startingIndex});
}
