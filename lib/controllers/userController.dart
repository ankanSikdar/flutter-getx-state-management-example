import 'package:get/get.dart';
import 'package:state_management/models/user.dart';

class UserController extends GetxController {
  final user = User().obs;

  void updateUser(int count) {
    user.update((val) {
      val!.name = 'Ankan';
      val.count = count;
    });
  }
}
