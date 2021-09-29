import 'package:flutter/material.dart';
import 'package:flutter_multi_provider/height_provider.dart';
import 'package:flutter_multi_provider/home_page.dart';
import 'package:flutter_multi_provider/weight_provider.dart';
import 'package:provider/provider.dart';
import 'home_page.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<WeightProvider>(create: (context) => WeightProvider()),
        ChangeNotifierProvider<HeightProvider>(create: (context) => HeightProvider()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomePage(),
      ),
    );
  }
}
