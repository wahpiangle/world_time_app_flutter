import 'dart:convert';
import 'package:http/http.dart';
import 'package:intl/intl.dart';

class WorldTime {
  String location;
  String time = "";
  String flag;
  String url;
  late bool isDayTime; //late means that the variable will be initialized later

  WorldTime({required this.location, required this.flag, required this.url});

  //this means that the function will return a future before it returns void
  Future<String> getTime() async {
    try {
      Response response = await get(
        Uri.parse('https://www.timeapi.io/api/Time/current/zone?timeZone=$url'),
      );
      Map data = jsonDecode(response.body);
      DateTime now = DateTime.parse(
        data['dateTime'],
      );
      time = DateFormat.jm().format(now);
      isDayTime = now.hour > 6 && now.hour < 20 ? true : false;
      return time;
    } catch (e) {
      time = 'Could not get time data';
      return time;
    }
  }
}
