import 'dart:convert';

import 'package:catbreeds/constants/api.dart';
import 'package:catbreeds/models/breed.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class HomeController extends GetxController {

  bool loading = true;
  var breedData = <Breed>[].obs;
  String search = '';

  // Method to get breeds list;
  Future getBreeds([query = '']) async {
    final url = Uri.parse(api + query);
    final response = await http.get(url, headers: {"x-api-key": key});

    if (response.statusCode == 200) {
      var breedsList = await json.decode(response.body);
      List<Breed> breeds = await breedsList.map<Breed>((breed) => Breed.fromJson(breed)).toList();
      breedData.value =  breeds;
      loading = false;
      update();
    } else {
      throw Exception('Failed to load breeds.');
    }
  }

  // Method to handle search input.
  Future handleSearch(String text) async {
    search = text;
    if (search.length >= 3) {
      await getBreeds('/search/?q=' + search);
    } else if (search.length == 0) {
      await getBreeds();
    }
  }

  @override
  void onReady() async {
    super.onReady();
    await getBreeds();
  }
}