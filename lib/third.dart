import 'package:flutter/cupertino.dart';

class third extends ChangeNotifier
{

  int sub=0;

  fun_sub(String a, String b)
  {
    sub=int.parse(a)-int.parse(b);
    notifyListeners();
  }
}