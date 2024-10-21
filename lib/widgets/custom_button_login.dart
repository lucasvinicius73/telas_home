import 'package:flutter/material.dart';

class CustomButtonLogin extends StatelessWidget {
  const CustomButtonLogin(
      {super.key,
      required this.backgroundColor,
      this.icon,
      required this.textColor,
      required this.title});
  final Color backgroundColor;
  final Color textColor;
  final String title;
  final String? icon;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: backgroundColor,
      child: InkWell(
        onTap: () => Navigator.of(context).pushReplacementNamed("/tinder"),
        child: Container(
          height: 40,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(5)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              icon != null
                  ? Image.asset(
                      icon!,
                      scale: 19,
                    )
                  : const SizedBox(),
              Text(
                title,
                style: TextStyle(color: textColor),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
