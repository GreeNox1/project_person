import 'dart:convert';

List<Person> personListFromJson(String data)
=> List<Person>.from(jsonDecode(data).map((e)
=> Person.fromJson(e)));

String personToJson(Person person)
=> jsonEncode(person.toJson());

class Person{

  late String name;
  late int age;
  late bool isStudent;
  late List<int> grades;
  late Address address;

  Person.fromJson(Map<String, dynamic> json){
    name = json["name"];
    age = json["age"];
    isStudent = json["isStudent"];
    grades = List<int>.from(json["grades"].map((e) => e));
    address = Address.fromJson(json["address"]);
  }

  Map<String, dynamic> toJson(){
    Map<String, dynamic> map = {
      "name": name,
      "age": age,
      "isStudent": isStudent,
      "grades": grades,
      "address": address
    };
    return map;
  }

  @override
  String toString() {
    return "Name: $name \nAge: $age \nIs Student: $isStudent \nGrades: $grades \nAddress: \n{\n$address\n}";
  }

}

class Address{

  late String city;
  late String zipCode;

  Address.fromJson(Map<String, dynamic> json){
    city = json["city"];
    zipCode = json["zipCode"];
  }

  Map<String, dynamic> toJson(){
    Map<String, dynamic> map = {
      "city": city,
      "zipCode": zipCode
    };
    return map;
  }

  @override
  String toString() {
    return "\tCity: $city \n\tZip Code: $zipCode";
  }
}