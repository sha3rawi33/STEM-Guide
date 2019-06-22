import 'user.dart';
import 'usercomment.dart';

class Post {
  final User user;
  final String title;
  final String body;
  final List<UserComment> comments;

  const Post({this.user, this.title, this.body, this.comments});
}