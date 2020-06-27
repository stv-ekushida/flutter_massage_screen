import 'package:flutter/material.dart';
import 'package:flutter_massage_screen/viewmodels/message_viewmodel.dart';
import 'package:flutter_massage_screen/views/screens/message_detail_page.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(
    child: MyApp(),
    providers: [
      ChangeNotifierProvider(
        create: (context) => MessageViewModel(),
      )
    ],
  ));
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Message Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MessageDetailPage(),
    );
  }
}
