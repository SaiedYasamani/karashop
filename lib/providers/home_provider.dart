import 'package:flutter/foundation.dart';
import 'package:kara_test/models/category_response/term.dart';
import 'package:kara_test/models/product_response/product.dart';
import 'package:kara_test/webservices/client.dart';

class HomeProvider with ChangeNotifier {
  List<Product> products = [const Product(title: "Products Empty")];
  List<Term> categories = [const Term(name: "Categories Empty")];
  bool isSuccessfull = false;
  String message = "";

  getProducts() async {
    try {
      var response = await Client.getClient()?.products();
      if (response?.status == true) {
        products.clear();
        products.addAll(response?.data?.products ?? []);
        isSuccessfull = true;
        notifyListeners();
      } else {
        isSuccessfull = false;
        message = response?.message ?? "";
        notifyListeners();
      }
    } on Exception catch (e) {
      isSuccessfull = false;
      message = e.toString();
      notifyListeners();
    }
  }

  getCategories() async {
    try {
      var response = await Client.getClient()?.category();
      if (response?.status == true) {
        categories.clear();
        categories.addAll(response?.data?.terms ?? []);
        isSuccessfull = true;
        notifyListeners();
      } else {
        isSuccessfull = false;
        message = response?.message ?? "";
        notifyListeners();
      }
    } on Exception catch (e) {
      isSuccessfull = false;
      message = e.toString();
      notifyListeners();
    }
  }
}
