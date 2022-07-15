import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_shop_dashboard/model/product_model.dart';
import 'package:my_shop_dashboard/screens/search-result.dart';
import 'package:my_shop_dashboard/widgets/feature_item.dart';
import 'package:search_page/search_page.dart';

import '../controller/main_controller.dart';

class AllProduct extends StatelessWidget {
  AllProduct({Key? key}) : super(key: key);
  MainController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        title: const Text('All Product'),
      ),
      floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.search),
          tooltip: 'Search product',
          onPressed: () => showSearch(
                context: context,
                delegate: SearchPage<Product>(
                  searchStyle: const TextStyle(
                      color: Colors.green, backgroundColor: Colors.black),
                  items: controller.products,
                  searchLabel: 'Search product',
                  suggestion: const Center(
                    child: Text('Filter product by name, price '),
                  ),
                  failure: const Center(
                    child: Text('No product found :('),
                  ),
                  filter: (person) => [
                    person.name,
                    person.price.toString(),
                  ],
                  builder: (person) => ListTile(
                    onTap: () {
                      Get.to(() => SearchResult(
                            data: person,
                          ));
                    },
                    title: Text('name: ' + person.name!),
                    subtitle: Text('price:  ' + person.price!.toString()),
                  ),
                ),
              )),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Obx(() {
          return controller.products.isEmpty
              ? const Center(
                  child: Text('no products founded'),
                )
              : ListView.builder(
                  itemCount: controller.products.length,
                  itemBuilder: (BuildContext context, int index) {
                    return FeatureItem(data: controller.products[index]);
                  },
                );
        }),
      ),
    );
  }
}
