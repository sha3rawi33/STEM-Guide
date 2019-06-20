import 'post.dart';
import 'rating.dart';


class SchoolModel {
  final String name;
  final String description;
  final List<RatingModel> ratings;
  final List<PostModel> posts;
  final int imagesNum;

  String get compactName => name.split(' ').map((String x) => x.toLowerCase()).join('_');

  const SchoolModel(this.name, this.description, this.ratings, this.posts, this.imagesNum);
}