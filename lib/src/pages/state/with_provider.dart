import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_list_getx/src/controller/count_controller_with_provider.dart';

class WithProvider extends StatelessWidget {
  const WithProvider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Provider'),
          Consumer<CountControllerWithProvider>(builder: (_,snapshot,child){
            return Text("${snapshot.count}");
          }),
          RaisedButton(
            onPressed: () {
              Provider.of<CountControllerWithProvider>(context, listen: false).increase();
            },
            child: Text("+"),
          )
        ],
      ),
    );
  }
}
