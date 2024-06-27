import 'package:flutter/material.dart';

class CircularRoundedButton extends StatelessWidget {
  final String title;
  final VoidCallback onTap;
   const CircularRoundedButton({super.key,required this.title,required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        alignment: Alignment.center,
        margin: const EdgeInsets.only(left: 20, right: 20, top: 70),
        padding: const EdgeInsets.only(left: 20, right: 20),
        height: 54,
        decoration: BoxDecoration(
          gradient: const LinearGradient(
            colors: [Colors.green, Color(0xffF2861E)],
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
          ),
          borderRadius: BorderRadius.circular(50),
          color: Colors.grey[200],
          boxShadow: [
            const BoxShadow(
              offset: Offset(0, 10),
              blurRadius: 50,
              color: Color(0xffEEEEEE),
            ),
          ],
        ),
        child: Text(
        title,
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
