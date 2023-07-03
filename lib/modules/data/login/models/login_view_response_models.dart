class LoginResponseModel {
  late String status;
  late String message;
  late String accessToken;
  late String refreshToken;

  LoginResponseModel(
      {required this.status,
      required this.message,
      required this.accessToken,
      required this.refreshToken});

  LoginResponseModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    message = json['message'];
    accessToken = json['accessToken'];
    refreshToken = json['refreshToken'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['status'] = status;
    data['message'] = message;
    data['accessToken'] = accessToken;
    data['refreshToken'] = refreshToken;
    return data;
  }
}