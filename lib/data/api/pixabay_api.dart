import 'dart:convert';

import 'package:http/http.dart' as http;

import '../dto/pixabay_result_dto.dart';

class PixabayApi {
  Future<PixabayResultDto> getImage(String query) async {
    final response = await http.get(Uri.parse(
        'https://pixabay.com/api/?key=37933558-33cf47fb6f41d74a8d0182295&q=$query'));
    Map<String, dynamic> jsonString = json.decode(response.body);
    return PixabayResultDto.fromJson(jsonString);
  }
}
