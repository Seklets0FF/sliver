import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Sliver',
      theme: ThemeData.light(),
      home: MyHomePage(title: 'Flutter Sliver Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.greenAccent,
        child: CustomScrollView(
          slivers: [
            SliverAppBar(
              expandedHeight: 200.0,
              stretch: true,
              flexibleSpace: FlexibleSpaceBar(
                background: Image.asset('assets/img/header.jpg', fit: BoxFit.cover),
                title: Text('Flutter Sliver Title'),
                stretchModes: [
                  StretchMode.zoomBackground,
                  StretchMode.fadeTitle
                ],
              ),
            ),
            SliverList(delegate: SliverChildListDelegate([
              Container(color: Colors.blue, height: 150.0,),
              Container(color: Colors.green, height: 150.0,),
              Container(color: Colors.red, height: 150.0,),
              Container(color: Colors.yellow, height: 150.0,),
              Container(color: Colors.orangeAccent, height: 150.0,),
              Container(color: Colors.deepPurple, height: 150.0,),
              Container(color: Colors.greenAccent, height: 150.0,),
            ]))
          ],
        ),
      ),
    );
  }
}
