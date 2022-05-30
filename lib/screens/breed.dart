import 'package:catbreeds/controllers/breed_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';

class Breed extends StatelessWidget {
  const Breed({Key? key}) : super(key: key);

  void _launchUrl(url) async {
    var _url = Uri.parse(url);
    if (!await launchUrl(_url)) throw 'Could not launch $_url';
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<BreedController>(
      init: BreedController(),
      builder: (controller) {
        return Scaffold(
          body: !controller.loading
              ? Column(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height / 2,
                      decoration: BoxDecoration(
                        color: Colors.deepPurple,
                        borderRadius: const BorderRadius.only(
                            bottomLeft: Radius.circular(20),
                            bottomRight: Radius.circular(20)),
                        image: DecorationImage(
                          image: NetworkImage(controller.image),
                          fit: BoxFit.fill,
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
                                  Expanded(
                                      child: Text(
                                    controller.breed.name,
                                    style: const TextStyle(
                                        color: Colors.deepPurple,
                                        fontSize: 30,
                                        fontWeight: FontWeight.bold),
                                  )),
                                  Expanded(
                                      child: RichText(
                                    textAlign: TextAlign.end,
                                    text: TextSpan(
                                      children: [
                                        const WidgetSpan(
                                          child: Icon(
                                            Icons.location_on,
                                            size: 20,
                                            color: Color(0xFF325483),
                                          ),
                                        ),
                                        TextSpan(
                                            text: ' ' + controller.breed.origin,
                                            style: const TextStyle(
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
                                    children: [
                                      Text(
                                        controller.breed.description,
                                        style: const TextStyle(fontSize: 18),
                                        textAlign: TextAlign.justify,
                                      ),
                                    ],
                                  )),
                                ],
                              ),
                              const Divider(),
                              Row(
                                children: [
                                  Expanded(
                                    child: Column(
                                      children: [
                                        Row(
                                          children: const [
                                            Text(
                                              "Temperament:",
                                              style: TextStyle(
                                                  color: Colors.deepPurple),
                                            ),
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            Expanded(
                                              child: Text(
                                                controller.breed.temperament.toString(),
                                              )
                                            )
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
                                    text: TextSpan(
                                      children: [
                                        const TextSpan(
                                            text: 'Intelligence: ',
                                            style: TextStyle(
                                              color: Colors.deepPurple,
                                            )),
                                        TextSpan(
                                            text: controller.breed.intelligence.toString(),
                                            style: const TextStyle(
                                              color: Colors.black,
                                            ))
                                      ],
                                    ),
                                  )),
                                  Expanded(
                                      child: RichText(
                                    text: TextSpan(
                                      children: [
                                        const TextSpan(
                                            text: 'Adaptability: ',
                                            style: TextStyle(
                                              color: Colors.deepPurple,
                                            )),
                                        TextSpan(
                                            text: controller.breed.adaptability.toString(),
                                            style: const TextStyle(
                                              color: Colors.black,
                                            ))
                                      ],
                                    ),
                                  )),
                                  Expanded(
                                      child: RichText(
                                    text: TextSpan(
                                      children: [
                                        const TextSpan(
                                            text: 'Energy Level: ',
                                            style: TextStyle(
                                              color: Colors.deepPurple,
                                            )),
                                        TextSpan(
                                            text: controller.breed.energyLevel.toString(),
                                            style: const TextStyle(
                                              color: Colors.black,
                                            ))
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
                                    text: TextSpan(
                                      children: [
                                        const TextSpan(
                                            text: 'Affec. Level: ',
                                            style: TextStyle(
                                              color: Colors.deepPurple,
                                            )),
                                        TextSpan(
                                            text:
                                                controller.breed.affectiveLevel.toString(),
                                            style: const TextStyle(
                                              color: Colors.black,
                                            ))
                                      ],
                                    ),
                                  )),
                                  Expanded(
                                      child: RichText(
                                    text: TextSpan(
                                      children: [
                                        const TextSpan(
                                            text: 'Child Friendly: ',
                                            style: TextStyle(
                                              color: Colors.deepPurple,
                                            )),
                                        TextSpan(
                                            text:
                                                controller.breed.childFriendly.toString(),
                                            style: const TextStyle(
                                              color: Colors.black,
                                            ))
                                      ],
                                    ),
                                  )),
                                  Expanded(
                                      child: RichText(
                                    text: TextSpan(
                                      children: [
                                        const TextSpan(
                                            text: 'Dog Friendly: ',
                                            style: TextStyle(
                                              color: Colors.deepPurple,
                                            )),
                                        TextSpan(
                                            text: controller.breed.dogFriendly.toString(),
                                            style: const TextStyle(
                                              color: Colors.black,
                                            ))
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
                                    text: TextSpan(
                                      children: [
                                        const TextSpan(
                                            text: 'Stranger Friendly: ',
                                            style: TextStyle(
                                              color: Colors.deepPurple,
                                            )),
                                        TextSpan(
                                            text: controller
                                                .breed.strangerFriendly.toString(),
                                            style: const TextStyle(
                                              color: Colors.black,
                                            ))
                                      ],
                                    ),
                                  )),
                                  Expanded(
                                      child: RichText(
                                    text: TextSpan(
                                      children: [
                                        const TextSpan(
                                            text: 'Health Issues: ',
                                            style: TextStyle(
                                              color: Colors.deepPurple,
                                            )),
                                        TextSpan(
                                            text: controller.breed.healthIssues.toString(),
                                            style: const TextStyle(
                                              color: Colors.black,
                                            ))
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
                                    text: TextSpan(
                                      children: [
                                        const TextSpan(
                                            text: 'Social Needs: ',
                                            style: TextStyle(
                                              color: Colors.deepPurple,
                                            )),
                                        TextSpan(
                                            text: controller.breed.socialNeeds.toString(),
                                            style: const TextStyle(
                                              color: Colors.black,
                                            ))
                                      ],
                                    ),
                                  )),
                                  Expanded(
                                      child: RichText(
                                    text: TextSpan(
                                      children: [
                                        const TextSpan(
                                            text: 'Grooming: ',
                                            style: TextStyle(
                                              color: Colors.deepPurple,
                                            )),
                                        TextSpan(
                                            text: controller.breed.grooming.toString(),
                                            style: const TextStyle(
                                              color: Colors.black,
                                            ))
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
                                              style: TextStyle(
                                                  color: Colors.deepPurple),
                                            ),
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            Text(controller.breed.lifeSpan + ' Years'),
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
                                  onPressed: () {
                                    _launchUrl(controller.breed.cfaUrl);
                                  },
                                  child: const Text(
                                    'CFA Page',
                                    style: TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                              const SizedBox(height: 5),
                              SizedBox(
                                width: MediaQuery.of(context).size.width,
                                child: ElevatedButton(
                                  onPressed: () {
                                    _launchUrl(controller.breed.vetstreetUrl);
                                  },
                                  child: const Text(
                                    'VetStreet Page',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                              const SizedBox(height: 5),
                              SizedBox(
                                width: MediaQuery.of(context).size.width,
                                child: ElevatedButton(
                                  onPressed: () {
                                    _launchUrl(controller.breed.vcaUrl);
                                  },
                                  child: const Text(
                                    'VCA Hospitals Page',
                                    style: TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                              const SizedBox(height: 5),
                              SizedBox(
                                width: MediaQuery.of(context).size.width,
                                child: ElevatedButton(
                                  onPressed: () {
                                    _launchUrl(controller.breed.wikipediaUrl);
                                  },
                                  child: const Text(
                                    'Wikipedia',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                              const SizedBox(height: 25),
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                )
              : const Center(child: Text("Loading...", style: TextStyle(color: Colors.deepPurple, fontSize: 30, fontWeight: FontWeight.bold),)),
        );
      },
    );
  }
}
