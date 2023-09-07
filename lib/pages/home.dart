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

    String bgImage = data['isDayTime'] ? 'day.png' : 'night.png';
    Color? bgColor = data['isDayTime'] ? Colors.blue : Colors.indigo[700];

    return Scaffold(
        backgroundColor: bgColor,
        body: SafeArea(
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/$bgImage'),
                fit: BoxFit.cover,
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(0, 120, 0, 0),
              child: Column(
                children: <Widget>[
                  TextButton.icon(
                    onPressed: () {
                      Navigator.pushNamed(context, '/location');
                    },
                    icon: Icon(
                      Icons.edit_location,
                      color: Colors.grey[300],
                    ),
                    label: Text(
                      'Edit Location',
                      style: TextStyle(
                        color: Colors.grey[300],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        data['location'],
                        style: TextStyle(
                          fontSize: 20,
                          letterSpacing: 2,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    data['time'],
                    style: TextStyle(
                      fontSize: 60,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
