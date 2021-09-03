import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:state_management/controllers/sumController.dart';

class Third extends StatelessWidget {
  const Third({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final sumController = Get.put(SumController());

    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(width: double.infinity),
          Obx(
            () => Text('Count 1: ${sumController.count1.value}'),
          ),
          Obx(
            () => Text('Count 2: ${sumController.count2.value}'),
          ),
          SizedBox(height: 32.0),
          Obx(
            () => Text('Sum: ${sumController.sum}'),
          ),
          SizedBox(height: 32.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ElevatedButton(
                onPressed: () {
                  sumController.incrementCount1();
                },
                child: Text('Count 1++'),
              ),
              ElevatedButton(
                onPressed: () {
                  sumController.incrementCount2();
                },
                child: Text('Count 2++'),
              ),
            ],
          )
        ],
      ),
    );
  }
}
