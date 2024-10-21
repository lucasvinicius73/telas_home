import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.black,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Center(
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 400),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                              color: const Color(0xFF5e5ce5),
                              borderRadius: BorderRadius.circular(100)),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Container(
                          width: 50,
                          height: 50,
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(100)),
                            color: Color(0xFF5e5ce5),
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Container(
                      width: 50,
                      height: 112,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(100),
                            topRight: Radius.circular(100)),
                        color: Color(0xFF5e5ce5),
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 40,
                ),
                const Text(
                  "Get your Money\nUnder Control",
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.white, fontSize: 32),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  "Manage your expenses.\nSeamlessly.",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 15,
                  ),
                ),
                const SizedBox(
                  height: 80,
                ),
                Material(
                  color: const Color(0xFF5e5ce5),
                  child: InkWell(
                    onTap: () =>
                        Navigator.of(context).pushReplacementNamed("/tinder"),
                    borderRadius: BorderRadius.circular(5),
                    child: Container(
                      height: 40,
                      decoration:
                          BoxDecoration(borderRadius: BorderRadius.circular(5)),
                      child: const Center(
                          child: Text(
                        "Sign Up with Email ID",
                        style: TextStyle(color: Colors.white),
                      )),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 12,
                ),
                Material(
                  color: Colors.white,
                  child: InkWell(
                    onTap: () =>
                        Navigator.of(context).pushReplacementNamed("/tinder"),
                    child: Container(
                      height: 40,
                      decoration:
                          BoxDecoration(borderRadius: BorderRadius.circular(5)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            "assets/google.png",
                            scale: 19,
                          ),
                          const Text("Sign Up with Google"),
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Alredy have an account? ",
                      style: TextStyle(color: Colors.white),
                    ),
                    Text(
                      "Sign In",
                      style: TextStyle(
                          color: Colors.white,
                          decoration: TextDecoration.underline,
                          decorationColor: Colors.white),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
