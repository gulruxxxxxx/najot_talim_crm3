
import 'package:file/functions/showAuthScreen.dart';
import 'package:file/functions/showInfoScreen.dart';
import 'package:file/runApp.dart';


void selectCommand() {
  if (student == null) {
    showAuthScreen();
  } else {
    showInfoScreen();
  }
}

