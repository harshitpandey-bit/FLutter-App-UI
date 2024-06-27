import 'package:flutter/material.dart';

class SingleSideRoundedHeader extends StatelessWidget {
  final String title;

  const SingleSideRoundedHeader({super.key,required this.title});

  @override
  Widget build(BuildContext context) {
    return  Container(
      height: 300,
      decoration: const BoxDecoration(
        borderRadius:
        BorderRadius.only(bottomLeft: Radius.circular(90)),
        color: Color(0xffF5591F),
        gradient: LinearGradient(
          colors: [Color(0xffF5591F), Color(0xffF2861E)],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              margin: const EdgeInsets.only(top: 50),
              child: Image.asset(
                "assets/app_logo.png",
                height: 90,
                width: 90,
              ),
            ),
            Container(
              margin: const EdgeInsets.only(right: 20, top: 20),
              alignment: Alignment.bottomRight,
              child: Text(
               title,
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
