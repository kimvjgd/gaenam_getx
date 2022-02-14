import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';
import 'package:todo_list_getx/src/controller/count_controller_with_getx.dart';
import 'package:todo_list_getx/src/controller/count_controller_with_provider.dart';
import 'package:todo_list_getx/src/controller/count_controller_with_reactive.dart';
import 'package:todo_list_getx/src/pages/state/with_getx.dart';
import 'package:todo_list_getx/src/pages/state/with_provider.dart';

class ReactiveStateManagePage extends StatelessWidget {
  const ReactiveStateManagePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(CountControllerWithReactive());
    return Scaffold(
      appBar: AppBar(
        title: Text('반응형 상태관리'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('GetX'),
            Obx(()=>Text("${Get.find<CountControllerWithReactive>().count.value}")),


            RaisedButton(
              onPressed: () {
                Get.find<CountControllerWithReactive>().increase();
              },
              child: Text("+"),
            ),
            RaisedButton(
              onPressed: () {
                Get.find<CountControllerWithReactive>().putNumber(5);
              },
              child: Text("5로 변경"),
            )
          ],
        ),
      ),
    );
  }
}
