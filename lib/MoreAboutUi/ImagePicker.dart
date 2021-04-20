import 'dart:io';
import 'package:firstAPP/Expands.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart' as pic;

void main()=> runApp(ImagePicker());

class ImagePicker extends StatefulWidget {
  @override
  _ImagePickerState createState() => _ImagePickerState();
}

class _ImagePickerState extends State<ImagePicker> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: app()
    );
  }
}
class app extends StatefulWidget {
  @override
  _appState createState() => _appState();
}

class _appState extends State<app> {
  File _image;
  final picker = pic.ImagePicker();

  Future getImage(pic.ImageSource src) async {
    final pickedFile = await picker.getImage(source: src);

    setState(() {
      if (pickedFile != null) {
        _image = File(pickedFile.path);
      } else {
        print('No image selected.');
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Imagepicker"),),
      body: Container(
        child: _image==null?Text("there is no image here") : Image.file(_image),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add_a_photo_outlined),
        onPressed: (){
          var dialog=AlertDialog(
            title: Text("this is dialog"),
            content: Wrap(
              children: [Container(
                child: Column(
                  children: [
                    ListTile(
                      title: Text("Gallary"),
                      leading: Icon(Icons.image),
                      onTap: (){
                        getImage(pic.ImageSource.gallery);
                        Navigator.of(context).pop();
                      },
                    ),
                    ListTile(
                      title: Text("Camera"),
                      leading: Icon(Icons.add_a_photo),
                      onTap: (){
                        getImage(pic.ImageSource.camera);
                        Navigator.of(context).pop();
                      },
                    )
                  ],
                ),
              ),],
            ),
          );
          showDialog(context: context,child: dialog);
        },
      ),
    );
  }
}



