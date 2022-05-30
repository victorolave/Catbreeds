
import 'package:catbreeds/controllers/home_controller.dart';
import 'package:catbreeds/widgets/Breed.dart';
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
            title: SizedBox(
                height: 32,
                child:
                Image.asset("assets/images/gato.png", fit: BoxFit.cover)),
          ),
          body: Center(
            child: Column(
              children: [
                Container(
                  height: 70,
                  padding: const EdgeInsets.all(15),
                  child: TextField(
                    cursorColor: Colors.deepPurple,
                    decoration: InputDecoration(
                      contentPadding: const EdgeInsets.symmetric(vertical: 0, horizontal: 20),
                      hintText: 'Search a cat breed...',
                      suffixIcon: const Icon(Icons.search, color: Colors.deepPurple),
                      filled: true,
                      fillColor: const Color(0xFFECECEC),
                      border: OutlineInputBorder(borderSide: BorderSide.none, borderRadius: BorderRadius.circular(50)),
                    ),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height - 230,
                  child: ListView(
                    scrollDirection: Axis.vertical,
                    children: const [
                      Breed(),
                    ],
                  ),
                )
              ],
            )
          ),
        );
      },
    );
  }
}
