import 'package:flutter/material.dart';
import 'package:get/get.dart';

kButtonsheet() {
  Get.bottomSheet(
      backgroundColor: Colors.grey,
      Wrap(children: [
        ListTile(
          leading:const Icon(Icons.sunny),
          onTap: () => {Get.changeTheme(ThemeData.light())},
        ),
        ListTile(
            leading:const Icon(
              Icons.wb_sunny_outlined,
            ),
            onTap: () => {Get.changeTheme(ThemeData.dark())})
      ]));
}
