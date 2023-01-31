import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:learn_json/user_model.dart';

void main() {
  String jsonString =
      '{"name": "John Smith", "email": "john@example.com", "phone": [13213546,54354686], "job" :[{"jobName": "Coder", "salary": 1500},{"jobName": "CoffeeShop", "salary": 2000}] }';

  // giải mã json thành Map
  Map<String, dynamic> jsonMap = jsonDecode(jsonString);
  print("====chuyển từ json thành dữ liệu Map=====");
  print(jsonMap);
  ////Tạo đối tượng user từ jsonMap
  User user = User.fromJsonMap(jsonMap);

  Map<String, dynamic> toJson = user.toJsonMap();
  // // in ra từng thuộc tính của user
  print("===========thông tin của từng object==========");
  print("Name of user is: ${user.name}");
  print("Email of user is: ${user.email}");
  print("Phone of user is: ${user.phone}");
  print("JobName 0 of user  is: ${user.jobList![0].jobName}");
  print("Salary 0 of user is: ${user.jobList![0].salary}");
  print("JobName 1 of user is: ${user.jobList![1].jobName}");
  print("Salary 1 of user is: ${user.jobList![1].salary}");

  // Mã hoá Map thành json
  jsonString = jsonEncode(toJson);
  print("=====chuyển từ dữ liệu Map qua json=====");
  print(jsonString);
}
