import 'dart:convert';

ApiData apiDataFromjson(String str)=>ApiData.fromJson(jsonDecode(str));

class ApiData{
  String name;
  int age;
  bool? ismarried;
  List<dynamic> hobbies;
  
  ApiData({
    required this.name,
    required this.age,
    required this.ismarried,
    required this.hobbies,
  });

  factory ApiData.fromJson(Map<String, dynamic>json)=>ApiData(
    name: json["name"], 
    age: json["age"], 
    ismarried: json["ismarried"], 
    hobbies: json["hobbies"]
  );
} 