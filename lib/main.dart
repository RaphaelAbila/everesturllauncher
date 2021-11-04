import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  _myappview createState() => _myappview();
}

class _myappview extends State<MyApp> {
  @override
  void initState() {
    _getThingsOnStartup().then((value) {
      print('Async done');
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }

  _getThingsOnStartup() async {
     String url = "http://www.toweroflove.org/learn/";
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      print('Could not launch $url');
    }
  }
}
