import 'dart:convert';

import 'package:http/http.dart' as http;

Future<int> getPoints(String imagePath) async {
  String url = 'http://192.168.1.6:5000/api?imagePath=$imagePath';

  try {
    http.Response response = await http.get(Uri.parse(url));
    Map<String, dynamic> recivedData = json.decode(response.body);
    print(recivedData);
    int points = int.parse(recivedData['points']!);
    return points;
  } catch (e) {
    print(e);
    return -1;
  }
}
