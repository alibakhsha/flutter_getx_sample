import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_getx_sample/controller/product_controller.dart';
import 'package:get/get.dart';

class ProductScreen extends StatelessWidget {
  ProductController productController = Get.put(ProductController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
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
                      val!.name = "aliiii";
                    },
                  );
                },
                child: const Text("Press")),
            ElevatedButton(
                onPressed: () {
                  Get.back();
                },
                child: const Text("back")),
          ],
        ),
      ),
    );
  }
}
