import 'validator.dart';

bool selectGender() {
  late bool isMale;

  bool isTerminated = true;
  do {
    isTerminated = true;
    print("Choose your gender : m(Male) / f(Female): ");
    var input = validator("Gender");
    try {
      switch (input) {
        case "m":
          isMale = true;
          break;
        case "f":
          isMale = false;
          break;
        default:
          throw Exception("Gender is chosen wrong");
      }
    } catch (error) {
      isTerminated = false;
    }
  } while (!isTerminated);
  return isMale;
}
