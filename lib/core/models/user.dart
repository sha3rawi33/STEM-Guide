import 'package:stem_guide/core/models/school.dart';

class User {
  final String uid;
  final String name;
  final String email;
  final String photoUrl;
  final School school;
  final int grade;
  const User({this.uid, this.name, this.email, this.school, this.photoUrl, this.grade});
}
