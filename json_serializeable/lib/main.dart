import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:json_serializeable/user.dart';

void main() {
  String jsonString =
      '{"name": "John Smith", "email": "john@example.com", "address" :{"street": "Trung Kinh", "city": "Ha Noi"} }';

  // giải mã json thành Map
  Map<String, dynamic> jsonMap = jsonDecode(jsonString);
  print("====chuyển từ json thành dữ liệu Map=====");
  print(jsonMap);
  ////Tạo đối tượng user từ jsonMap
  User user = User.fromJson(jsonMap);

  // // in ra từng thuộc tính của user
  print("===========thông tin của từng object==========");
  print("Name of user is: ${user.name}");
  print("Email of user is: ${user.email}");
  print("Adress of user is: ${user.address!.city}");
  print("Adress of user is: ${user.address!.street}");

  user.address!.street = "Cau Dien";
  Map<String, dynamic> toJson = user.toJson();
  // Mã hoá Map thành json
  jsonString = jsonEncode(toJson);
  print("=====chuyển từ dữ liệu Map qua json=====");
  print(jsonString);
}
