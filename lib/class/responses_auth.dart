class ResponsesAuth {
  final String message;
  final bool error;
  final User? loginResult;

  ResponsesAuth({required this.message, required this.error, this.loginResult});

  factory ResponsesAuth.fromJson(Map<String, dynamic> json) {
    return ResponsesAuth(
      message: json['message'],
      error: json['error'],
      loginResult:
          json['loginResult'] != null
              ? User.fromJson(json['loginResult'])
              : null,
    );
  }
}

class User {
  final String userId;
  final String name;
  final String token;

  User({required this.userId, required this.name, required this.token});

  Map<String, dynamic> toJson() {
    return {'userId': userId, 'name': name, 'token': token};
  }

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      userId: json['userId'],
      name: json['name'],
      token: json['token'],
    );
  }
}
