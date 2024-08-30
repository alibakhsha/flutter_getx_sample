import 'package:flutter/material.dart';
import 'package:flutter_getx_sample/controller/product_controller.dart';
import 'package:flutter_getx_sample/controller/product_getbuilder_controller.dart';
import 'package:get/get.dart';

class ProductScreenGetbuilder extends StatelessWidget {
  const ProductScreenGetbuilder({super.key});

  // ProductController productController = Get.put(ProductController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GetBuilder<ProductGetbuilderController>(
                init: ProductGetbuilderController(),
                builder:
                    (ProductGetbuilderController productControllerGetBuilder) {
                  return Column(
                    children: [
                      Text(
                          "product name: ${productControllerGetBuilder.productModel.name}"),
                      Text(
                          "product price: ${productControllerGetBuilder.productModel.price}"),
                      Text(
                          "product off: ${productControllerGetBuilder.productModel.off}"),
                    ],
                  );
                }),
            ElevatedButton(
                onPressed: () {
                  Get.find<ProductGetbuilderController>().setNewProduct();
                },
                child: const Text("Press")),
            ElevatedButton(
                onPressed: () {
                  Get.delete<ProductGetbuilderController>();
                },
                child: const Text("delete controller")),
          ],
        ),
      ),
    );
  }
}
