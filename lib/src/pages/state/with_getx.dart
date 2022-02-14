import 'package:flutter/material.dart';

class WithGetX extends StatelessWidget {
  const WithGetX({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(child: Column(
      children: [
        Text('GetX'),
        Text("0"),
        RaisedButton(onPressed: (){}, child: Text("+"),)
      ],
    ),);
  }
}
