import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todo_list_getx/src/home.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('First Page'),),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              child: Text('뒤로 이동'),
              onPressed: (){
                Get.back();
              },
            ),
            ElevatedButton(
              child: Text('홈으로 이동'),
              onPressed: (){
                Get.offAll(Home());
              },
            )

          ],
        ),
      ),
    );
  }
}
