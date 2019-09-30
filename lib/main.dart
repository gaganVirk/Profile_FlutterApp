import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
          title: 'Using Material',
          theme: ThemeData(
            primarySwatch: Colors.amber
          ),
          home: HomeWidget(),
        );
  }
}

class HomeWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Home'),
      ),
      body: HomeBody(),
    );
  }
}

List<String> info = [
  'Gagandeep',
  'Conyers Street',
  'gagan@gmail.com',
  '0210712104'
];

class HomeBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Widget> list = List<Widget>();
    list.add(Text(info[0], style: titleTextStyle,));
    for(int i = 0; i < info.length; i++) {
      list.add(Text(info[i], style: standardTextStyle,));
    }
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: list),
      ],
    );
  }
}

