import 'package:dice_appget/src/controller/home_dice_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Diceapp extends StatelessWidget {
  Diceapp({super.key});

  final controller = Get.put(HomeController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text(
          'DICEAPP',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w900,
            fontSize: 35,
          ),
        ),
        backgroundColor: Colors.black,
        centerTitle: true,
        elevation: 0,
      ),
      body: Center(
        child: InkWell(
          onTap: () {
            controller.bas();
          },
          child: Row(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(12),
                  child: Obx(() {
                    return Image.asset(
                      'assets/dice${controller.teksher(controller.leftnumber.value)}.png',
                    );
                  }),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(12),
                  child: Obx(() {
                    return Image.asset(
                      'assets/dice${controller.teksher(controller.rightnumber.value)}.png',
                    );
                  }),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
