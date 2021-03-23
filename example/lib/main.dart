import 'package:flutter/material.dart';
import 'package:link_previewer/link_previewer.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, this.title}) : super(key: key);

  final String? title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title!),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            LinkPreviewer(
              link: 'https://github.com/dmlapteacru/flutter-link-previewer',
              direction: ContentDirection.horizontal,
              borderRadius: 0.0,
            ),
            const SizedBox(height: 24.0),
            LinkPreviewer(
              link: 'https://github.com/dmlapteacru/flutter-link-previewer',
              direction: ContentDirection.vertical,
              borderRadius: 0.0,
            ),
          ],
        ),
      ),
    );
  }
}
