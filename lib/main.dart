import 'package:counter_app/screens/counter/provider/counter_provider.dart';
import 'package:counter_app/screens/counter/view/counter_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create: (context) => Counterprovider(),
    child: MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => CounterScreen(),
      },
    ),
  ));
}
