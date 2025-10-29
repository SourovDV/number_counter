import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:number_counter/App/models/controller/home_controller.dart';

class HomeView extends  StatelessWidget {
   HomeView({super.key});

   final dependency = Get.put(HomeController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("check getx")),
      body: Center(
        child: Column(
          children: [
            Obx(() => Text("${dependency.number}")),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(onPressed: ()=>dependency.increment(), child: Text("btn-1")),

              ],
            ),
          ],
        ),
      ),
    );
  }
}
