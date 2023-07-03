class LoginResponseModel {
  late String status;
  late String message;
  late String acessToken;

  LoginResponseModel(
      {required this.status,
      required this.message,
      required this.acessToken,
    });

  LoginResponseModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    message = json['message'];
    acessToken = json['acessToken'];
    
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['status'] = status;
    data['message'] = message;
    data['acessToken'] = acessToken;
    
    return data;
  }
}