import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'pages/home.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: [
    SystemUiOverlay.bottom,
  ]);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Alwafi',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
