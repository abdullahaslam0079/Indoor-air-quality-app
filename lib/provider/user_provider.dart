import 'package:flutter/cupertino.dart';

class UserProvider extends ChangeNotifier{
  bool isOnboarded = false;

  void changeIsOnboardedStatus(bool isOnboard){
    isOnboarded = isOnboard;
    print('This is the status ::: '+ isOnboarded.toString());
  }

}