
import 'package:file/conts/constants.dart';
import 'package:file/functions/clearTerminal.dart';
import 'package:file/functions/selectCommand.dart';
import 'package:file/runApp.dart';

bool isTerminated = true;
void showMenu() {
  //TODO 2:Menu Driven ilova qilish

  while (isTerminated) {
    clearTerminal();
    print(
        student == null ? AppConstansts.signUpText : AppConstansts.studentText);
    selectCommand();
  }
}
