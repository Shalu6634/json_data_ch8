import 'package:flutter/material.dart';
import 'package:json_data_ch8/screen/8.1%20Json%20Parsing/provider/json_provider.dart';
import 'package:json_data_ch8/screen/8.1%20Json%20Parsing/view/json_page.dart';
import 'package:provider/provider.dart';

void main()
{
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => PhotoProvider(),
      builder: (context, child) =>
      MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/': (context) => JsonPage(),
        },
      ),
    );
  }
}
