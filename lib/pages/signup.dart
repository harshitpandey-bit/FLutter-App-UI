import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';
import 'package:loginform/utils/validators.dart';
import 'package:loginform/widgets/circular_rounded_button.dart';
import 'package:loginform/widgets/circular_rounded_textformfield.dart';
import 'package:loginform/widgets/single_side_rounded_header.dart';

class SignUpScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => SignUpScreenState();
}

class SignUpScreenState extends State<SignUpScreen> {
  final TextEditingController _fullNameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _phoneNumberController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  final ImagePicker _picker = ImagePicker();
  File? _pickedImage;

  void _register() {
    if (_formKey.currentState!.validate()) {
      Navigator.pop(context); // This will navigate back to LoginScreen
    }
  }

  void _pickImage() async {
    final pickedFile = await _picker.pickImage(source: ImageSource.gallery);
    if (pickedFile != null) {
      setState(() {
        _pickedImage = File(pickedFile.path);
      });
    }
  }

  @override
  void dispose() {
    _fullNameController.dispose();
    _emailController.dispose();
    _phoneNumberController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SingleSideRoundedHeader(title: "Register"),
            Form(
              key: _formKey,
              child: Column(
                children: [
                  GestureDetector(
                    onTap: _pickImage,
                    child: CircleAvatar(
                      radius: 50,
                      backgroundColor: Colors.grey[300],
                      backgroundImage:
                      _pickedImage != null ? FileImage(_pickedImage!) : null,
                      child: _pickedImage == null
                          ? Icon(
                        Icons.camera_alt,
                        size: 50,
                        color: Colors.grey[700],
                      )
                          : null,
                    ),
                  ),
                  SizedBox(height: 20),
                  CircularRoundedTextformfield(
                    controller: _fullNameController,
                    hintText: "Full Name",
                    prefixIcon: Icons.person,
                    validator: (value) => validateInput(value!, 'username'),
                  ),
                  CircularRoundedTextformfield(
                    controller: _emailController,
                    hintText: "Email",
                    prefixIcon: Icons.email,
                    validator: (value) => validateInput(value!, 'email'),
                  ),
                  CircularRoundedTextformfield(
                    controller: _phoneNumberController,
                    hintText: "Phone Number",
                    prefixIcon: Icons.phone,
                    validator: (value) => validateInput(value!, 'phone'),
                  ),
                  CircularRoundedTextformfield(
                    controller: _passwordController,
                    hintText: "Enter Password",
                    prefixIcon: Icons.vpn_key,
                    obsureText: true,
                    validator: (value) => validateInput(value!, 'password'),
                  ),
                  CircularRoundedButton(title: "REGISTER", onTap: _register),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 10, bottom: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Already a Member? "),
                  GestureDetector(
                    child: const Text(
                      "Login Now",
                      style: TextStyle(color: Color(0xffF5591F)),
                    ),
                    onTap: () {
                      Navigator.pop(context); // Navigate back to LoginScreen
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
