import 'package:flutter/material.dart';

class WithProvider extends StatelessWidget {
  const WithProvider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(child: Column(
      children: [
        Text('Provider'),
        Text("0"),
        RaisedButton(onPressed: (){}, child: Text("+"),)
      ],
    ),);
  }
}
