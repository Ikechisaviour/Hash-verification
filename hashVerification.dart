import 'package:flutter/material.dart';
// import 'dart:developer';
import 'package:crypto/crypto.dart';
import 'dart:convert';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String _counter = "Hash";
  // String _counter = counter.toString();
  // var _counter = String.parse(counter);
  // @override
  // void initState() {
  //   super.initState();
  //   hashing();
  // }

  int a = 1;
  int number = 0;
  List<String> hash3 = [
    "0xbdba956405caa875dfab026bf02e0275398dc0fe43a3f99cb2e64160c2f54417",
    "0xc9342ce5f4c3d692e516114a09c8cbe49db898adc00788be1217ce1cf8049059",
    "0xac157e8968f8483f0750d8ddda3fdea4b54f42c61801c4ef3efa7d1b238cab55",
    "0x98d3f398ab3009fd599e6349fdf1abd66ab78d1a993cd0792b697cbfcde4d606",
    "0xb3028735478b63082474c80e81f64739b3a32699dabff865a2987198ee3b9bc5",
    "0x3c0fa804b678f6625445f228874a4caf8a6fd1b30fd0011c696bebf448f9c2d4",
    "0x52a161575bcc5fad69897b17cd75f913ca4a58f5426815842312a8481cd284ce",
    "0x5070d0a602109a606bc28760d2873fa3256ece04242f7d872f0860d7c36f67bb",
    "0x6e06329fae4b65788d55a88905521b9c63c544002c975d0301e3eeaf1b72e350",
    "0x8216a87a911dcb9c1c776b72ffcd82ed9374ae8886f88b2d31bf31ce0eb25620",
    "0x38b7eff85d118396c37d34de3bacbdf5471b05471dcedae36105f1958f91a91b"
  ];

  // void hashing() {
  //   var hashAny =
  //       "0x52cae73b300560b9509a43f413d12399afe9269b20e27ce0a55a782c12739304";

  //   for (var i = 0; i < 1000000; i++) {
  //     var appleInByte = utf8.encode(hashAny);
  //     var numbe = sha256.convert(appleInByte);
  //     hashAny = numbe.toString();
  //     hash3.add(hashAny);
  //   }
  //   _counter = hash3.length.toString();
  // }

  // hashing();

  void _incrementCounter() {
    setState(() {
      String hash2 =
          "0x52cae73b300560b9509a43f413d12399afe9269b20e27ce0a55a782c12739304";

      var appleInBytes = utf8.encode(hash2);
      String counter1 = "0x" + sha256.convert(appleInBytes).toString();

      _counter = "invalid";

      int zzz = hash3.length;
      for (var i = 0; i < hash3.length; i++) {
        if (counter1 == hash3[i]) {
          _counter = "hash2 is valid, but hash1 is not valid";

          String hash1 =
              "0x05d6d6a79e0730c1b5db26a2c4ffe5926dc9c1003e5e0ca48064ba1cb0cbcea9";

          var appleInBytes = utf8.encode(hash1);
          hash1 = "0x" + sha256.convert(appleInBytes).toString();

          if (hash1 == hash2) {
            _counter = "hash2 and hash1 are valid ";
          }
          // }
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Invoke "debug painting" (press "p" in the console, choose the
          // "Toggle Debug Paint" action from the Flutter Inspector in Android
          // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
          // to see the wireframe for each widget.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
