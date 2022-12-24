import 'package:flutter/material.dart';

import 'ui/home_page.dart';
import 'resume/resume.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Gerador de CV',
      home: HomePage(),
    );
  }
}
