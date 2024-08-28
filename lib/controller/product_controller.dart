import 'package:flutter_getx_sample/model/product_model.dart';
import 'package:get/get.dart';

class ProductController extends GetxController{
    Rx<ProductModel> productModel =
      ProductModel(name: "pofak", price: "10000", off: "50%").obs;
}