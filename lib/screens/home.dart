import 'package:catbreeds/controllers/HomeController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      init: HomeController(),
      builder: (controller) {
        return Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.deepPurple,
            elevation: 0,
          ),
          body: const Center(
            child: Text("Hello"),
          ),
        );
      },
    );
  }
}
