import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_shop_dashboard/controller/auth_controller.dart';
import 'package:my_shop_dashboard/screens/customer.dart';
import 'package:my_shop_dashboard/screens/delivery.dart';
import 'package:my_shop_dashboard/screens/product.dart';
import 'package:simple_list_tile/simple_list_tile.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);
  AuthController controller = Get.find();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Admin Panel'),
        actions: [
          IconButton(
              onPressed: () {
                controller.signOut();
              },
              icon: const Icon(Icons.logout))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: ListView(
          children: [
            SimpleListTile(
              onTap: () {
                Get.to(const ProductPage());
              },
              title: const Text(
                'Product Management',
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
                Icons.shopping_cart,
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
            SimpleListTile(
              onTap: () {
                Get.to(DeliveryManagement());
              },
              title: const Text(
                'Delivery  Management',
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
                Icons.delivery_dining,
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
            SimpleListTile(
              onTap: () {
                Get.to(() => CustomerManagement());
              },
              title: const Text(
                'Customers  Management',
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
                Icons.person,
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
          ],
        ),
      ),
    );
  }
}
