import 'package:journey/modules/data/common/base_model.dart';
import 'package:journey/modules/data/login/services/login_services.dart';

class LoginViewModel extends BaseModel {
  String? emailvalidator(String? email) {
    if (email == null || email.isEmpty) {
      return "Email is required";
    }

    final RegExp emailRegExp = RegExp(r'^[^@]+@[^@]+\.[^@]+$');
    if (!emailRegExp.hasMatch(email)) {
      return "Invalid email format";
    }
    return null;
  }

  String? passwordvalidator(String? password) {
    if (password == null || password.isEmpty) {
      return "Password is required";
    }

    return null;
  }

  Future<void> loginUser(String email, String password) async {
 
    setLoading(true);
    await userLogin(email, password);
    setLoading(false);
  }
}
