import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
         MaterialButton(
           child: Text('跳转到搜索'),
           onPressed: () {
             Navigator.pushNamed(context, '/search');
           },
         )
        ],
      ),
    );
  }
}
