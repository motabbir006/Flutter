import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

void main() {
  runApp(const NBIU_CC());
}

class NBIU_CC extends StatelessWidget {
  const NBIU_CC({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.green),
      darkTheme: ThemeData(primarySwatch: Colors.deepPurple),
      debugShowCheckedModeBanner: false,
      home: const HomeActivity(),
    );
  }
}
SnackMsg(message, context) {
  return ScaffoldMessenger.of(context)
      .showSnackBar(SnackBar(content: Text(message)));
}
class HomeActivity extends StatelessWidget {
  const HomeActivity({Key? key});

  @override
  Widget build(BuildContext context) {

    ButtonStyle buttonStyle = TextButton.styleFrom(
      minimumSize: Size(double.infinity, 60),
      backgroundColor: Colors.green,
      foregroundColor: Colors.black,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(10))
      )
    );
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Computer Club",
          style: TextStyle(/*fontWeight: FontWeight.bold,*/ fontSize: 30),
        ),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(padding: EdgeInsets.all(10), child: TextField(decoration: InputDecoration(border: OutlineInputBorder(),labelText: "Contact Number",prefix: SizedBox(width: 10), prefixIcon: Icon(Icons.phone),), ),),
          Padding(padding: EdgeInsets.all(10), child: TextField(decoration: InputDecoration(border: OutlineInputBorder(),labelText: "Home",prefix: SizedBox(width: 10), prefixIcon: Icon(Icons.home),), ),),
          Padding(padding: EdgeInsets.all(10), child: TextField(decoration: InputDecoration(border: OutlineInputBorder(),labelText: "Email",prefix: SizedBox(width: 10), prefixIcon: Icon(Icons.email),), ),),
          Padding(padding: EdgeInsets.all(10), child: ElevatedButton(onPressed:() {SnackMsg("Submit Successfully", context);}, child: Text("Submit"),style: buttonStyle,),)
        ],
      ),

    );
  }
}
