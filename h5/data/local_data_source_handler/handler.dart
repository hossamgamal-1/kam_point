// import 'dart:convert';

// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;

Future /* <int> */ getPoints(String imagePath) async {
  // ignore: unused_local_variable
  String url = 'http://192.168.1.7:5000/api?imagePath=$imagePath';
  /*
  String url ='http://192.168.1.7:5000/api?imagePath=C:/Users/Administrator/Desktop/Resources/NewTextDocument/NewTextDocument.jpg';
  */
  try {
    // http.Response response = await http.get(Uri.parse(url));
    // Map<String, dynamic> recivedData = json.decode(response.body);
    // debugPrint(recivedData.toString());
    // int points = int.parse(recivedData['points']!);
    // return points;
  } catch (e) {
    return e.toString();
  }
}
