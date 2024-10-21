import 'package:flutter/material.dart';
import 'package:telas_home/widgets/custom_button_tinder.dart';

class TinderScreen extends StatelessWidget {
  const TinderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Center(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          decoration: const BoxDecoration(
              gradient: LinearGradient(colors: [
            Color(0xFFED6C65),
            Color(0xFFE94C76),
          ])),
          child: Center(
            child: ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 400),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        "assets/tinderflame.png",
                        scale: 20,
                        color: Colors.white,
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      const Text(
                        "tinder",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 50,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 80,
                  ),
                  RichText(
                      textAlign: TextAlign.center,
                      text: const TextSpan(
                          style: TextStyle(
                            color: Colors.white60,
                          ),
                          children: [
                            TextSpan(
                                text:
                                    "By tapping Create Account or Sign In, you agree to our "),
                            TextSpan(
                                text: "Terms",
                                style: TextStyle(
                                    color: Colors.white,
                                    decoration: TextDecoration.underline)),
                            TextSpan(
                                text:
                                    ". Learn how we process your data in our "),
                            TextSpan(
                                text: "Privacy Policy",
                                style: TextStyle(
                                    color: Colors.white,
                                    decoration: TextDecoration.underline)),
                            TextSpan(text: " and "),
                            TextSpan(
                                text: "Cookies Policy",
                                style: TextStyle(
                                    color: Colors.white,
                                    decoration: TextDecoration.underline)),
                          ])),
                  const SizedBox(
                    height: 30,
                  ),
                  const CustomButtonTinder(
                      icon: Icons.apple_rounded, text: "SIGN IN WITH APPLE"),
                  const CustomButtonTinder(
                      icon: Icons.facebook, text: "SIGN IN WITCH FACEBOOK"),
                  const CustomButtonTinder(
                      icon: Icons.chat_bubble,
                      text: "SIGN IN WITCH PHONE NUMBER"),
                  const SizedBox(
                    height: 15,
                  ),
                  InkWell(
                    onTap: () {},
                    child: const Text(
                      "Trouble Signing In?",
                      style: TextStyle(color: Colors.white),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
