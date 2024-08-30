import 'package:flutter_getx_sample/model/product_model.dart';
import 'package:get/get.dart';

class ProductGetbuilderController extends GetxController {
  ProductModel productModel =
      ProductModel(name: "pofak", price: "10000", off: "50%");

  setNewProduct() {
    productModel = ProductModel(name: "brenj", price: "1000000", off: "20%");
    update();
  }
}
