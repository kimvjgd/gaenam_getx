import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todo_list_getx/src/home.dart';
import 'package:todo_list_getx/src/pages/named/first.dart';
import 'package:todo_list_getx/src/pages/named/second.dart';
import 'package:todo_list_getx/src/pages/next.dart';
import 'package:todo_list_getx/src/pages/user.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: "/",
      getPages: [
        GetPage(name: "/", page: () => Home(), transition: Transition.zoom),
        GetPage(name: "/first", page: () => FirstNamedPage(), transition: Transition.zoom),
        GetPage(name: "/second", page: () => SecondNamedPage(),transition: Transition.zoom),
        GetPage(name: "/next", page: () => NextPage(),transition: Transition.zoom),
        GetPage(name: "/user/:uid", page: () => UserPage(),transition: Transition.zoom),
      ],
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Home(),
    );
  }
}
