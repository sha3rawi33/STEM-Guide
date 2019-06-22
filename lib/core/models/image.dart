import 'school.dart';

class ImageModel {
  final School school;
  final String department;
  final int index;

  const ImageModel({this.school, this.department, this.index});

  String get path => "assets/images/schools/${school.compactName}/$department$index.jpg";
}