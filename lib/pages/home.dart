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
      child: Padding(
        padding: const EdgeInsets.fromLTRB(0, 120, 0, 0),
        child: Column(
          children: <Widget>[
            TextButton.icon(
                onPressed: () {
                  Navigator.pushNamed(context, '/location');
                },
                icon: const Icon(Icons.edit_location),
                label: Text('Edit Location')),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  data['location'],
                  style: TextStyle(fontSize: 20, letterSpacing: 2),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              data['time'],
              style: TextStyle(fontSize: 60),
            ),
          ],
        ),
      ),
    ));
  }
}
