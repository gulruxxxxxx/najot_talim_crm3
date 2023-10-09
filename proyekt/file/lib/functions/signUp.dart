import 'package:file/functions/selectGender.dart';
import 'package:file/functions/validator.dart';
import 'package:file/models/student.dart';
import 'package:file/runApp.dart';

Student signUp() {
  var id = validator("ID");
  var firstname = validator("Firstname");
  var lastname = validator("Lastname");
  var password = validator("Password");
  var course = validator("Course");
  late bool isMale;
  isMale = selectGender();

  var student = Student(
      id: id,
      firstname: firstname,
      lastname: lastname,
      password: password,
      isMale: isMale,
      course: course);
  registeredStudents.add(student);
  return student;
}
