

import 'package:hive/hive.dart';

part 'person.g.dart';

@HiveType(typeId: 1)
class Person{
  Person({
    this.name,
    this.friends,
    this.age
});

  @HiveField(0)
  String? name;

  @HiveField(1,defaultValue: 15)
  int? age;

  @HiveField(2)
  List<Person>? friends;
}