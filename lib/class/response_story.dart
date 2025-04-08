class ResponseStory {
  final bool error;
  final String message;
  final List<Story> listStory;

  ResponseStory({
    required this.error,
    required this.message,
    required this.listStory,
  });

  factory ResponseStory.fromJson(Map<String, dynamic> json) {
    return ResponseStory(
      error: json['error'],
      message: json['message'],
      listStory:
          json['listStory'] != null
              ? List<Story>.from(
                json['listStory'].map((x) => Story.fromJson(x)),
              )
              : [],
    );
  }

  Map<String, dynamic> toJson() {
    return {'error': error, 'message': message, 'listStory': listStory};
  }
}

class ResponseStoryDetail {
  final bool error;
  final String message;
  final Story story;

  ResponseStoryDetail({
    required this.error,
    required this.message,
    required this.story,
  });

  factory ResponseStoryDetail.fromJson(Map<String, dynamic> json) {
    return ResponseStoryDetail(
      error: json['error'],
      message: json['message'],
      story: Story.fromJson(json['story']),
    );
  }

  Map<String, dynamic> toJson() {
    return {'error': error, 'message': message, 'story': story};
  }
}

class Story {
  final String name;
  final String description;
  final String photoUrl;
  final String id;
  final String createdAt;
  final double? lat;
  final double? lon;

  Story({
    required this.name,
    required this.description,
    required this.photoUrl,
    required this.id,
    required this.createdAt,
    this.lat,
    this.lon,
  });

  factory Story.fromJson(Map<String, dynamic> json) {
    return Story(
      name: json['name'],
      description: json['description'],
      photoUrl: json['photoUrl'],
      id: json['id'],
      createdAt: json['createdAt'],
      lat: json['lat'] != null ? (json['lat'] as num).toDouble() : null,
      lon: json['lon'] != null ? (json['lon'] as num).toDouble() : null,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'description': description,
      'photoUrl': photoUrl,
      'id': id,
      'createdAt': createdAt,
      'lat': lat,
      'lon': lon,
    };
  }
}
