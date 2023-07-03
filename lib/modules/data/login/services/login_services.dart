import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:journey/common/widgets/k_snackbar.dart';
import '../../../../core/services/intercepters.dart';
import '../../../../core/services/local_storage.dart';
import '../models/login_view_response_models.dart';

Future userLogin(String email, String password) async {
  Dio dio = getDioInstance();
  try {
    final response = await dio.post(
      "users/login",
      data: {
        'email': email,
        'password': password,
      },
    );
    final loginResponse = LoginResponseModel.fromJson(response.data);

    kSnackbar("Sucess", loginResponse.message, true);
    LocalStorageService()
        .write(LocalStorageKeys.accessToken, loginResponse.acessToken);

    Get.offAllNamed('/dashboard');
    return loginResponse;
  } on DioException catch (error) {
    kSnackbar(
        "Login Failed", error.response?.data['error'], false);
  }
}
