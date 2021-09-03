import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:state_management/controllers/countController.dart';
import 'package:state_management/controllers/userController.dart';
import 'package:state_management/screens/third.dart';

class Second extends StatelessWidget {
  const Second({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final UserController userController = Get.put(UserController());

    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(width: double.infinity),
          // Rebuilds on Update
          GetBuilder<CountController>(
            builder: (controller) =>
                Text('Get Builder Count: ${controller.count}'),
          ),
          SizedBox(
            height: 16.0,
          ),
          // Updates when controller state changes

          Obx(() => Text('Name: ${userController.user.value.name}')),
          SizedBox(
            height: 16.0,
          ),
          // Updates when controller state changes
          // Has properties like initState dispose didChangeDependencies etc.
          GetX<UserController>(
            builder: (controller) =>
                Text('Count: ${controller.user.value.count}'),
          ),
          ElevatedButton(
            onPressed: () {
              Get.to(() => Third());
            },
            child: Text('GoTo Third Screen'),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          userController.updateUser(50);
        },
        child: Text('Change'),
      ),
    );
  }
}
