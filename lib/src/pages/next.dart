import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todo_list_getx/src/home.dart';

class NextPage extends StatelessWidget {
  const NextPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Next Page'),),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("${(Get.arguments as User).name}, ${(Get.arguments as User).age.toString()}"),
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
