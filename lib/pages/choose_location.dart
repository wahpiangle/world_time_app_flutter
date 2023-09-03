import 'package:flutter/material.dart';

class ChooseLocation extends StatefulWidget {
  const ChooseLocation({super.key});

  @override
  State<ChooseLocation> createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {
  Future getData() async {
    String user = await Future.delayed(Duration(seconds: 2), () {
      return 'user info';
    });

    String statement = await Future.delayed(Duration(seconds: 2), () {
      return ('$user is fetched');
    });

    print(statement);
  }

  @override
  void initState() {
    super.initState();
    getData();
    print('test');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[200],
        appBar: AppBar(
          title: Text('Choose a location'),
          centerTitle: true,
          elevation: 0,
          backgroundColor: Colors.blue[900],
        ),
        body: Text('d'));
  }
}
