import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:journey/common/constant/app_dimens.dart';
import 'package:journey/common/constant/ui_helpers.dart';
import 'package:journey/common/widgets/k_button.dart';
import 'package:journey/common/widgets/k_textformfield.dart';
import 'package:journey/modules/features/login/view_models/login_view_models.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(LoginViewModel());
    final formkey = GlobalKey<FormState>();
    final emailController = TextEditingController();
    final passwordController = TextEditingController();

    return Scaffold(
      body: Padding(
        padding: AppDimens.mainPagePadding,
        child: Form(
          key: formkey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              RichText(
                text: TextSpan(
                  text: "Evo",
                  style: Theme.of(context)
                      .textTheme
                      .bodyMedium
                      ?.copyWith(fontWeight: FontWeight.w600, fontSize: 35),
                  children: <TextSpan>[
                    TextSpan(
                      text: 'Log',
                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                          color: Colors.teal,
                          fontSize: 30,
                          fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
              ),
              elHeightSpan,
              KTextFormField(
                controller: emailController,
                hint: "Enter your email.",
                keyboardType: TextInputType.emailAddress,
                label: "Email",
                validator: controller.emailvalidator,
              ),
              lHeightSpan,
              KTextFormField(
                keyboardType: TextInputType.visiblePassword,
                controller: passwordController,
                validator: controller.passwordvalidator,
                obscureText: true,
                hint: "Enter your password.",
                label: "Password",
              ),
              elHeightSpan,
              Obx(
                () => KButton(
                  size: ButtonSize.medium,
                  isBusy: controller.isLoading,
                  onPressed: () async {
                    if (formkey.currentState!.validate()) {
                      await controller.loginUser(
                          emailController.text, passwordController.text);
                    }
                  },
                  child: const Text("Login"),
                ),
              ),
              lHeightSpan,
              InkWell(
                onTap: () => Get.toNamed(
                  "/register",
                ),
                child: RichText(
                  text: TextSpan(
                    text: "Don't have a account yet?",
                    style: Theme.of(context).textTheme.bodyMedium,
                    children: <TextSpan>[
                      TextSpan(
                        text: '  Create one',
                        style: Theme.of(context)
                            .textTheme
                            .bodyMedium
                            ?.copyWith(color: Colors.teal),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
