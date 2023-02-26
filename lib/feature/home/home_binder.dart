import 'package:bill_app/feature/home/home_view_model.dart';
import 'package:get/instance_manager.dart';

class HomeBinder extends Bindings {
  @override
  void dependencies() {
    Get.put<HomeViewModel>(HomeViewModel());
  }
}
