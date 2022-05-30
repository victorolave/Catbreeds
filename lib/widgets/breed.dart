import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Breed extends StatelessWidget {
  const Breed({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.toNamed('/breed');
      },
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
        height: 300,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(20)),
            image: const DecorationImage(
              image: NetworkImage(
                  'https://cdn2.thecatapi.com/images/0XYvRd7oD.jpg'),
              fit: BoxFit.fitWidth,
            ),
            boxShadow: [
              BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 1,
                  blurRadius: 5,
                  offset: const Offset(0, 3))
            ]),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: const [
                Padding(
                  padding: EdgeInsets.only(right: 10),
                  child: InkWell(child: Icon(Icons.more_horiz, color: Colors.deepPurple, size: 30,)),
                )
              ],
            ),
            const SizedBox(height: 130),
            Container(
              padding: EdgeInsets.symmetric(vertical: 10),
              width: MediaQuery.of(context).size.width,
              color: Colors.white,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Abyssinian", style: TextStyle(fontSize: 30, color: Colors.deepPurple, fontWeight: FontWeight.bold),),
                  RichText(
                    text: const TextSpan(
                      children: [
                        WidgetSpan(
                          child: Icon(
                            Icons.location_on,
                            size: 18,
                            color: Color(0xFF325483),
                          ),
                        ),
                        TextSpan(text: ' Egypt', style: TextStyle(color: Color(0xFF325483), fontSize: 18)),
                      ],
                    ),
                  ),
                  Divider(),
                  const Text("Intelligence: 5" , style: TextStyle(color: Color(0xFF325483), fontSize: 18),),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
