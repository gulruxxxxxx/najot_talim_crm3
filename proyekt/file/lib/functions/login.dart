import 'dart:io';

import 'package:file/functions/validator.dart';
import 'package:file/runApp.dart';

void login() {
  var id = validator("ID");
  var password = validator("Password");

  try {
    var foundstudent = registeredStudents.firstWhere(
        (element) => element.id == id && element.password == password);
    student = foundstudent;
  } catch (error) {
    print("User is not found!");
    stdin.readLineSync();
  }
}
