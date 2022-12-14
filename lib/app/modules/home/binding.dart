import 'package:flutter_getx_todo/app/data/providers/task/provider.dart';
import 'package:flutter_getx_todo/app/data/services/storage/repository.dart';
import 'package:flutter_getx_todo/app/modules/home/controller.dart';
import 'package:get/instance_manager.dart';

class HomeBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HomeController(
      taskRepository: TaskRepository(
        taskProvider: TaskProvider(),
      ),
      ),);
  }
}
