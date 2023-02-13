import 'package:flutter/material.dart';
import 'package:l_02_widgets/05-popUpButton.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "My Counter App",
      theme: ThemeData(primarySwatch: Colors.blue),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Button Examle"),
          actions: [PopUpButton()],
        ),
        body: PopUpButton(),
      ),
    );
  }
}


// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key});

//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   int _count = 0;

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       child: Scaffold(
//         appBar: AppBar(
//           title: Text("My Counter AppBar"),
//         ),
//         body: Center(
//           child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
//             Text(
//               "Button Clicked Count",
//               style: TextStyle(
//                   fontSize: 32,
//                   backgroundColor: Colors.yellow,
//                   fontWeight: FontWeight.bold),
//             ),
//             Text(
//               _count.toString(),
//               style: Theme.of(context).textTheme.headlineLarge,
//             )
//           ]),
//         ),
//         floatingActionButton: FloatingActionButton(
//           onPressed: () {
//             addCount();
//           },
//           child: Icon(Icons.add),
//         ),
//       ),
//     );
//   }

//   void addCount() {
//     setState(() {});
//     _count++;
//   }
// }
