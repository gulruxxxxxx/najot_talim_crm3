import 'dart:io';

String validator(String type) {
  bool isTerminated = true;
  late String? input;
  do {
    isTerminated = true;
    print("Please, enter your $type: ");
    input = stdin.readLineSync();
    try {
      if (input == null) {
        throw Exception("$type isnot given.Please, try again.");
      }
    } catch (error) {
      print("You gave wrong value for $type.Please give another value!");
      isTerminated = false;
    }
  } while (!isTerminated);
  return input!;
}
