import 'dart:html';

import 'package:day2/Dynamic_list_view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.deepOrange),
      home: HomeActivity(),
    );
  }
}

SnackMsg(message, context) {
  return ScaffoldMessenger.of(context)
      .showSnackBar(SnackBar(content: Text(message)));
}

class HomeActivity extends StatelessWidget {
  var Myitems = [
    {
      "img":
      "https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885__340.jpg",
      "title": " Sourov1"
    },
    {
      "img":
      "https://media.istockphoto.com/id/1176602671/photo/falling-autumn-leaves-before-sunset.jpg?s=2048x2048&w=is&k=20&c=5IkdOk99xuJ6zO-z6awspeFF8qAdi3kawHSL_06auo8=",
      "title": " Sourov2"
    },
    {
      "img":
      "https://media.istockphoto.com/id/497640088/photo/baby-groot-figurine.jpg?s=1024x1024&w=is&k=20&c=l3H3U2z5iRx_wmY-mD3IrPIzMxM9Bez7_m2543NBHTw=",
      "title": " Sourov3"
    },
    {
      "img":
      "https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885__340.jpg",
      "title": " Sourov5"
    },
    {
      "img":
      "https://media.istockphoto.com/id/1176602671/photo/falling-autumn-leaves-before-sunset.jpg?s=2048x2048&w=is&k=20&c=5IkdOk99xuJ6zO-z6awspeFF8qAdi3kawHSL_06auo8=",
      "title": " Sourov4"
    },
    {
      "img":
      "https://media.istockphoto.com/id/497640088/photo/baby-groot-figurine.jpg?s=1024x1024&w=is&k=20&c=l3H3U2z5iRx_wmY-mD3IrPIzMxM9Bez7_m2543NBHTw=",
      "title": " Sourov6"
    },
    {
      "img":
      "https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885__340.jpg",
      "title": " Sourov7"
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Hello Janu"),
        backgroundColor: Colors.deepOrange,
        foregroundColor: Colors.white,
        centerTitle: true,
      ),
      body: ListView.builder(
          itemCount: Myitems.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                SnackMsg(Myitems[index]["title"], context);
              },
              child: Container(
                margin: EdgeInsets.all(10),
                width: double.infinity,
                height: 400,
                child: Image.network(
                  Myitems[index]["img"]!,
                  fit: BoxFit.fill,
                ),
              ),
            );
          }),
    );
  }
}

