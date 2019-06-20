import 'user.dart';
import 'usercomment.dart';

class PostModel {
  final String content;
  final UserModel user;
  final List<UserCommentModel> comments;

  const PostModel(this.user, this.content, this.comments);
}