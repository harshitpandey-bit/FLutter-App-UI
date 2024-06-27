import 'package:flutter/material.dart';

class CircularRoundedTextformfield extends StatelessWidget {
  final String hintText;
  final IconData prefixIcon;
  final bool obsureText;
  final TextEditingController? controller;
  final FormFieldValidator<String>? validator;
  const CircularRoundedTextformfield(
      {super.key,
      required this.hintText,
      required this.prefixIcon,
      this.obsureText = false,
      this.controller,
        this.validator
      });

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
        alignment: Alignment.center,
        margin: const EdgeInsets.only(left: 20, right: 20, top: 25),
        padding: const EdgeInsets.only(left: 20, right: 20),
        height: 54,
        decoration: BoxDecoration(
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
        child: TextFormField(
             controller: controller,
            validator: validator,
            cursorColor: const Color(0xffF5591F),
            decoration: InputDecoration(
              prefixIcon: Icon(
                prefixIcon,
                color: const Color(0xffF5591F),
              ),
              hintText: hintText,
              enabledBorder: InputBorder.none,
              focusedBorder: InputBorder.none,
            )));
  }
}
