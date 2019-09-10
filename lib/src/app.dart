import 'package:flutter/material.dart';
import 'package:http/http.dart' show get;
import 'package:flutter_sample/src/model/image_model.dart';
import 'dart:convert';
import 'widgets/image_list.dart';

class App extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return AppState();
  }

}
class AppState extends State<App>{
  int counter = 0;
  List<ImageModel> models = [];
  void fetchImage() async{
    counter++;
     var response = await get("https://jsonplaceholder.typicode.com/photos/$counter");
     var imageModel = ImageModel.fromJson(json.decode(response.body));
    print("Response ${response.body}");
    print(imageModel.url);
   setState((){
     models.add(imageModel);
   });
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home : Scaffold(
        body: ImageList(models
        ),
        floatingActionButton: FloatingActionButton(
            child : Icon(Icons.add),
            onPressed: fetchImage),
        appBar: AppBar(
          title: Text("Flutter Mahendra Three"),
          elevation: 10,
          brightness: Brightness.dark,
        ),
      ),
    );
  }

}