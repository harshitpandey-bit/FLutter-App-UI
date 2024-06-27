// import 'dart:async';
//
// import 'package:flutter/material.dart';
//
// import 'login_screen.dart';
//
// void main() {
//   runApp(SplashScreen());
// }
//
// class SplashScreen extends StatefulWidget {
//   @override
//   State<StatefulWidget> createState() => StartState();
// }
//
// class StartState extends State<SplashScreen> {
//
//   @override
//   void initState() {
//     // TODO: implement initState
//     super.initState();
//     startTime();
//   }
//
//   startTime() async {
//     var duration = Duration(seconds: 4);
//     return new Timer(duration, route);
//   }
//
//   route() {
//     Navigator.pushReplacement(context, MaterialPageRoute(
//         builder: (context) => LoginScreen()
//     ));
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return initWidget(context);
//   }
//
//   Widget initWidget(BuildContext context) {
//     return Scaffold(
//       body: Stack(
//         children: [
//           Container(
//             decoration: BoxDecoration(
//                 color: new Color(0xffF5591F),
//                 gradient: LinearGradient(colors: [(new  Color(0xffF5591F)), new Color(0xffF2861E)],
//                     begin: Alignment.topCenter,
//                     end: Alignment.bottomCenter
//                 )
//             ),
//           ),
//           Center(
//             child: Container(
//               child: Image.asset("assets/app_logo.png"),
//             ),
//           )
//         ],
//       ),
//     );
//   }
// }
import 'dart:async';

import 'package:flutter/material.dart';
import 'login_screen.dart';

void main() {
  runApp(SplashScreen());
}

class SplashScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => StartState();
}

class StartState extends State<SplashScreen> {
  bool isLoading = true; // Track whether splash screen is still loading

  @override
  void initState() {
    super.initState();
    startTime();
  }

  startTime() async {
    var duration = const Duration(seconds: 4);
    return Timer(duration, route);
  }

  route() {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => LoginScreen()),
    ).then((_) {
      // Set isLoading to false when LoginScreen route is pushed
      setState(() {
        isLoading = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [Color(0xffF5591F), Color(0xffF2861E)],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  child: Image.asset("assets/app_logo.png"),
                ),
                const SizedBox(height: 20),
                // Conditional loading indicator
                if (isLoading)
                  const CircularProgressIndicator(
                    valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
