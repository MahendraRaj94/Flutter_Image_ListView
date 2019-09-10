import '../model/image_model.dart';
import 'package:flutter/material.dart';

class ImageList extends StatelessWidget{
  final List<ImageModel> models;
  ImageList(this.models);


  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount : models.length,
        itemBuilder: (context,index){
          return buildImage(models[index]);
        },
    );
  }

  Widget buildImage(ImageModel model) {
    return Container(
        padding: EdgeInsets.all(16),
        decoration: BoxDecoration(border: Border.all(color: Colors.blue)),
        margin: EdgeInsets.all(16),
        child: Column(
          children: <Widget>[Padding(
            child: Image.network(
              model.url),
          padding: EdgeInsets.fromLTRB(0, 0, 0, 16),),
          Text(model.title)],
        ));
  }

}