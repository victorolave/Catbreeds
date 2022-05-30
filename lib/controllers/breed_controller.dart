import 'dart:convert';

import 'package:catbreeds/constants/api.dart';
import 'package:catbreeds/models/breed.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
class BreedController extends GetxController {

  var breed;
  String image = '';

  bool loading = true;

  Future getBreed() async {
    final url = Uri.parse(api + '/' + Get.parameters['id'].toString());
    final response = await http.get(url, headers: {"x-api-key": key});

    if (response.statusCode == 200) {
      var b = await json.decode(response.body);
      breed = await Breed.fromJson(b);
      update();
      getImage();
    } else {
      throw Exception('Failed to load breeds.');
    }
  }

  Future getImage() async {
    final url = Uri.parse('https://api.thecatapi.com/v1/images/' + breed.referenceImageId);
    final response = await http.get(url, headers: {"x-api-key": key});
    if (response.statusCode == 200) {
      image = await json.decode(response.body)['url'];
      loading =false;
      update();
    }
  }

  @override
  void onReady() async {
    await getBreed();
    super.onReady();
  }
}