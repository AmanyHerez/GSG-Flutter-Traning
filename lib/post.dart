class PostData{
  String? content;
  String? image;
  String? noLike;
  PostData.fromJson(Map<String,dynamic> data){
    noLike=data['noLike'];
    image=data['image'];
  }
}
