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
    return Scaffold(
      appBar: AppBar(
        title: const Text("Sourov"),
        centerTitle: true,
        backgroundColor: Colors.green,
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            const DrawerHeader(
                padding: EdgeInsets.all(0),
                child: UserAccountsDrawerHeader(
                  accountName: Text(
                    "Motabbir Hossain Sourov",
                    style: TextStyle(
                        color: Colors.white,
                        backgroundColor: Colors.black,
                        letterSpacing: 2),
                  ),
                  accountEmail: Text("sourov00p@gmail.com"),
                  decoration: BoxDecoration(color: Colors.green),
                )),
            ListTile(
                leading: const Icon(Icons.home),
                title: const Text("Home"),
                onTap: () {
                  SnackMsg("Just do it. Work hard and harder", context);
                }),
            ListTile(
                leading: const Icon(Icons.phone),
                title: const Text("Phone"),
                onTap: () {
                  SnackMsg("Don't worry! I am here for you.", context);
                }),
            ListTile(
                leading: const Icon(Icons.location_city),
                title: const Text("location"),
                onTap: () {
                  SnackMsg("I think you are so stupid", context);
                }),
            ListTile(
                leading: const Icon(Icons.contact_mail),
                title: const Text("Mail"),
                onTap: () {
                  SnackMsg("Hello, Mail is here ", context);
                }),
          ],
        ),
      ),
    );
  }
}
