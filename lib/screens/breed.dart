import 'package:catbreeds/controllers/breed_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Breed extends StatelessWidget {
  const Breed({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<BreedController>(
      init: BreedController(),
      builder: (controller) {
        return Scaffold(
          body: Column(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 2,
                decoration: const BoxDecoration(
                  color: Colors.deepPurple,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20)),
                  image: DecorationImage(
                    image: NetworkImage(
                        'https://cdn2.thecatapi.com/images/0XYvRd7oD.jpg'),
                    fit: BoxFit.fitWidth,
                  ),
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 40),
                          child: IconButton(
                            onPressed: () {
                              Get.back();
                            },
                            icon: const Icon(
                              Icons.chevron_left,
                              color: Colors.deepPurple,
                              size: 50,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.only(top: 20),
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 2,
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Expanded(
                                child: Text(
                              "Abyssinian",
                              style: TextStyle(
                                  color: Colors.deepPurple,
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold),
                            )),
                            Expanded(
                                child: RichText(
                              textAlign: TextAlign.end,
                              text: const TextSpan(
                                children: [
                                  WidgetSpan(
                                    child: Icon(
                                      Icons.location_on,
                                      size: 20,
                                      color: Color(0xFF325483),
                                    ),
                                  ),
                                  TextSpan(
                                      text: ' Egypt',
                                      style: TextStyle(
                                          color: Color(0xFF325483),
                                          fontSize: 20)),
                                ],
                              ),
                            ))
                          ],
                        ),
                        const Divider(),
                        Row(
                          children: [
                            Expanded(
                                child: Column(
                              children: const [
                                Text(
                                  "The Abyssinian is easy to care for, and a joy to have in your home. They’re affectionate cats and love both people and other animals.",
                                  style: TextStyle(fontSize: 18),
                                  textAlign: TextAlign.justify,
                                ),
                              ],
                            )),
                          ],
                        ),
                        Divider(),
                        Row(
                          children: [
                            Expanded(
                              child: Column(
                                children: [
                                  Row(
                                    children: const [
                                      Text(
                                        "Temperament:",
                                        style:
                                            TextStyle(color: Colors.deepPurple),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: const [
                                      Text(
                                          "Active, Energetic, Independent, Intelligent, Gentle", ),
                                    ],
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                        const SizedBox(height: 15),
                        Row(
                          children: [
                            Expanded(
                                child: RichText(
                              text: const TextSpan(
                                children: [
                                  TextSpan(
                                      text: 'Intelligence: ',
                                      style: TextStyle(
                                        color: Colors.deepPurple,
                                      )),
                                  TextSpan(
                                      text: '5',
                                      style: TextStyle(
                                        color: Colors.black,
                                      )
                                  )
                                ],
                              ),
                            )),
                            Expanded(
                                child: RichText(
                                  text: const TextSpan(
                                    children: [
                                      TextSpan(
                                          text: 'Adaptability: ',
                                          style: TextStyle(
                                            color: Colors.deepPurple,
                                          )),
                                      TextSpan(
                                          text: '5',
                                          style: TextStyle(
                                            color: Colors.black,
                                          )
                                      )
                                    ],
                                  ),
                                )),
                            Expanded(
                                child: RichText(
                                  text: const TextSpan(
                                    children: [
                                      TextSpan(
                                          text: 'Energy Level: ',
                                          style: TextStyle(
                                            color: Colors.deepPurple,
                                          )),
                                      TextSpan(
                                          text: '5',
                                          style: TextStyle(
                                            color: Colors.black,
                                          )
                                      )
                                    ],
                                  ),
                                ))
                          ],
                        ),
                        const SizedBox(height: 15),
                        Row(
                          children: [
                            Expanded(
                                child: RichText(
                                  text: const TextSpan(
                                    children: [
                                      TextSpan(
                                          text: 'Affec. Level: ',
                                          style: TextStyle(
                                            color: Colors.deepPurple,
                                          )),
                                      TextSpan(
                                          text: '5',
                                          style: TextStyle(
                                            color: Colors.black,
                                          )
                                      )
                                    ],
                                  ),
                                )),
                            Expanded(
                                child: RichText(
                                  text: const TextSpan(
                                    children: [
                                      TextSpan(
                                          text: 'Child Friendly: ',
                                          style: TextStyle(
                                            color: Colors.deepPurple,
                                          )),
                                      TextSpan(
                                          text: '5',
                                          style: TextStyle(
                                            color: Colors.black,
                                          )
                                      )
                                    ],
                                  ),
                                )),
                            Expanded(
                                child: RichText(
                                  text: const TextSpan(
                                    children: [
                                      TextSpan(
                                          text: 'Dog Friendly: ',
                                          style: TextStyle(
                                            color: Colors.deepPurple,
                                          )),
                                      TextSpan(
                                          text: '5',
                                          style: TextStyle(
                                            color: Colors.black,
                                          )
                                      )
                                    ],
                                  ),
                                ))
                          ],
                        ),
                        const SizedBox(height: 15),
                        Row(
                          children: [
                            Expanded(
                                child: RichText(
                                  text: const TextSpan(
                                    children: [
                                      TextSpan(
                                          text: 'Stranger Friendly: ',
                                          style: TextStyle(
                                            color: Colors.deepPurple,
                                          )),
                                      TextSpan(
                                          text: '5',
                                          style: TextStyle(
                                            color: Colors.black,
                                          )
                                      )
                                    ],
                                  ),
                                )),
                            Expanded(
                                child: RichText(
                                  text: const TextSpan(
                                    children: [
                                      TextSpan(
                                          text: 'Health Issues: ',
                                          style: TextStyle(
                                            color: Colors.deepPurple,
                                          )),
                                      TextSpan(
                                          text: '5',
                                          style: TextStyle(
                                            color: Colors.black,
                                          )
                                      )
                                    ],
                                  ),
                                )),
                          ],
                        ),
                        const SizedBox(height: 15),
                        Row(
                          children: [
                            Expanded(
                                child: RichText(
                                  text: const TextSpan(
                                    children: [
                                      TextSpan(
                                          text: 'Social Needs: ',
                                          style: TextStyle(
                                            color: Colors.deepPurple,
                                          )),
                                      TextSpan(
                                          text: '5',
                                          style: TextStyle(
                                            color: Colors.black,
                                          )
                                      )
                                    ],
                                  ),
                                )),
                            Expanded(
                                child: RichText(
                                  text: const TextSpan(
                                    children: [
                                      TextSpan(
                                          text: 'Grooming: ',
                                          style: TextStyle(
                                            color: Colors.deepPurple,
                                          )),
                                      TextSpan(
                                          text: '5',
                                          style: TextStyle(
                                            color: Colors.black,
                                          )
                                      )
                                    ],
                                  ),
                                )),
                          ],
                        ),
                        const SizedBox(height: 15),
                        Row(
                          children: [
                            Expanded(
                              child: Column(
                                children: [
                                  Row(
                                    children: const [
                                      Text(
                                        "Life Span:",
                                        style:
                                        TextStyle(color: Colors.deepPurple),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: const [
                                      Text("14 - 15 Years"),
                                    ],
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                        const SizedBox(height: 25),
                        SizedBox(
                          width: MediaQuery.of(context).size.width,
                          child: ElevatedButton(
                            onPressed: () {},
                            child: Text('CFA Page', style: TextStyle(fontWeight: FontWeight.bold),),
                          ),
                        ),
                        const SizedBox(height: 5),
                        SizedBox(
                          width: MediaQuery.of(context).size.width,
                          child: ElevatedButton(
                            onPressed: () {},
                            child: Text('VetStreet Page', style: TextStyle(fontWeight: FontWeight.bold),),
                          ),
                        ),
                        const SizedBox(height: 5),
                        SizedBox(
                          width: MediaQuery.of(context).size.width,
                          child: ElevatedButton(
                            onPressed: () {},
                            child: Text('VCA Hospitals Page', style: TextStyle(fontWeight: FontWeight.bold),),
                          ),
                        ),
                        const SizedBox(height: 5),
                        SizedBox(
                          width: MediaQuery.of(context).size.width,
                          child: ElevatedButton(
                            onPressed: () {},
                            child: Text('Wikipedia', style: TextStyle(fontWeight: FontWeight.bold),),
                          ),
                        ),
                        const SizedBox(height: 25),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        );
      },
    );
  }
}
