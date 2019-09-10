class ImageModel{
  int albumId;
  int id;
  String url;
  String title;
  String thumbnailUrl;

  ImageModel(this.albumId,this.id,this.url,this.title,this.thumbnailUrl);

  ImageModel.fromJson(Map<String,dynamic> parsedJson){
    albumId = parsedJson['albumId'];
    id = parsedJson['id'];
    url = parsedJson['url'];
    title = parsedJson['title'];
    thumbnailUrl = parsedJson['thumbnailUrl'];
  }
}