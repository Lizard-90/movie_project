//--------- header resourses --------

import 'package:flutter/material.dart';

String topHeaderString = '''Welcome to our platform! 
Please enter your credentials to access your account.''';
String secondHeaderString =
    '''   Once you've entered your information, simply click the "Login" button to access your account and unlock a world of possibilities.New to our platform? No worries! You can easily create a new account by following the "Create a new account" link.
''';

String secondHeaderString2 =
    '''It only takes a few moments, and you'll be up and running in no time.If you've forgotten your password, don't fret. Just click on the "Reset password" link, and we'll guide you through the process of setting up a new one.
''';

final errorText = null;
// ----- STYLES -------
const topHeaderStyle = TextStyle(
  fontSize: 16,
  color: Colors.black,
);

const formDecoration = InputDecoration(
  border: OutlineInputBorder(
    // borderSide: BorderSide(color: Colors.red, width: 3),
    borderRadius: BorderRadius.all(Radius.circular(8)),
  ),
  contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
  isCollapsed: true,
);

abstract class AbstButtonStyles {
  static final elevateBtnStyle = ButtonStyle(
    backgroundColor:
        MaterialStatePropertyAll(Color.fromARGB(255, 60, 209, 177)),
  );

  static final textBtnStyle = ButtonStyle(
    foregroundColor: MaterialStatePropertyAll(
      Color.fromARGB(255, 60, 209, 177),
    ),
  );
}

// == COLORS ==========

abstract class AppColors {
  static final mainDarkBlue = Color.fromRGBO(3, 37, 65, 1);
}
