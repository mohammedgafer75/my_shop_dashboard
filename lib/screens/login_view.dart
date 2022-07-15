import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_shop_dashboard/widgets/custom_button.dart';

import '../controller/auth_controller.dart';
import '../widgets/constants.dart';
import '../widgets/custom_text.dart';

class LoginView extends StatelessWidget {
  final AuthController controller = Get.find();

  LoginView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final data = MediaQuery.of(context);
    final width = data.size.width;
    final height = data.size.height;
    return Scaffold(
      backgroundColor: Colors.indigo,
      body: Padding(
        padding: const EdgeInsets.only(
          top: 50,
          right: 20,
          left: 20,
        ),
        child: Form(
          key: controller.formKey,
          child: ListView(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomText(
                    text: "Welcome,",
                    fontSize: 30,
                    color: Colors.white,
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              CustomText(
                text: 'Sign in to Continue',
                fontSize: 14,
                color: Colors.grey,
              ),
              const SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10.0),
                child: Container(
                  padding:
                      EdgeInsets.only(right: width / 100, left: width / 100),
                  height: height * 0.1,
                  width: width * 0.8,
                  child: TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    controller: controller.email,
                    validator: (value) {
                      return controller.validateEmail(value!);
                    },
                    decoration: InputDecoration(
                      errorBorder: const UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.red, width: 3.0),
                      ),
                      focusedBorder: const UnderlineInputBorder(
                        borderSide:
                            BorderSide(color: Colors.blueAccent, width: 2.0),
                      ),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                            color: Colors.blue.withOpacity(.7), width: 1.0),
                      ),
                      prefixIcon: const Icon(
                        Icons.email,
                        color: Colors.white,
                      ),

                      labelText: 'Email',

                      labelStyle: const TextStyle(color: Colors.white),
                      // hintText: hint,
                      hintStyle: const TextStyle(color: Colors.white),
                    ),
                    style: const TextStyle(color: Colors.white),

                    //  style: kBodyText,
                  ),
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10.0),
                child: Container(
                  padding:
                      EdgeInsets.only(right: width / 100, left: width / 100),
                  height: height * 0.1,
                  width: width * 0.8,
                  child: TextFormField(
                    keyboardType: TextInputType.text,
                    controller: controller.password,
                    validator: (value) {
                      return controller.validatePassword(value!);
                    },
                    decoration: InputDecoration(
                      errorBorder: const UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.red, width: 3.0),
                      ),
                      focusedBorder: const UnderlineInputBorder(
                        borderSide:
                            BorderSide(color: Colors.blueAccent, width: 2.0),
                      ),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                            color: Colors.blue.withOpacity(.7), width: 1.0),
                      ),
                      prefixIcon: const Icon(
                        Icons.lock,
                        color: Colors.white,
                      ),

                      labelText: 'Password',

                      labelStyle: const TextStyle(color: Colors.white),
                      // hintText: hint,
                      hintStyle: const TextStyle(color: Colors.white),
                    ),
                    style: const TextStyle(color: Colors.white),

                    //  style: kBodyText,
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const SizedBox(
                height: 15,
              ),
              CustomTextButton(
                ontap: () {
                  controller.login();
                },
                lable: 'SIGN IN',
                color: primaryColor,
              ),
              const SizedBox(
                height: 40,
              ),
              const SizedBox(
                height: 40,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
