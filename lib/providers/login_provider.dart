import 'package:flutter/foundation.dart';
import 'package:kara_test/webservices/client.dart';


enum AutorizeState {autorized, logged, unautorized}

class LoginProvider with ChangeNotifier {
  
  AutorizeState state = AutorizeState.unautorized;
  bool isRequestSuccessfull = false;
  String message = "";
  String phone = "";

  login(String request) async {
    try {
      state = AutorizeState.unautorized;
      var response = await Client.getClient()?.login(request);
      if (response?.status == true) {
        isRequestSuccessfull = true;
        state = AutorizeState.logged;
        message = response?.message ?? "";
        notifyListeners();
      } else {
        isRequestSuccessfull = false;
        state = AutorizeState.unautorized;
        message = response?.message ?? "";
        notifyListeners();
      }
    } on Exception catch (e) {
      isRequestSuccessfull = false;
      state = AutorizeState.unautorized;
      message = e.toString();
      notifyListeners();
    }
  }

  verify(String number, String code) async {
    try {
      state = AutorizeState.logged;
      var response = await Client.getClient()?.verify(number, code);
      if (response?.status == true) {
        isRequestSuccessfull = true;
        state = AutorizeState.autorized;
        message = response?.message ?? "";
        notifyListeners();
      } else {
        isRequestSuccessfull = false;
        state = AutorizeState.logged;
        message = response?.message ?? "";
        notifyListeners();
      }
    } on Exception catch (e) {
      isRequestSuccessfull = false;
      state = AutorizeState.logged;
      message = e.toString();
      notifyListeners();
    }
  }
}
