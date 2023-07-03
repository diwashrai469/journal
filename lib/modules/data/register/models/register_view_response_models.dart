class RegisterViewResponseModels {
  String? status;
  String? acessToken;

  RegisterViewResponseModels({this.status, this.acessToken});

  RegisterViewResponseModels.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    acessToken = json['acessToken'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['status'] = status;
    data['acessToken'] = acessToken;
    return data;
  }
}
