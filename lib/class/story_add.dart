import 'dart:convert';

class StoryAdd {
  final String description;
  final List<int> photo;
  final String filename;
  final double? lat;
  final double? lon;

  StoryAdd({
    required this.description,
    required this.photo,
    required this.filename,
    this.lat,
    this.lon,
  });

  Map<String, dynamic> toJson() {
    return {
      'description': description,
      'photo': photo,
      'filename': filename,
      'lat': lat,
      'lon': lon,
    };
  }
}

class ResponseSuccessAddStory {
  final bool error;
  final String message;

  ResponseSuccessAddStory({required this.error, required this.message});

  factory ResponseSuccessAddStory.fromMap(Map<String, dynamic> json) {
    return ResponseSuccessAddStory(
      error: json['error'] ?? false,
      message: json['message'] ?? "",
    );
  }

  factory ResponseSuccessAddStory.fromJson(String source) =>
      ResponseSuccessAddStory.fromMap(json.decode(source));
}
