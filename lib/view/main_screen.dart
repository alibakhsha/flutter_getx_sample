import 'package:flutter/material.dart';
import 'package:flutter_getx_sample/controller/product_controller.dart';
import 'package:flutter_getx_sample/model/product_model.dart';
import 'package:flutter_getx_sample/view/product_screen.dart';
import 'package:get/get.dart';

class MainScreen extends StatelessWidget {
  MainScreen({super.key});

  // var counter = 0.obs;
  // RxInt counter = 0.obs;
  // var counter = RxInt(0);
  // var counter = Rx<int>(0);

  //Obx
  //GetX
  //GetBuilder

  ProductController productController = Get.put(ProductController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(
              () {
                return Column(
                  children: [
                    Text(
                        "product name: ${productController.productModel.value.name}"),
                    Text(
                        "product price: ${productController.productModel.value.price}"),
                    Text(
                        "product off: ${productController.productModel.value.off}"),
                  ],
                );
              },
            ),
            ElevatedButton(
                onPressed: () {
                  productController.productModel.update(
                    (val) {
                      val!.name = "chitoz";
                    },
                  );
                },
                child: const Text("Press")),
            ElevatedButton(
                onPressed: () {
                  Get.to(ProductScreen());
                },
                child: const Text("go"))
          ],
        ),
      ),
    );
  }
}
