import 'package:journey/modules/data/common/base_model.dart';
import 'package:journey/modules/data/register/services/register_services.dart';

class RegisterViewModel extends BaseModel {
  String? fullName(String? fullname) {
    if (fullname == null || fullname.isEmpty) {
      return "Fullname is required";
    }

    return null;
  }

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

  String? confirmPasswordval(String? confirmpassword) {
    if (confirmpassword == null || confirmpassword.isEmpty) {
      return "Confirm password is required";
    }

    return null;
  }

  Future<void> registerUser(
      {required String email,
      required String password,
      required String confirmPassword,
      required String fullName}) async {
    setLoading(true);
    await userRegistration(
        confirmPassword: confirmPassword,
        email: email,
        fullName: fullName,
        password: password);
    setLoading(false);
  }
}
