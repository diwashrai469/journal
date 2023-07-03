import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:journey/common/constant/app_dimens.dart';
import 'package:journey/common/constant/ui_helpers.dart';
import 'package:journey/common/widgets/k_button.dart';
import 'package:journey/common/widgets/k_dialog.dart';
import 'package:lottie/lottie.dart';

class OnboardingView extends StatelessWidget {
  const OnboardingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: AppDimens.mainPagePadding,
        child: Column(
          children: [
            elHeightSpan,
            lHeightSpan,
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
            Lottie.asset(
              'asset/lotti/cycle.json',
            ),
            lHeightSpan,
            Text(
              "Reflective Journeys: Your Path to Self-Discovery",
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    fontWeight: FontWeight.bold,
                    fontSize: 22,
                  ),
            ),
            mHeightSpan,
            Text(
              "Welcome to our journal app, where every thought finds its place. Capture your moments, express your thoughts, and embark on a journey of self-discovery. Let your words flow, and let this journal be your sanctuary. Happy journaling!",
              textAlign: TextAlign.center,
              style: Theme.of(context)
                  .textTheme
                  .bodyMedium
                  ?.copyWith(color: Colors.grey.shade100),
            ),
            elHeightSpan,
            mHeightSpan,
            KButton(
              size: ButtonSize.medium,
              child: const Text("Get Started"),
              onPressed: () => Get.toNamed(
                "/login",
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
                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                            color: Colors.teal,
                          ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
