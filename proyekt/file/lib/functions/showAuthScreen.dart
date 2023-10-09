import 'dart:io';

import 'package:file/functions/clearTerminal.dart';
import 'package:file/functions/login.dart';
import 'package:file/functions/showMenu.dart';
import 'package:file/functions/signUp.dart';
import 'package:file/functions/terminateApp.dart';
import 'package:file/runApp.dart';

void showAuthScreen() {
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
            student = signUp();
            print(student);
            break;
          case 2:
            login();
            break;
          case 3:
            isTerminated = terminateApp();
            break;
        }
      } else {
        print("The command you gave isnot accessible!");
      }
    }
  }
}


