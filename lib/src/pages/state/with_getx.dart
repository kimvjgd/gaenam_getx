import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todo_list_getx/src/controller/count_controller_with_getx.dart';

class WithGetX extends StatelessWidget {
  WithGetX({Key? key}) : super(key: key);

  CountControllerWithGetX _controllerWithGetX = Get.put(CountControllerWithGetX());

  Widget _button(String id) {
    return RaisedButton(
      onPressed: () {
        // Get.find<CountControllerWithGetX>().increase();
        _controllerWithGetX.increase(id);
      },
      child: Text("+"),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('GetX'),
          GetBuilder<CountControllerWithGetX>(
            id: "first",
            builder: (controller) {
              return Text("${controller.count}");
            },
          ),
          GetBuilder<CountControllerWithGetX>(
            id: "second",
            builder: (controller) {
              return Text("${controller.count}");
            },
          ),
          _button("first"),
          _button("second"),
        ],
      ),
    );
  }
}
