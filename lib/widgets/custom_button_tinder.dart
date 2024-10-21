import 'package:flutter/material.dart';

class CustomButtonTinder extends StatelessWidget {
  const CustomButtonTinder({super.key, required this.icon, required this.text});
  final String text;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: () => Navigator.of(context).pushReplacementNamed("/"),
          borderRadius: BorderRadius.circular(25),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              border: Border.all(color: Colors.white),
            ),
            height: 50,
            child: Row(
              children: [
                const SizedBox(
                  width: 15,
                ),
                Icon(
                  icon,
                  color: Colors.white,
                  size: 22,
                ),
                const Spacer(),
                Text(
                  text,
                  style: const TextStyle(color: Colors.white),
                ),
                const Spacer(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
