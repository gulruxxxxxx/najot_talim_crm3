import 'dart:io';

import 'package:file/functions/clearTerminal.dart';
import 'package:file/functions/showMenu.dart';
import 'package:file/runApp.dart';

void showInfoScreen() {
  String? input = stdin.readLineSync();
  if (input == null) {
    print("You haven't entered a command!");
  } else {
    //Yaroqsiz qiymat kiritilsa:
    var parsedInput = int.tryParse(input);

    if (parsedInput == null) {
      print("You gave NULL value!");
    } else {
      clearTerminal();
      if (parsedInput <= 4 && parsedInput >= 1) {
        switch (parsedInput) {
          case 1:
            print(student);
            stdin.readLineSync();
            break;
          case 2:
            break;
          case 3:
            student = null;
            break;
          case 4:
            isTerminated = true;
            break;
        }
      } else {
        print("The command you gave isnot accessible!");
      }
    }
  }
}
