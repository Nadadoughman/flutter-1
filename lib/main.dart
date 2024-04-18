// ignore_for_file: unnecessary_null_comparison

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

import 'dart:io';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({super.key});

  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late File image;
  final imagepicker = ImagePicker();

  uploadImage() async {
    var picked_image = await imagepicker.pickImage(source: ImageSource.camera);
    if (picked_image != null) {
      setState(() {
        image = File(
            picked_image.path); //عشان لما الشخص ياخد صوره تتخزن في المتغير دا
      });
    } else {} // if else to prevent error when user click on back button of the mobile
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text("title"),
          ),
          body: Column(
            children: [
              Row(
                children: [
                  Container(
                      width: 60,
                      height: 60,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.white),
                          borderRadius: BorderRadius.circular(50),
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage("images/sora.png"))),
                      margin: EdgeInsets.all(20)),
                  Text(" Islam ahmed",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),

                  // ElevatedButton(
                  //   onPressed: uploadImage,
                  //   child: Text("upload image"),
                  // ),
                  // SizedBox(
                  //   height: 20,
                  // ),
                  // // image != null ? Image.file(image) : Text("data")
                  // //ألجمله الشرطيه دي عشان ميطلعش ايرور

                  // // عشان تعرض الصوره ال اتاخدت و اتخزنت في المتغير ايمدج
                ],
              ),
              Container(
                width: 700,
                height: 100,
                decoration: BoxDecoration(
                    color: Color.fromARGB(245, 19, 1, 108),
                    borderRadius:
                        BorderRadius.only(topRight: Radius.circular(50))),
                child: Text(
                  "connections",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
              ),
              Container(
                width: double.infinity,
                height: 100,
                decoration: BoxDecoration(
                    color: Color.fromARGB(245, 45, 165, 147),
                    borderRadius:
                        BorderRadius.only(topRight: Radius.circular(50))),
                child: Text("private data",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20)),
              ),
              Container(
                height: 50,
                width: double.infinity,
                child: Text(
                  "your photos",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 231, 217, 217),
                    border: Border.all(style: BorderStyle.solid)),
              ),
              Container(
                  height: 400,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 231, 217, 217),
                  ),
                  child: Wrap(
                    children: [
                      Image.asset("images/desk.jpg"),
                      Image.asset("images/do.jpg"),
                      Image.asset("images/hi.jpg"),
                      Image.asset("images/N.jpg"),
                      Image.asset("images/nada.jpg"),
                      Image.asset("images/play.jpg"),
                    ],
                  ))
            ],
          )),
    );
  }
}
