import 'package:first_gsg_app/User.dart';
import 'package:first_gsg_app/post.dart';

class PostResponse{
  User? user;
  PostData? post;
  PostResponse.fromJson(Map<String,dynamic> data){
    user=User.fromJson(data['user']);
    post=PostData.fromJson(data['post']);
  }
}