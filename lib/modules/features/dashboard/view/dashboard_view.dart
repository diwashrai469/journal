import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:journey/common/constant/ui_helpers.dart';
import 'package:journey/common/widgets/k_button.dart';

import '../../../../core/services/local_storage.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Text("welcome to dashboard"),
            sHeightSpan,
            KButton(
                child: Text("Logout"),
                onPressed: () {
                  Get.offAndToNamed("/login");
                  LocalStorageService().clear(LocalStorageKeys.accessToken);
                })
          ],
        ),
      ),
    );
  }
}
