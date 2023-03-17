import 'package:flutter/cupertino.dart';

class HomeProvider extends ChangeNotifier
{
  TextEditingController sname=TextEditingController();
  TextEditingController semail=TextEditingController();
  TextEditingController spass=TextEditingController();
  TextEditingController scpass=TextEditingController();
  TextEditingController lname=TextEditingController();
  TextEditingController lpass=TextEditingController();

  int i = 0;

  void next()
  {
    if(i<2)
      {
        i++;
      }
    notifyListeners();
  }

  void back()
  {
    if(i>0)
    {
      i--;
    }
    notifyListeners();
  }

  void onstep(int value)
  {
    i= value;
    notifyListeners();
  }


}