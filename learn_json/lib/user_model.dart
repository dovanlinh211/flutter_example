import 'dart:convert';

import 'package:learn_json/job_model.dart';

class User {
  String? name;
  String? email;
  List<int>? phone;
  List<Job>? jobList;
  User(this.email, this.name, this.jobList);

  User.fromJsonMap(Map<String, dynamic> jsonMap) {
    name = jsonMap["name"];
    email = jsonMap["email"];
    phone = jsonMap['phone'].cast<int>();
    if (jsonMap['job'] != null) {
      jobList = <Job>[];
      jsonMap['job'].forEach((v) {
        jobList!.add(Job.fromJsonMap(v));
      });
    }
  }

  Map<String, dynamic> toJsonMap() {
    Map<String, dynamic> jsonMap = new Map<String, dynamic>();
    jsonMap['name'] = this.name;
    jsonMap["email"] = this.email;
    jsonMap['phone'] = this.phone;
    if (this.jobList != null) {
      jsonMap['job'] = this.jobList!.map((value) => value.toJsonMap()).toList();
    }
    return jsonMap;
  }
}
