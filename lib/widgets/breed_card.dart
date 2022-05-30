import 'package:catbreeds/models/breed.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BreedCard extends StatelessWidget {

  final Breed breed;

  const BreedCard({Key? key, required this.breed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.toNamed('/breed/' + breed.id.toString());
      },
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
        height: 300,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(20)),
            image: DecorationImage(
              image: NetworkImage('https://cdn2.thecatapi.com/images/' + breed.referenceImageId + '.jpg'),
              fit: BoxFit.cover,
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
                  Text(breed.name, style: TextStyle(fontSize: 30, color: Colors.deepPurple, fontWeight: FontWeight.bold),),
                  RichText(
                    text: TextSpan(
                      children: [
                        const WidgetSpan(
                          child: Icon(
                            Icons.location_on,
                            size: 18,
                            color: Color(0xFF325483),
                          ),
                        ),
                        TextSpan(text: ' ' + breed.origin, style: TextStyle(color: Color(0xFF325483), fontSize: 18)),
                      ],
                    ),
                  ),
                  Divider(),
                  Text("Intelligence: " + breed.intelligence.toString() , style: TextStyle(color: Color(0xFF325483), fontSize: 18),),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}