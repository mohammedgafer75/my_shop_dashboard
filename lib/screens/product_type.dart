import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_shop_dashboard/screens/add_product_type.dart';

import '../controller/main_controller.dart';

class ProductType extends StatelessWidget {
  const ProductType({Key? key}) : super(key: key);
 

  @override
  Widget build(BuildContext context) {
     MainController controller = Get.find();
    return Scaffold(
      appBar: AppBar(
        title: const Text('ProductType Management'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.to(() => const AddProductType());
        },
        child: const Icon(Icons.add),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Obx(() {
          return controller.productType.isEmpty
              ? const Center(
                  child: Text('no data founded'),
                )
              : ListView.builder(
                  itemCount: controller.productType.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Card(
                        elevation: 5,
                        margin: const EdgeInsets.all(10),
                        child: Column(
                          children: [
                            ListTile(
                              title:
                                  Text('${controller.productType[index].type}'),
                              leading: CircleAvatar(
                                child: Text(
                                  '${index + 1}',
                                  style: const TextStyle(color: Colors.white),
                                ),
                                backgroundColor: Colors.amber.shade700,
                              ),
                              trailing: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  IconButton(
                                      onPressed: () {
                                        controller.editType(
                                            controller.productType[index].id!,controller.productType[index].type!);
                                      },
                                      icon: const Icon(Icons.edit)),
                                  IconButton(
                                    onPressed: () {
                                      controller.deleteType(
                                          controller.productType[index].id!);
                                    },
                                    icon: const Icon(Icons.delete),
                                    color: Colors.red,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ));
                  },
                );
        }),
      ),
    );
  }
}
