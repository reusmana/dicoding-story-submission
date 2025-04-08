import 'dart:convert';
import 'dart:typed_data';

import 'package:story_app_submission/class/response_story.dart';
import 'package:http/http.dart' as http;
import 'package:story_app_submission/class/response_story_detail.dart';
import 'package:story_app_submission/class/response_success_add_story.dart';
import 'package:story_app_submission/class/story_add.dart';
import 'package:story_app_submission/utils/save_token.dart';

class StoryService {
  static const String baseUrl = 'https://story-api.dicoding.dev/v1';

  Future<ResponseStory> getStories([pageItem = 1, sizeItem = 10]) async {
    final token = await SaveToken.getToken();
    final response = await http.get(
      Uri.parse('$baseUrl/stories?page=$pageItem&size=$sizeItem'),

      headers: {'Authorization': 'Bearer $token'},
    );

    if (response.statusCode == 200) {
      return ResponseStory.fromJson(jsonDecode(response.body));
    } else {
      throw Exception('Gagal mengambil data');
    }
  }

  Future<ResponseStoryDetail> getDetailStory(String id) async {
    final token = await SaveToken.getToken();
    final response = await http.get(
      Uri.parse('$baseUrl/stories/$id'),
      headers: {'Authorization': 'Bearer $token'},
    );

    if (response.statusCode == 200) {
      return ResponseStoryDetail.fromJson(jsonDecode(response.body));
    } else {
      throw Exception('Gagal mengambil data');
    }
  }

  Future<ResponseSuccessAddStory> addStory(StoryAdd story) async {
    final token = await SaveToken.getToken();
    final uri = Uri.parse('$baseUrl/stories');
    var request = http.MultipartRequest('POST', uri);

    final multiPartFile = http.MultipartFile.fromBytes(
      "photo",
      story.photo,
      filename: story.filename,
    );

    final Map<String, String> fields = {
      "description": story.description,
      if (story.lat != null) "lat": story.lat.toString(),
      if (story.lon != null) "lat": story.lon.toString(),
    };
    final Map<String, String> headers = {'Authorization': 'Bearer $token'};

    request.files.add(multiPartFile);
    request.fields.addAll(fields);
    request.headers.addAll(headers);

    final http.StreamedResponse streamedResponse = await request.send();
    final int statusCode = streamedResponse.statusCode;

    final Uint8List responseList = await streamedResponse.stream.toBytes();
    final String responseData = String.fromCharCodes(responseList);

    if (statusCode == 201) {
      return ResponseSuccessAddStory.fromJson(jsonDecode(responseData));
    } else {
      throw Exception("Upload file error");
    }
  }
}
