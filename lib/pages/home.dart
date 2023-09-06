import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HomeState();
  }
}

class _HomeState extends State<Home> {
  Map data = {};

  @override
  Widget build(BuildContext context) {
    // retrieve data from loading screen
    data = ModalRoute.of(context)!.settings.arguments as Map;
    print(data);

    return Scaffold(
        body: SafeArea(
      child: Column(children: <Widget>[
        TextButton.icon(
            onPressed: () {
              Navigator.pushNamed(context, '/location');
            },
            icon: const Icon(Icons.edit_location),
            label: Text('Edit Location'))
      ]),
    ));
  }
}
