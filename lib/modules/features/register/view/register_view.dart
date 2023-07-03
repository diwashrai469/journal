import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:journey/common/constant/app_dimens.dart';
import 'package:journey/common/constant/ui_helpers.dart';
import 'package:journey/common/widgets/k_button.dart';
import 'package:journey/common/widgets/k_textformfield.dart';
import 'package:journey/modules/features/register/view_models/register_view_models.dart';

class RegisterView extends StatelessWidget {
  const RegisterView({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(RegisterViewModel());
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
                keyboardType: TextInputType.visiblePassword,
                controller: passwordController,
                validator: controller.fullName,
                hint: "Enter your Fullname.",
                label: "Full Name",
              ),
              lHeightSpan,
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
                obscureText: true,
                validator: controller.passwordvalidator,
                hint: "Enter your password.",
                label: "Password",
              ),
              lHeightSpan,
              KTextFormField(
                keyboardType: TextInputType.visiblePassword,
                obscureText: true,
                controller: passwordController,
                validator: controller.passwordvalidator,
                hint: "Enter your confirm password.",
                label: "Confirm password",
              ),
              elHeightSpan,
              Obx(
                () => KButton(
                  size: ButtonSize.medium,
                  isBusy: controller.isLoading,
                  onPressed: () async {},
                  child: const Text("Register"),
                ),
              ),
              lHeightSpan,
              InkWell(
                onTap: () => Get.toNamed(
                  "/login",
                ),
                child: RichText(
                  text: TextSpan(
                    text: "Already have a account?",
                    style: Theme.of(context).textTheme.bodyMedium,
                    children: <TextSpan>[
                      TextSpan(
                        text: '  Login',
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
