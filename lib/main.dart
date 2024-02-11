import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

//  stateless widget :>
class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String marioImage = 'assets/images/marioleft.png';
  double posRight = 350;
  double posUp = 515;
  @override //

  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Row(
          children: [
            Container(
              color: Colors.yellow,
              child: Text(
                'app bar',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 35,
                ),
              ),
            ),
            IconButton(icon: Icon(Icons.add), onPressed: () {}),
            Text('app bar'),
          ],
        ),
      ),
      body: SizedBox(
        width: 435,
        child: Container(
          height: 835,
          width: 435,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: Image.asset('assets/images/marioWorld.jpeg').image,
                fit: BoxFit.cover),
          ),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
            Center(
              child: Row(
                children: [
                  ElevatedButton(
                      onPressed: () {
                        setState(() {
                          marioImage = 'assets/images/upmario.jpeg';
                          if (posUp > 5) {
                            posUp -= 10;
                          }
                          print(posUp);
                        });
                      },
                      child: Text('up')),
                  SizedBox(width: 35),
                  ElevatedButton(
                      onPressed: () {
                        setState(() {
                          marioImage = 'assets/images/mariodown.jpeg';
                          if (posUp < 515) {
                            posUp += 10;
                          }
                          // posUp += 10;
                        });
                      },
                      child: Text('down')),
                  SizedBox(width: 35),
                  ElevatedButton(
                      onPressed: () {
                        setState(() {
                          marioImage = 'assets/images/marioright.jpeg';
                          posRight -= 10;
                          print(posRight);
                        });
                      },
                      child: Text('right')),
                  SizedBox(width: 35),
                  ElevatedButton(
                      onPressed: () {
                        setState(() {
                          marioImage = 'assets/images/marioleft.png';
                          if (posRight < 310) {
                            posRight += 10;
                          }
                          print(posRight);
                        });
                      },
                      child: Text('left')),
                ],
              ),
            ),
            SizedBox(
              width: 430,
              child: Container(
                margin: EdgeInsets.only(top: posUp, right: posRight),
                child: Image.asset(
                  marioImage,
                  width: 150,
                  height: 150,
                ),
              ),
            ),
          ]),
        ),
      ),
      // Container(
      //   height: 100,
      //   width: 100,
      //   color: Colors.white,
      // ),
      // Container(
      //   height: 100,
      //   width: 100,
      //   color: Colors.green,
      // ),
      // Container(
      //   height: 100,
      //   width: 100,
      //   color: const Color.fromARGB(255, 4, 39, 5),
      // ),
      // Container(
      //   width: 600,
      //   color: Colors.blue,
      //   child: Center(
      //     child: Column(
      //       crossAxisAlignment: CrossAxisAlignment.start,
      //       children: [
      //         Image.asset(
      //           'assets/images/mariocenter.png',
      //           width: 1000,
      //           height: 1000,
      //         ),
      //         Text(
      //           'text1',
      //           style: TextStyle(color: Colors.white),
      //         ),
      //         Text('Text2'),
      //         // Row(
      //         //   children: [
      //         //     Text('rowText1rowText2'),
      //         //     ElevatedButton(onPressed: () {}, child: Text('Button'))
      //         //   ],
      //         // )
      //       ],
      //     ),
      //   ),
      // )
    ));
  }
}
//  stateful widget :>
