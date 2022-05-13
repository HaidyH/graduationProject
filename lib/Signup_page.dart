import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';

import 'main.dart';
//import 'package:get/get.dart';
//import 'package:screens/auth_controller.dart';

class SignUpPage extends StatelessWidget {
const SignUpPage({Key? key}) : super(key: key);

static const String _title = 'Pets Hub';

@override
Widget build(BuildContext context) {
  return MaterialApp(
    title: _title,
    home: Scaffold(
      appBar: AppBar(title: const Text(_title)),
      body: const MyStatefulWidget(),
    ),
  );
}
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController PhoneController = TextEditingController();
  TextEditingController emailController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(10),
        child: ListView(
          children: <Widget>[
            Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.all(10),
                // child: const Text(
                //   'TutorialKart',
                //   style: TextStyle(
                //       color: Colors.blue,
                //       fontWeight: FontWeight.w500,
                //       fontSize: 30),
                // )
             ),
            Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.all(10),
                child: const Text(
                  'Join US !',
                  style: TextStyle(fontSize: 20),
                )),
            Container(
              padding: const EdgeInsets.all(10),
              child: TextField(
                controller: nameController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'User Name',
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(10),
              child: TextField(
                controller: PhoneController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Phone Number',
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(10),
              child: TextField(
                controller: emailController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Email',
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
              child: TextField(
                obscureText: true,
                controller: passwordController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Password',
                ),
              ),
            ),
            TextButton(
              onPressed: () {
                //forgot password screen
              },
              child: const Text('Forgot Password',),
            ),
            Container(
                height: 50,
                padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                child: ElevatedButton(
                  child: const Text('Sign up'),
                  // onPressed: () {
                  //   print(nameController.text);
                  //   print(passwordController.text);
                  //
                  // },
                  onPressed: () {
                    Authentication.signup(context, emailController.text, passwordController.text);
                  }

                )
            ),
            Row(
              children: <Widget>[
                const Text('Does not have account?'),
                TextButton(
                  child: const Text(
                    'Sign in',
                    style: TextStyle(fontSize: 20),
                  ),
                  onPressed: () {
                    //signup screen
                  },
                )
              ],
              mainAxisAlignment: MainAxisAlignment.center,
            ),
          ],
        ));
  }
}


// StatelessWidget {
//   const SignUpPage({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     var emailController = TextEditingController();
//     var passwordController = TextEditingController();
//
//     List images = [
//       "google.png",
//       "twitter.png",
//       "facebook.png"
//     ];
//     double w = MediaQuery.of(context).size.width;
//     double h = MediaQuery.of(context).size.height;
//     return Scaffold(
//       backgroundColor: Colors.white,
//       body: Column(
//         children: [
//           Container(
//             width: w,
//             height: h * 0.3,
//             decoration: BoxDecoration(
//                 image: DecorationImage(
//                     image: AssetImage(
//                         "img/loginimg.png"
//                     ),
//                     fit: BoxFit.cover
//                 )
//             ),
//             child: Column(
//               children: [
//                 SizedBox(height: h*0.13,),
//                 CircleAvatar(
//                   backgroundColor: Colors.white70,
//                   radius: 60,
//                   backgroundImage: AssetImage(
//                       "img/PP.png"
//                   ),
//                 )
//               ],
//             ),
//           ),
//           Container(
//             margin: const EdgeInsets.only(left: 20, right: 20),
//             width: w,
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//
//                 SizedBox(
//                   height: 50,
//                 ),
//                 Container(
//                   decoration: BoxDecoration(
//                       color: Colors.white,
//                       borderRadius: BorderRadius.circular(30),
//                       boxShadow: [
//                         BoxShadow(
//                             blurRadius: 10,
//                             spreadRadius: 7,
//                             offset: Offset(1, 1),
//                             color: Colors.grey.withOpacity(0.2))
//                       ]),
//                   child: TextField(
//                     controller: emailController,
//                     decoration: InputDecoration(
//                         hintText: "E-mail",
//                         prefixIcon: Icon(Icons.email,color: Colors.black),
//                         focusedBorder: OutlineInputBorder(
//                             borderRadius: BorderRadius.circular(30),
//                             borderSide:
//                             BorderSide(color: Colors.white, width: 1.0)),
//                         enabledBorder: OutlineInputBorder(
//                             borderRadius: BorderRadius.circular(30),
//                             borderSide:
//                             BorderSide(color: Colors.white, width: 1.0)),
//                         border: OutlineInputBorder(
//                             borderRadius: BorderRadius.circular(30))),
//                   ),
//                 ),
//                 SizedBox(
//                   height: 20,
//                 ),
//                 Container(
//                   decoration: BoxDecoration(
//                       color: Colors.white,
//                       borderRadius: BorderRadius.circular(30),
//                       boxShadow: [
//                         BoxShadow(
//                             blurRadius: 10,
//                             spreadRadius: 7,
//                             offset: Offset(1, 1),
//                             color: Colors.grey.withOpacity(0.2))
//                       ]),
//                   child: TextField(
//                     controller: passwordController,
//                     obscureText: true,
//                     decoration: InputDecoration(
//                         hintText: "Password",
//                         prefixIcon: Icon(Icons.password,color: Colors.black),
//                         focusedBorder: OutlineInputBorder(
//                             borderRadius: BorderRadius.circular(30),
//                             borderSide:
//                             BorderSide(color: Colors.white, width: 1.0)),
//                         enabledBorder: OutlineInputBorder(
//                             borderRadius: BorderRadius.circular(30),
//                             borderSide:
//                             BorderSide(color: Colors.white, width: 1.0)),
//                         border: OutlineInputBorder(
//                             borderRadius: BorderRadius.circular(30))),
//                   ),
//                 ),
//                 SizedBox(
//                   height: 20,
//                 ),
//
//               ],
//             ),
//           ),
//           SizedBox(
//             height: 70,
//           ),
//           // GestureDetector(
//           //   onTap: (){Authentication.signup(context, emailController.text, passwordController.text);},
//           //   //{AuthController.instance.register(emailController.text.trim(), passwordController.text.trim());},
//           //   child: Container(
//           //     width: w * 0.5,
//           //     height: h * 0.06,
//           //     decoration: BoxDecoration(
//           //         borderRadius: BorderRadius.circular(30),
//           //         image: DecorationImage(
//           //             image: AssetImage("img/bttn.png"), fit: BoxFit.cover)),
//           //     child: Center(
//           //       child: Text(
//           //         "Sign up",
//           //         style: TextStyle(
//           //           fontSize: 36,
//           //           fontWeight: FontWeight.bold,
//           //           color: Colors.white,
//           //         ),
//           //       ),
//           //     ),
//           //   ),
//           // ),
//
//           SizedBox(height: 10,),
//           RichText(
//             text: TextSpan(
//                 //recognizer: TapGestureRecognizer()..onTap=()=>Get.back(),
//                 text: "Already have an account?",
//                 style: TextStyle(
//                     fontSize: 20,
//                     color: Colors.grey[500]
//                 )
//             ),
//           ),
//           SizedBox(height: w * 0.1),
//           // RichText(
//           //     text: TextSpan(
//           //       text: "Sign up using one of the following methods",
//           //       style: TextStyle(color: Colors.grey[500], fontSize: 16),
//           //     )),
//           // Wrap(
//           //   children: List<Widget>.generate(
//           //       3,
//           //           (index){
//           //         return Padding(
//           //           padding: const EdgeInsets.all(10.0),
//           //           child: CircleAvatar(
//           //             radius: 30,
//           //             backgroundColor: Colors.grey[500],
//           //             child: CircleAvatar(
//           //               backgroundColor: Colors.white,
//           //               radius: 25,
//           //               backgroundImage: AssetImage(
//           //                   "img/"+images[index]
//           //               ),
//           //             ),
//           //           ),
//           //         );
//           //       }
//           //   ),
//           // )
//         ],
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: (){Authentication.signup(context, emailController.text, "123123");},
//         tooltip: 'Increment',
//         child: const Icon(Icons.add),
//       ),
//     );
//   }
// }
