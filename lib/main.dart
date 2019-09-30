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
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
         title: Text('My Resume'),
      ),
       body: TabBarView(
        children: <Widget>[HomeBody(), Contacts()],
      ),
       bottomNavigationBar: Container(
        child: TabBar(
          tabs: <Widget>[
          Tab(text: 'Home', icon: Icon(Icons.home),),
          Tab(text: 'Home', icon: Icon(Icons.email),)
        ],
      ),
      ),
      )
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
    list.add(Text('Gagan', style: standardTextStyle,));
    list.add(Image.asset('images/Gagan2.jpg'));
    for(int i = 0; i < info.length; i++) {
      list.add(Text(info[i], style: standardStyle,));
    }
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: list),
      ],
    );
  }
}

class Contacts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

  }
}

TextStyle standardStyle = TextStyle(
  fontSize: 20,
  color: Colors.deepOrange,
  fontFamily: 'Times'
);

TextStyle standardTextStyle = TextStyle(
  fontSize: 34,
  color: Colors.deepOrange,
  fontFamily: 'Times'
);

