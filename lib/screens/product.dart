import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_shop_dashboard/controller/main_controller.dart';
import 'package:my_shop_dashboard/screens/add_product.dart';
import 'package:my_shop_dashboard/screens/add_product_type.dart';
import 'package:my_shop_dashboard/screens/product_page.dart';
import 'package:my_shop_dashboard/screens/product_type.dart';
import 'package:simple_list_tile/simple_list_tile.dart';

class ProductPage extends StatelessWidget {
  const ProductPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Product Page'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: ListView(
            children: [
              GetBuilder<MainController>(
                builder: (logic) {
                  return SimpleListTile(
                    onTap: () {
                      Get.to(() => const ProductType());
                    },
                    title: const Text(
                      'product type',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                    trailing: const Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.white,
                    ),
                    leading: const Icon(
                      Icons.add_shopping_cart,
                      color: Colors.white,
                    ),
                    borderRadius: BorderRadius.circular(20),
                    tileColor: const Color(0xFFF67952),
                    circleColor: const Color(0xFFF67952),
                    circleDiameter: 200,
                    gradient: const LinearGradient(
                      colors: [Colors.blue, Colors.indigo],
                    ),
                  );
                },
              ),
              const SizedBox(
                height: 50,
              ),
              SimpleListTile(
                onTap: () {
                  Get.to(AllProduct());
                },
                title: const Text(
                  'Show all product',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                trailing: const Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.white,
                ),
                leading: const Icon(
                  Icons.add_shopping_cart,
                  color: Colors.white,
                ),
                borderRadius: BorderRadius.circular(20),
                tileColor: const Color(0xFFF67952),
                circleColor: const Color(0xFFF67952),
                circleDiameter: 200,
                gradient: const LinearGradient(
                  colors: [Colors.blue, Colors.indigo],
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              GetBuilder<MainController>(
                builder: (logic) {
                  return SimpleListTile(
                    onTap: () async {
                      await logic.getAllType();
                      Get.to(() => AddProduct());
                    },
                    title: const Text(
                      'add new product',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                    trailing: const Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.white,
                    ),
                    leading: const Icon(
                      Icons.add_shopping_cart,
                      color: Colors.white,
                    ),
                    borderRadius: BorderRadius.circular(20),
                    tileColor: const Color(0xFFF67952),
                    circleColor: const Color(0xFFF67952),
                    circleDiameter: 200,
                    gradient: const LinearGradient(
                      colors: [Colors.blue, Colors.indigo],
                    ),
                  );
                },
              ),
            ],
          ),
        ));
  }
}
