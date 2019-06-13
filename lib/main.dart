import 'package:flutter/material.dart';
import 'package:fish_redux/fish_redux.dart';
import 'page/demoPage/page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    print('main');
    final AbstractRoutes routes = HybridRoutes(routes: <AbstractRoutes>[
      PageRoutes(
        pages: <String, Page<Object, dynamic>>{
          'main': testPage(),
        },
      ),
    ]);
    return MaterialApp(
      title: 'Simple',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: routes.buildPage('main', null),
    );
  }
}

