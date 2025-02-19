import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  final List<String> list = [
    "Hi, Aidar",
    "Hello, Aidar",
    "3",
    "4",
    "5",
    "6",
    "7",
    "8",
    "9",
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Hi"),
        ),
        body: ListView.separated(
            itemCount: list.length,
            itemBuilder: (_, index) => Text(
                  list[index],
                  style: TextStyle(fontSize: 100),
                ),
            separatorBuilder: (_, __) => Divider(
                  color: Colors.black,
                  thickness: 10,
                )
            //   controller: CarouselController(initialItem: 40),
            //   reverse: true,
            //   children: list
            //       .map((a) => Text(
            //             a,
            //             style: TextStyle(fontSize: 100),
            //           ))
            //       .toList(),
            // ),
            ),
        // Center(
        //   child: Container(
        //     width: 400,
        //     height: 400,
        //     color: Colors.grey[400],
        //     child: Wrap(
        //       alignment: WrapAlignment.center,
        //       runAlignment: WrapAlignment.center,
        //       verticalDirection: VerticalDirection.up,
        //       direction: Axis.horizontal,
        //       spacing: 20,
        //       runSpacing: 20,
        //       textDirection: TextDirection.rtl,
        //       children: [
        //         Container(color: Colors.amber, width: 100, height: 100),
        //         Container(color: Colors.amber, width: 100, height: 100),
        //         Container(color: Colors.amber, width: 100, height: 100),
        //         Container(color: Colors.amber, width: 100, height: 100),
        //         Container(color: Colors.amber, width: 100, height: 100),
        //       ],
        //     ),
        //   ),
        // )
        // Center(
        //   child: Stack(
        //     children: [
        //       Icon(Icons.favorite, size: 400, color: Colors.red),
        //       Positioned(
        //           top: 350,
        //           right: 150,
        //           child: Text("Hello",
        //               style: TextStyle(
        //                   fontSize: 40,
        //                   fontWeight: FontWeight.bold,
        //                   fontFamily: "Lato"))),
        //     ],
        //   ),
        // )
      ),
    );
  }
}
          // color: Colors.grey[400],
          // width: 300,
          // height: 300,
          // width: 500,
          // height: 500,
          // child: Stack(
          //   clipBehavior: Clip.none,
          //   alignment: Alignment.bottomLeft,
          //   children: [
          //     Container(
          //       padding: EdgeInsets.all(200),
          //       color: Colors.cyan,
          //       child: Text("1"),
          //     ),
          //     Positioned(
          //       top: 400,
          //       left: 20,
          //       child: Container(
          //         padding: EdgeInsets.all(100),
          //         color: Colors.pink,
          //         child: Text("2"),
          //       ),
          //     ),
          //     Container(
          //       padding: EdgeInsets.all(50),
          //       color: Colors.amber,
          //       child: Text("3"),
          //     ),
          //   ],
          // ),
        // );
    // return MaterialApp(
    //   title: "Hi",
    //   home: Scaffold(
    //     appBar: AppBar(
    //       title: const Text(
    //         'IconButton Example',
    //         style: TextStyle(letterSpacing: 2.0, color: Colors.white),
    //       ),
    //       centerTitle: true,
    //       backgroundColor: Colors.grey[800],
    //     ),
    //     body: container,
        // body: Container(
        //   color: Colors.grey[400],
        //   width: 500,
        //   height: 500,
        //   child: Stack(
        //     clipBehavior: Clip.none,
        //     alignment: Alignment.bottomLeft,
        //     children: [
        //       Container(
        //         padding: EdgeInsets.all(200),
        //         color: Colors.cyan,
        //         child: Text("1"),
        //       ),
        //       Positioned(
        //         top: 400,
        //         left: 20,
        //         child: Container(
        //           padding: EdgeInsets.all(100),
        //           color: Colors.pink,
        //           child: Text("2"),
        //         ),
        //       ),
        //       Container(
        //         padding: EdgeInsets.all(50),
        //         color: Colors.amber,
        //         child: Text("3"),
        //       ),
        //     ],
        //   ),
        // ),
        // body: Text("Hiii, Adr",
        //     style: TextStyle(
        //         fontSize: 30,
        //         decoration: TextDecoration.underline,
        //         fontFamily: "Lato",
        //         fontWeight: FontWeight.bold)),
        // floatingActionButton: FloatingActionButton(
        //   onPressed: () {},
        //   backgroundColor: Colors.grey[800],
        //   child: Text(
        //     "Button",
        //     style: TextStyle(color: Colors.white),
        //   ),
    //   ),
    // );
    // return MaterialApp(
    //   home: Scaffold(
    //       appBar: AppBar(title: const Text('IconButton Example')),
    // body: Column(
    //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    //   crossAxisAlignment: CrossAxisAlignment.stretch,
    //   children: [
    //     Container(
    //       color: Colors.amber,
    //       padding: EdgeInsets.all(20),
    //       child: Text("1"),
    //     ),
    //     Container(
    //       color: Colors.pink,
    //       padding: EdgeInsets.all(40),
    //       child: Text("2"),
    //     ),
    //     Container(
    //       color: Colors.blue,
    //       padding: EdgeInsets.all(60),
    //       child: Text("3"),
    //     ),
    //   ],
    // )
    // Container(
    //   decoration: BoxDecoration(
    //       gradient: LinearGradient(
    //           colors: [Colors.blue, const Color.fromARGB(255, 3, 26, 66)]),
    //       image: DecorationImage(
    //           image: AssetImage("lib/assets/IMG_5689.HEIC"),
    //           fit: BoxFit.fill)),
    //   child: Container(
    //     margin: EdgeInsets.all(16),
    //     alignment: Alignment.center,
    //     decoration: BoxDecoration(
    //         color: Colors.amber[100],
    //         shape: BoxShape.circle,
    //         border: Border.all(
    //             width: 5,
    //             color: const Color.fromARGB(255, 140, 40, 40),
    //             style: BorderStyle.solid),
    //         boxShadow: [
    //           BoxShadow(
    //               color: Colors.black38,
    //               spreadRadius: 5,
    //               blurRadius: 7.5,
    //               offset: Offset(5, 5)),
    //         ],
    //         gradient: RadialGradient(colors: [
    //           Colors.blue,
    //           const Color.fromARGB(255, 3, 26, 66)
    //         ])),
    //     child: IconButton(
    //       icon: const Icon(Icons.favorite),
    //       iconSize: 100.0,
    //       color: Colors.red,
    //       onPressed: () {},
    //     ),
    //   ),
    // ),
    //       ),
    // );
//   }
// }
