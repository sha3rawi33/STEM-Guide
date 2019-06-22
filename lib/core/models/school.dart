import 'post.dart';
import 'rating.dart';


class School {
  final String name;
  final String description;
  final List<Rating> ratings;
  final List<Post> posts;
  final int imagesNum;

  String get compactName => name.split(' ').map((String x) => x.toLowerCase()).join('_');

  const School({this.name, this.description, this.ratings, this.posts, this.imagesNum});
}