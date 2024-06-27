// // import 'package:flutter/material.dart';
// // import 'package:loginform/signup.dart';
// //
// // class LoginScreen extends StatefulWidget {
// //   @override
// //   State<StatefulWidget> createState() => StartState();
// // }
// //
// // class StartState extends State<LoginScreen> {
// //   @override
// //   Widget build(BuildContext context) {
// //     return initWidget();
// //   }
// //
// //   initWidget() {
// //     return Scaffold(
// //         body: SingleChildScrollView(
// //             child: Column(
// //               children: [
// //                 Container(
// //                   height: 300,
// //                   decoration: BoxDecoration(
// //                     borderRadius: BorderRadius.only(bottomLeft: Radius.circular(90)),
// //                     color: new Color(0xffF5591F),
// //                     gradient: LinearGradient(colors: [(new  Color(0xffF5591F)), new Color(0xffF2861E)],
// //                       begin: Alignment.topCenter,
// //                       end: Alignment.bottomCenter,
// //                     ),
// //                   ),
// //                   child: Center(
// //                       child: Column(
// //                         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
// //                         crossAxisAlignment: CrossAxisAlignment.center,
// //                         children: [
// //                           Container(
// //                             margin: EdgeInsets.only(top: 50),
// //                             child: Image.asset(
// //                               "assets/app_logo.png",
// //                               height: 90,
// //                               width: 90,
// //                             ),
// //                           ),
// //                           Container(
// //                             margin: EdgeInsets.only(right: 20, top: 20),
// //                             alignment: Alignment.bottomRight,
// //                             child: Text(
// //                               "Login",
// //                               style: TextStyle(
// //                                   fontSize: 20,
// //                                   color: Colors.white
// //                               ),
// //                             ),
// //                           )
// //                         ],
// //                       )
// //                   ),
// //                 ),
// //
// //                 Container(
// //                   alignment: Alignment.center,
// //                   margin: EdgeInsets.only(left: 20, right: 20, top: 70),
// //                   padding: EdgeInsets.only(left: 20, right: 20),
// //                   height: 54,
// //                   decoration: BoxDecoration(
// //                     borderRadius: BorderRadius.circular(50),
// //                     color: Colors.grey[200],
// //
// //                   ),
// //                   child: TextField(
// //                     cursorColor: Color(0xffF5591F),
// //                     decoration: InputDecoration(
// //                       icon: Icon(
// //                         Icons.email,
// //                         color: Color(0xffF5591F),
// //                       ),
// //                       hintText: "Enter Email",
// //                       enabledBorder: InputBorder.none,
// //                       focusedBorder: InputBorder.none,
// //                     ),
// //                   ),
// //                 ),
// //
// //                 Container(
// //                   alignment: Alignment.center,
// //                   margin: EdgeInsets.only(left: 20, right: 20, top: 20),
// //                   padding: EdgeInsets.only(left: 20, right: 20),
// //                   height: 54,
// //                   decoration: BoxDecoration(
// //                     borderRadius: BorderRadius.circular(50),
// //                     color: Color(0xffEEEEEE),
// //                     boxShadow: [
// //                       BoxShadow(
// //                           offset: Offset(0, 20),
// //                           blurRadius: 100,
// //                           color: Color(0xffEEEEEE)
// //                       ),
// //                     ],
// //                   ),
// //                   child: TextField(
// //                     cursorColor: Color(0xffF5591F),
// //                     decoration: InputDecoration(
// //                       focusColor: Color(0xffF5591F),
// //                       icon: Icon(
// //                         Icons.vpn_key,
// //                         color: Color(0xffF5591F),
// //                       ),
// //                       hintText: "Enter Password",
// //                       enabledBorder: InputBorder.none,
// //                       focusedBorder: InputBorder.none,
// //                     ),
// //                   ),
// //                 ),
// //                 Container(
// //                   margin: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
// //                   alignment: Alignment.centerRight,
// //                   child: GestureDetector(
// //                     onTap: () {
// //                       // Write Click Listener Code Here
// //                     },
// //                     child: Text("Forget Password?"),
// //                   ),
// //                 ),
// //
// //                 GestureDetector(
// //                   onTap: () {
// //                     // Write Click Listener Code Here.
// //                   },
// //                   child: Container(
// //                     alignment: Alignment.center,
// //                     margin: EdgeInsets.only(left: 20, right: 20, top: 70),
// //                     padding: EdgeInsets.only(left: 20, right: 20),
// //                     height: 54,
// //                     decoration: BoxDecoration(
// //                       gradient: LinearGradient(colors: [(new  Color(0xffF5591F)), new Color(0xffF2861E)],
// //                           begin: Alignment.centerLeft,
// //                           end: Alignment.centerRight
// //                       ),
// //                       borderRadius: BorderRadius.circular(50),
// //                       color: Colors.grey[200],
// //                       boxShadow: [
// //                         BoxShadow(
// //                             offset: Offset(0, 10),
// //                             blurRadius: 50,
// //                             color: Color(0xffEEEEEE)
// //                         ),
// //                       ],
// //                     ),
// //                     child: Text(
// //                       "LOGIN",
// //                       style: TextStyle(
// //                           color: Colors.white
// //                       ),
// //                     ),
// //                   ),
// //                 ),
// //                 Container(
// //                   margin: EdgeInsets.only(top: 10),
// //                   child: Row(
// //                     mainAxisAlignment: MainAxisAlignment.center,
// //                     children: [
// //                       Text("Don't Have Any Account?  "),
// //                       GestureDetector(
// //                         child: Text(
// //                           "Register Now",
// //                           style: TextStyle(
// //                               color: Color(0xffF5591F)
// //                           ),
// //                         ),
// //                         onTap: () {
// //                           // Write Tap Code Here.
// //                           Navigator.push(
// //                               context,
// //                               MaterialPageRoute(
// //                                 builder: (context) => SignUpScreen(),
// //                               )
// //                           );
// //                         },
// //                       )
// //                     ],
// //                   ),
// //                 )
// //               ],
// //             )
// //         )
// //     );
// //   }
// // }
// // import 'package:flutter/material.dart';
// // import 'package:loginform/signup.dart';
// // import 'package:loginform/authservice.dart';
// //
// // import 'authservice.dart'; // Import your AuthService implementation
// //
// // class LoginScreen extends StatefulWidget {
// //   @override
// //   State<StatefulWidget> createState() => StartState();
// // }
// //
// // class StartState extends State<LoginScreen> {
// //   TextEditingController _emailController = TextEditingController();
// //   TextEditingController _passwordController = TextEditingController();
// //   String _errorMessage = '';
// //
// //   void _login() async {
// //     String email = _emailController.text.trim();
// //     String password = _passwordController.text.trim();
// //
// //     // Example authentication logic using AuthService
// //     AuthService authService = AuthService();
// //     bool isLoggedIn = await authService.login(email, password);
// //
// //     if (isLoggedIn) {
// //       // Navigate to another screen or perform action upon successful login
// //       _showSnackBar('Login successful!');
// //       // Example navigation
// //       // Navigator.push(
// //       //   context,
// //       //   MaterialPageRoute(builder: (context) => HomeScreen()),
// //       // );
// //     } else {
// //       // Update UI to show error message
// //       setState(() {
// //         _errorMessage = 'Invalid email or password. Please try again.';
// //       });
// //     }
// //   }
// //
// //   void _showSnackBar(String message) {
// //     ScaffoldMessenger.of(context).showSnackBar(
// //       SnackBar(
// //         content: Text(message),
// //         duration: Duration(seconds: 2),
// //       ),
// //     );
// //   }
// //
// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       body: SingleChildScrollView(
// //         child: Column(
// //           children: [
// //             Container(
// //               height: 300,
// //               decoration: BoxDecoration(
// //                 borderRadius: BorderRadius.only(bottomLeft: Radius.circular(90)),
// //                 color: Color(0xffF5591F),
// //                 gradient: LinearGradient(
// //                   colors: [Color(0xffF5591F), Color(0xffF2861E)],
// //                   begin: Alignment.topCenter,
// //                   end: Alignment.bottomCenter,
// //                 ),
// //               ),
// //               child: Center(
// //                 child: Column(
// //                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
// //                   crossAxisAlignment: CrossAxisAlignment.center,
// //                   children: [
// //                     Container(
// //                       margin: EdgeInsets.only(top: 50),
// //                       child: Image.asset(
// //                         "assets/app_logo.png",
// //                         height: 90,
// //                         width: 90,
// //                       ),
// //                     ),
// //                     Container(
// //                       margin: EdgeInsets.only(right: 20, top: 20),
// //                       alignment: Alignment.bottomRight,
// //                       child: Text(
// //                         "Login",
// //                         style: TextStyle(
// //                           fontSize: 20,
// //                           color: Colors.white,
// //                         ),
// //                       ),
// //                     )
// //                   ],
// //                 ),
// //               ),
// //             ),
// //             Container(
// //               alignment: Alignment.center,
// //               margin: EdgeInsets.only(left: 20, right: 20, top: 70),
// //               padding: EdgeInsets.only(left: 20, right: 20),
// //               height: 54,
// //               decoration: BoxDecoration(
// //                 borderRadius: BorderRadius.circular(50),
// //                 color: Colors.grey[200],
// //               ),
// //               child: TextField(
// //                 controller: _emailController,
// //                 cursorColor: Color(0xffF5591F),
// //                 decoration: InputDecoration(
// //                   icon: Icon(
// //                     Icons.email,
// //                     color: Color(0xffF5591F),
// //                   ),
// //                   hintText: "Enter Email",
// //                   enabledBorder: InputBorder.none,
// //                   focusedBorder: InputBorder.none,
// //                 ),
// //               ),
// //             ),
// //             Container(
// //               alignment: Alignment.center,
// //               margin: EdgeInsets.only(left: 20, right: 20, top: 20),
// //               padding: EdgeInsets.only(left: 20, right: 20),
// //               height: 54,
// //               decoration: BoxDecoration(
// //                 borderRadius: BorderRadius.circular(50),
// //                 color: Color(0xffEEEEEE),
// //                 boxShadow: [
// //                   BoxShadow(
// //                     offset: Offset(0, 20),
// //                     blurRadius: 100,
// //                     color: Color(0xffEEEEEE),
// //                   ),
// //                 ],
// //               ),
// //               child: TextField(
// //                 controller: _passwordController,
// //                 cursorColor: Color(0xffF5591F),
// //                 obscureText: true,
// //                 decoration: InputDecoration(
// //                   focusColor: Color(0xffF5591F),
// //                   icon: Icon(
// //                     Icons.vpn_key,
// //                     color: Color(0xffF5591F),
// //                   ),
// //                   hintText: "Enter Password",
// //                   enabledBorder: InputBorder.none,
// //                   focusedBorder: InputBorder.none,
// //                 ),
// //               ),
// //             ),
// //             Visibility(
// //               visible: _errorMessage.isNotEmpty,
// //               child: Container(
// //                 margin: EdgeInsets.only(top: 10),
// //                 child: Text(
// //                   _errorMessage,
// //                   style: TextStyle(color: Colors.red),
// //                 ),
// //               ),
// //             ),
// //             Container(
// //               margin: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
// //               alignment: Alignment.centerRight,
// //               child: GestureDetector(
// //                 onTap: () {
// //                   // Write Click Listener Code Here (forgot password)
// //                 },
// //                 child: Text("Forget Password?"),
// //               ),
// //             ),
// //             GestureDetector(
// //               onTap: _login,
// //               child: Container(
// //                 alignment: Alignment.center,
// //                 margin: EdgeInsets.only(left: 20, right: 20, top: 70),
// //                 padding: EdgeInsets.only(left: 20, right: 20),
// //                 height: 54,
// //                 decoration: BoxDecoration(
// //                   gradient: LinearGradient(
// //                     colors: [Color(0xffF5591F), Color(0xffF2861E)],
// //                     begin: Alignment.centerLeft,
// //                     end: Alignment.centerRight,
// //                   ),
// //                   borderRadius: BorderRadius.circular(50),
// //                   color: Colors.grey[200],
// //                   boxShadow: [
// //                     BoxShadow(
// //                       offset: Offset(0, 10),
// //                       blurRadius: 50,
// //                       color: Color(0xffEEEEEE),
// //                     ),
// //                   ],
// //                 ),
// //                 child: Text(
// //                   "LOGIN",
// //                   style: TextStyle(
// //                     color: Colors.white,
// //                   ),
// //                 ),
// //               ),
// //             ),
// //             Container(
// //               margin: EdgeInsets.only(top: 10),
// //               child: Row(
// //                 mainAxisAlignment: MainAxisAlignment.center,
// //                 children: [
// //                   Text("Don't Have Any Account?  "),
// //                   GestureDetector(
// //                     child: Text(
// //                       "Register Now",
// //                       style: TextStyle(
// //                         color: Color(0xffF5591F),
// //                       ),
// //                     ),
// //                     onTap: () {
// //                       // Write Tap Code Here.
// //                       Navigator.push(
// //                         context,
// //                         MaterialPageRoute(
// //                           builder: (context) => SignUpScreen(),
// //                         ),
// //                       );
// //                     },
// //                   )
// //                 ],
// //               ),
// //             )
// //           ],
// //         ),
// //       ),
// //     );
// //   }
// // }
// import 'package:flutter/material.dart';
// import 'package:loginform/signup.dart';
// import 'package:loginform/authservice.dart';
//
// class LoginScreen extends StatefulWidget {
//   @override
//   State<StatefulWidget> createState() => StartState();
// }
//
// class StartState extends State<LoginScreen> {
//   TextEditingController _emailController = TextEditingController();
//   TextEditingController _passwordController = TextEditingController();
//   String _errorMessage = '';
//
//   void _login() async {
//     String email = _emailController.text.trim();
//     String password = _passwordController.text.trim();
//
//     // Example authentication logic using AuthService
//     AuthService authService = AuthService();
//     bool isLoggedIn = await authService.login(email, password);
//
//     if (isLoggedIn) {
//       // Navigate to another screen or perform action upon successful login
//       _showSnackBar('Login successful!');
//       // Example navigation
//       // Navigator.push(
//       //   context,
//       //   MaterialPageRoute(builder: (context) => HomeScreen()),
//       // );
//     } else {
//       // Update UI to show error message
//       setState(() {
//         _errorMessage = 'Invalid email or password. Please try again.';
//       });
//     }
//   }
//
//   void _showSnackBar(String message) {
//     ScaffoldMessenger.of(context).showSnackBar(
//       SnackBar(
//         content: Text(message),
//         duration: Duration(seconds: 2),
//       ),
//     );
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SingleChildScrollView(
//         child: Column(
//           children: [
//             Container(
//               height: 300,
//               decoration: BoxDecoration(
//                 borderRadius: BorderRadius.only(bottomLeft: Radius.circular(90)),
//                 color: Color(0xffF5591F),
//                 gradient: LinearGradient(
//                   colors: [Color(0xffF5591F), Color(0xffF2861E)],
//                   begin: Alignment.topCenter,
//                   end: Alignment.bottomCenter,
//                 ),
//               ),
//               child: Center(
//                 child: Column(
//                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                   crossAxisAlignment: CrossAxisAlignment.center,
//                   children: [
//                     Container(
//                       margin: EdgeInsets.only(top: 50),
//                       child: Image.asset(
//                         "assets/app_logo.png",
//                         height: 90,
//                         width: 90,
//                       ),
//                     ),
//                     Container(
//                       margin: EdgeInsets.only(right: 20, top: 20),
//                       alignment: Alignment.bottomRight,
//                       child: Text(
//                         "Login",
//                         style: TextStyle(
//                           fontSize: 20,
//                           color: Colors.white,
//                         ),
//                       ),
//                     )
//                   ],
//                 ),
//               ),
//             ),
//             Container(
//               alignment: Alignment.center,
//               margin: EdgeInsets.only(left: 20, right: 20, top: 70),
//               padding: EdgeInsets.only(left: 20, right: 20),
//               height: 54,
//               decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(50),
//                 color: Colors.grey[200],
//               ),
//               child: TextField(
//                 controller: _emailController,
//                 cursorColor: Color(0xffF5591F),
//                 decoration: InputDecoration(
//                   icon: Icon(
//                     Icons.email,
//                     color: Color(0xffF5591F),
//                   ),
//                   hintText: "Enter Email",
//                   enabledBorder: InputBorder.none,
//                   focusedBorder: InputBorder.none,
//                 ),
//               ),
//             ),
//             Container(
//               alignment: Alignment.center,
//               margin: EdgeInsets.only(left: 20, right: 20, top: 20),
//               padding: EdgeInsets.only(left: 20, right: 20),
//               height: 54,
//               decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(50),
//                 color: Color(0xffEEEEEE),
//                 boxShadow: [
//                   BoxShadow(
//                     offset: Offset(0, 20),
//                     blurRadius: 100,
//                     color: Color(0xffEEEEEE),
//                   ),
//                 ],
//               ),
//               child: TextField(
//                 controller: _passwordController,
//                 cursorColor: Color(0xffF5591F),
//                 obscureText: true,
//                 decoration: InputDecoration(
//                   focusColor: Color(0xffF5591F),
//                   icon: Icon(
//                     Icons.vpn_key,
//                     color: Color(0xffF5591F),
//                   ),
//                   hintText: "Enter Password",
//                   enabledBorder: InputBorder.none,
//                   focusedBorder: InputBorder.none,
//                 ),
//               ),
//             ),
//             Visibility(
//               visible: _errorMessage.isNotEmpty,
//               child: Container(
//                 margin: EdgeInsets.only(top: 10),
//                 child: Text(
//                   _errorMessage,
//                   style: TextStyle(color: Colors.red),
//                 ),
//               ),
//             ),
//             Container(
//               margin: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
//               alignment: Alignment.centerRight,
//               child: GestureDetector(
//                 onTap: () {
//                   // Write Click Listener Code Here (forgot password)
//                 },
//                 child: Text("Forget Password?"),
//               ),
//             ),
//             GestureDetector(
//               onTap: _login,
//               child: Container(
//                 alignment: Alignment.center,
//                 margin: EdgeInsets.only(left: 20, right: 20, top: 70),
//                 padding: EdgeInsets.only(left: 20, right: 20),
//                 height: 54,
//                 decoration: BoxDecoration(
//                   gradient: LinearGradient(
//                     colors: [Color(0xffF5591F), Color(0xffF2861E)],
//                     begin: Alignment.centerLeft,
//                     end: Alignment.centerRight,
//                   ),
//                   borderRadius: BorderRadius.circular(50),
//                   color: Colors.grey[200],
//                   boxShadow: [
//                     BoxShadow(
//                       offset: Offset(0, 10),
//                       blurRadius: 50,
//                       color: Color(0xffEEEEEE),
//                     ),
//                   ],
//                 ),
//                 child: Text(
//                   "LOGIN",
//                   style: TextStyle(
//                     color: Colors.white,
//                   ),
//                 ),
//               ),
//             ),
//             Container(
//               margin: EdgeInsets.only(top: 10),
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   Text("Don't Have Any Account?  "),
//                   GestureDetector(
//                     child: Text(
//                       "Register Now",
//                       style: TextStyle(
//                         color: Color(0xffF5591F),
//                       ),
//                     ),
//                     onTap: () {
//                       // Write Tap Code Here.
//                       Navigator.push(
//                         context,
//                         MaterialPageRoute(
//                           builder: (context) => SignUpScreen(),
//                         ),
//                       );
//                     },
//                   )
//                 ],
//               ),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:loginform/pages/dashboard_page.dart';
import 'package:loginform/pages/signup.dart';
import 'package:loginform/authservice.dart';
import 'package:loginform/utils/validators.dart';
import 'package:loginform/widgets/circular_rounded_button.dart';
import 'package:loginform/widgets/circular_rounded_textformfield.dart';
import 'package:loginform/widgets/single_side_rounded_header.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => StartState();
}

class StartState extends State<LoginScreen> {
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  String _errorMessage = '';
  bool isLoading = false;

  void _login() async {
    String email = _emailController.text.trim();
    String password = _passwordController.text.trim();
    print("in the login");
    if (email.isEmpty || password.isEmpty) {
      print("in the if");
      return;
    }

    setState(() {
      isLoading = true;
    });
    print("isLoad:$isLoading");
    AuthService authService = AuthService();
    bool isLoggedIn = await authService.login(email, password);

    if (isLoggedIn) {
      _showSnackBar('Login successful!');
      Future.delayed(Duration(seconds: 2), () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) =>DashboardPage(),
            ));
      });
    } else {
      setState(() {
        isLoading=false;
        _errorMessage = 'Invalid email or password. Please try again.';
      });
    }
  }

  void _showSnackBar(String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        backgroundColor: Colors.green,
        content: Text(message),
        duration: const Duration(seconds: 2),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SingleSideRoundedHeader(title: "LOGIN"),
            Form(
              key:_formKey,
                child: Column(
              children: [
                CircularRoundedTextformfield(
                  controller: _emailController,
                  validator: (value) => validateInput(value!, 'email'),
                  prefixIcon: Icons.email,
                  hintText: "Enter Email",
                ),
                CircularRoundedTextformfield(
                  controller: _passwordController,
                  validator: (value) => validateInput(value!, 'password'),
                  prefixIcon: Icons.vpn_key,
                  hintText: "Enter Password",
                ),
              ],
            )),
            Visibility(
              visible: _errorMessage.isNotEmpty,
              child: Container(
                margin: const EdgeInsets.only(top: 10),
                child: Text(
                  _errorMessage,
                  style: const TextStyle(color: Colors.red),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
              alignment: Alignment.centerRight,
              child: GestureDetector(
                onTap: () {
                  // Write Click Listener Code Here (forgot password)
                },
                child: const Text("Forget Password?"),
              ),
            ),
            isLoading
                ? CircularProgressIndicator()
                : CircularRoundedButton(
                    onTap: _login,
                    title: "LOGIN",
                  ),
            Container(
              margin: const EdgeInsets.only(top: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Don't Have Any Account?  "),
                  GestureDetector(
                    child: const Text(
                      "Register Now",
                      style: TextStyle(
                        color: Color(0xffF5591F),
                      ),
                    ),
                    onTap: () {
                      // Navigate to SignUpScreen when register now is tapped
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SignUpScreen(),
                        ),
                      );
                    },
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
