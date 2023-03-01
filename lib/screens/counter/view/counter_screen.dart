import 'package:counter_app/screens/counter/provider/counter_provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({Key? key}) : super(key: key);

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: Text("Counter Application"),centerTitle: true,),
        body: Center(
          child: Consumer<Counterprovider>(
            builder: (context, value, child) => Text("${value.i}",style: TextStyle(fontSize: 35),),
          ),
        ),
        floatingActionButton: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FloatingActionButton(
              child: Icon(Icons.add),
              onPressed: () {
                Provider.of<Counterprovider>(context,listen: false).increment();
              },
            ),
            SizedBox(width: 10),
            FloatingActionButton(
              child: Icon(Icons.remove),
              onPressed: () {
                Provider.of<Counterprovider>(context,listen: false).decrement();
              },
            ),
            SizedBox(width: 10),
            FloatingActionButton(
              child: Text("2x"),
              onPressed: () {
              Provider.of<Counterprovider>(context,listen: false).two();
            },),
            SizedBox(width: 10),
            FloatingActionButton(
              child: Text("3x"),
              onPressed: () {
              Provider.of<Counterprovider>(context,listen: false).three();
            },),
            SizedBox(width: 10),
            FloatingActionButton(
              child: Text("4x"),
              onPressed: () {
              Provider.of<Counterprovider>(context,listen: false).four();
            },),
          ],
        ),
      ),
    );
  }
}
