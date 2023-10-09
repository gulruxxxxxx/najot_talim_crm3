// ignore_for_file: public_member_api_docs, sort_constructors_first
 //TODO 1:Talaba klassni yaratish
class Student {
  final String id;
  final String firstname;
  final String lastname;
  final String password;
  final String? email;
  final bool isMale;
  final String course;
  const Student({
    required this.id,
    required this.firstname,
    required this.lastname,
    required this.password,
    this.email,
    required this.isMale,
    required this.course,
  });

  @override
  String toString() => '''
ID: $id, 
Firstname: $firstname
Lastname: $lastname
Password: $password
Email: $email
Gender : ${isMale?"Erkak" : "Ayol"}
Course: $course
''';
 
}
