import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:state_management/controllers/countController.dart';

class First extends StatelessWidget {
  const First({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final CountController countController = Get.put(CountController());

    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(width: double.infinity),
          GetBuilder<CountController>(
            builder: (controller) => Text('Count: ${controller.count}'),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          countController.increment();
        },
        child: Icon(Icons.plus_one),
      ),
    );
  }
}
