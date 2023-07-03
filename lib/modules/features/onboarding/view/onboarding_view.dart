import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:journey/common/constant/app_dimens.dart';
import 'package:journey/common/constant/ui_helpers.dart';
import 'package:journey/common/widgets/k_button.dart';
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
            //   AnimatedTextKit(
            //   animatedTexts: [
            //     WavyAnimatedText(
            //       'EvoLog',
            //       textStyle: Theme.of(context).textTheme.bodyMedium?.copyWith(
            //             fontWeight: FontWeight.w600,
            //             fontSize: 35,
            //           ),
            //     ),
            //   ],
            //   repeatForever: true,
            //   pause: Duration(milliseconds: 100),
            //   displayFullTextOnTap: true,
            // ),
            elHeightSpan,
            Lottie.asset(
              'asset/lotti/cycle.json',
            ),
            lHeightSpan,
            AnimatedTextKit(animatedTexts: [
              ColorizeAnimatedText(
                  " Reflective Journeys: Your Path to Self-Discovery",
                  textStyle: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        fontWeight: FontWeight.bold,
                        fontSize: 22,
                      ),
                  speed: Duration(milliseconds: 100),
                  colors: [
                    Colors.green,
                    Colors.white,
                    Colors.blue,
                    Colors.grey
                  ],
                  textAlign: TextAlign.center)
            ], isRepeatingAnimation: true, repeatForever: true),
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
              child: Row(
                children: [
                  AnimatedTextKit(
                      repeatForever: true,
                      onTap: () => Get.toNamed(
                            "/login",
                          ),
                      animatedTexts: [
                        TypewriterAnimatedText('Get Started',
                            curve: Curves.easeIn,
                            speed: const Duration(milliseconds: 80)),
                      ]),
                  mWidthSpan,
                  const Icon(
                    Icons.arrow_forward,
                    color: Colors.white,
                  )
                ],
              ),
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
