import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 49, 49, 49),
      appBar: AppBar(
        title: Text("Personal Card"),
      ),
      body: SafeArea(
        child: Center(
          child: Column(mainAxisSize: MainAxisSize.min, children: [
            CircleAvatar(
              radius: 80,
              backgroundImage: AssetImage("assets/images/Profile.png"),
            ),
            Text(
              "Gurban Gurbanzada",
              style: GoogleFonts.oswald(
                  textStyle: TextStyle(color: Colors.blue), fontSize: 35),
            ),
            Text(
              "Mobile Developer",
              // style: TextStyle(color: Colors.blue, fontSize: 35),
              style: GoogleFonts.lato(
                  textStyle: TextStyle(color: Colors.green), fontSize: 25),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 10),
              padding: EdgeInsets.symmetric(horizontal: 10),
              height: 40,
              color: Colors.yellow,
              child: Row(
                children: [
                  Icon(Icons.mail),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "gurban.gurbanzada@gmail.com",
                    style: TextStyle(fontSize: 20),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Card(
              margin: EdgeInsets.symmetric(horizontal: 10),
              color: Colors.yellow,
              child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListTile(
                    leading: Icon(Icons.phone),
                    title: Text(
                      "+994 55 689 90 91",
                      style: TextStyle(fontSize: 20),
                    ),
                  )),
            )
          ]),
        ),
      ),
    );
  }
}

// Row(
//                   children: [
//                     Icon(Icons.phone),
//                     SizedBox(
//                       width: 10,
//                     ),
//                     Text(
//                       "+994 55 689 90 91",
//                       style: TextStyle(fontSize: 20),
//                     )
//                   ],
//                 ),