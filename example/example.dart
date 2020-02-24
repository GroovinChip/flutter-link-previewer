import 'package:flutter/material.dart';
import 'package:link_previewer/link_previewer.dart';

void main () {
  runApp(ExampleApp());
}

class ExampleApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LinkPreviewerExample(),
    );
  }
}

class LinkPreviewerExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          LinkPreviewer(
            link: "https://www.linkedin.com/feed/",
            direction: ContentDirection.horizontal,
            borderRadius: 14,
          ),
          LinkPreviewer(
            link: "https://www.linkedin.com/feed/",
            direction: ContentDirection.vertical,
          ),
        ],
      ),
    );
  }
}
