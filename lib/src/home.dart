import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todo_list_getx/src/pages/normal/first.dart';
import 'package:todo_list_getx/src/pages/reactive_state_manage_page.dart';
import 'package:todo_list_getx/src/pages/simple_state_manage_page.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('라우트 관리 홈'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              child: Text('일반적인 라우트'),
              onPressed: (){
                  Get.to(FirstPage());
              },
            ),
            ElevatedButton(
              child: Text('Named 라우트'),
              onPressed: (){
                Get.toNamed("/first");
              },
            ),
            ElevatedButton(
              child: Text('Arguments 전달'),
              onPressed: (){
                Get.toNamed("/next",arguments: User(name: '동현', age: 27));
              },
            ),
            ElevatedButton(
              child: Text('동적 url'),
              onPressed: (){
                Get.toNamed("/user/12367?name=동현&age=27");
              },
            ),
            ElevatedButton(
              child: Text('단순 상태관리'),
              onPressed: (){
                Get.to(SimpleStateManagePage());
              },
            ),
            ElevatedButton(
              child: Text('빈응형 상태관리'),
              onPressed: (){
                Get.to(ReactiveStateManagePage());
              },
            ),
          ],
        ),
      ),
    );
  }
}

class User {
  String name;
  int age;

  User({required this.name, required this.age});
}
