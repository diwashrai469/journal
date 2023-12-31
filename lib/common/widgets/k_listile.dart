import 'package:flutter/material.dart';

class KListtile extends StatelessWidget {
  final IconData? icon;
  final String text;
  final void Function()? onKeyPressed;

  const KListtile(
      {super.key, this.icon, required this.text, this.onKeyPressed});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 45,
      child: ListTile(
          visualDensity: const VisualDensity(horizontal: -4, vertical: -4),
          leading: Icon(
            icon,
          ),
          title: TextButton(
            style: const ButtonStyle(alignment: Alignment.centerLeft),
            onPressed: onKeyPressed,
            child: Text(
              text,
              style: Theme.of(context)
                  .textTheme
                  .bodyMedium
                  ?.copyWith(fontWeight: FontWeight.w600, fontSize: 15),
            ),
          )),
    );
  }
}
