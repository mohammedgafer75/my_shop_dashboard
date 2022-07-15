import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_shop_dashboard/controller/main_controller.dart';

import '../widgets/custom_button.dart';
import '../widgets/custom_textfield.dart';

class AddProductType extends StatelessWidget {
  const AddProductType({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add Product'),
      ),
      body: GetBuilder<MainController>(
        builder: (logic) {
          return SizedBox(
            child: Form(
              key: logic.formKey,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: ListView(
                  children: [
                    GetBuilder<MainController>(
                      id: const ['image'],
                      builder: (logic) {
                        return GestureDetector(
                          onTap: () {
                            logic.selectImage();
                          },
                          child: CircleAvatar(
                            maxRadius: 70,
                            backgroundImage: Image.asset(
                              'assets/images/hh_icons.gif',
                            ).image,
                            // child: const Icon(Icons.add_a_photo,
                            //     color: Colors.white),
                          ),
                        );
                      },
                    ),
                    CustomTextField(
                        controller: logic.name,
                        validator: (validator) {
                          return logic.validate(validator!);
                        },
                        lable: 'product type',
                        icon: const Icon(Icons.add_shopping_cart),
                        input: TextInputType.text),
                    const SizedBox(
                      height: 20,
                    ),
                    CustomTextButton(
                        lable: 'add',
                        ontap: () {
                          logic.addProductType();
                        },
                        color: Colors.indigo),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
