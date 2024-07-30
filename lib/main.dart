import 'package:flutter/material.dart';
import 'package:json_data_ch8/screen/8.3Json%20Data%20Parsing/provider/post_provider.dart';
import 'package:json_data_ch8/screen/8.3Json%20Data%20Parsing/view/PostScreen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => PostsProvider(),
        )
      ],
      builder: (context, child) => MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, routes: {
      '/': (context) => PostsScreen(),
    });
  }
}
