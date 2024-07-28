import 'package:flutter/material.dart';
import 'package:json_data_ch8/screen/8.1%20Json%20Parsing/provider/json_provider.dart';
// import 'package:json_data_ch8/screen/8.1%20Json%20Parsing/provider/json_provider.dart';
import 'package:json_data_ch8/screen/8.1%20Json%20Parsing/userData/provider/user_provider.dart';
import 'package:json_data_ch8/screen/8.1%20Json%20Parsing/userData/view/UserPage.dart';
import 'package:json_data_ch8/screen/8.1%20Json%20Parsing/view/json_page.dart';
import 'package:json_data_ch8/screen/8.3%20Post%20Json/provider/post_provider.dart';
import 'package:json_data_ch8/screen/8.3%20Post%20Json/view/postPage.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => PostProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => UserProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => PhotoProvider(),
        ),
      ],
      builder: (context, child) => MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/json': (context) => JsonPage(),
        '/user': (context) => UserPage(),
        '/': (context) => PostScreen(),
      },
    );
  }
}
