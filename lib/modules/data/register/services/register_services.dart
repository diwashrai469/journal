import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:journey/common/widgets/k_snackbar.dart';
import 'package:journey/modules/data/register/models/register_view_response_models.dart';
import '../../../../core/services/intercepters.dart';
import '../../../../core/services/local_storage.dart';

Future userRegistration(
    {required String email,
    required String password,
    required String confirmPassword,
    required String fullName}) async {
  Dio dio = getDioInstance();
  try {
    final response = await dio.post(
      "users/register",
      data: {
        'full_name': fullName,
        'email': email,
        'password': password,
        'confirm_password': confirmPassword
      },
    );
    final resgisterResponse =
        RegisterViewResponseModels.fromJson(response.data);

    kSnackbar("Sucess", resgisterResponse.status.toString(), true);
    LocalStorageService()
        .write(LocalStorageKeys.accessToken, resgisterResponse.acessToken);

    Get.offAllNamed('/dashboard');
    return resgisterResponse;
  } on DioException catch (error) {
    kSnackbar(
        "Login Failed", error.response?.data['errors'][0]['message'], false);
  }
}
