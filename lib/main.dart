import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

//  stateless widget :>
class MyApp extends StatelessWidget {
  @override //

  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.red,
            title: Text('app bar'),
          ),
          body: Center(
            child: Column(
              children: [
                Text('text1'),
                Text('Text2'),
                // Row(
                //   children: [
                //     Text('rowText1rowText2'),
                //     ElevatedButton(onPressed: () {}, child: Text('Button'))
                //   ],
                // )
              ],
            ),
          )),
    );
  }
}
//  stateful widget :>
