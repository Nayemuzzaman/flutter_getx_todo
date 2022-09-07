import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_getx_todo/app/core/utils/extension.dart';
import 'package:flutter_getx_todo/app/data/models/task.dart';
import 'package:flutter_getx_todo/app/modules/home/controller.dart';
import 'package:flutter_getx_todo/app/widgets/add_card.dart';
import 'package:flutter_getx_todo/app/widgets/task_card.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class HomePage extends GetView<HomeController> {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            Padding(
              padding:  EdgeInsets.all(4.0.wp),
              child: Text('My List',
              style: TextStyle(
                fontSize: 24.0.sp,
                fontWeight: FontWeight.bold,
              ),
              ),
            ),

            Obx(
              () => GridView.count(
                crossAxisCount: 2,
                shrinkWrap: true,
                physics: const ClampingScrollPhysics(),
                children: [
                  ...controller.tasks
                  .map((element) => TaskCard(task: element))
                  .toList(),
                  AddCard(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
