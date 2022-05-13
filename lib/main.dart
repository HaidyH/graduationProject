import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: Authentication.initializeFirebase(),
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            return Text('Something went wrong');
          }
          if (snapshot.connectionState == ConnectionState.done)  {
            return MaterialApp(
              title: 'Flutter Firebase Authentication Tutorial',
              debugShowCheckedModeBanner: false,
              theme: ThemeData(
                primarySwatch: Colors.blue,
              ),
              home: const MyHomePage(title: 'Flutter Demo Home Page'),
            );
          }
          return CircularProgressIndicator(
              valueColor: AlwaysStoppedAnimation<Color>(Colors.orange));
        });
  }


}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  final myController = TextEditingController();

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            TextField(
             autofocus: true,
              controller: myController ,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){Authentication.signup(context, myController.text, "123123");},
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

//   // Future Signup () async {
//   //   try{
//   //     await FirebaseAuth.instance.createUserWithEmailAndPassword(email: "dody@gmail.com", password: "123");
//   //
//   //   }
//   //  on FirebaseException catch(e) {
//   //   // ignore: avoid_print
//   //   print("haidy");
//   //
//   //   }
//   // }
//
//
class Authentication {

  static Future<FirebaseApp> initializeFirebase() async {
    FirebaseApp firebaseApp = await Firebase.initializeApp();
    return firebaseApp;
  }

  static void signup(BuildContext context,String email, String password) {
    FirebaseAuth auth = FirebaseAuth.instance;
    auth.createUserWithEmailAndPassword(
        email: email, password: password).then((_) {
          print("registeration success");
      //   Navigator.of(context).pushReplacement(
      //       // MaterialPageRoute(builder: (context) => VerifyScreen()));
      // });
    });
  }

  static void signin(BuildContext context, String email, String password) {
    final auth = FirebaseAuth.instance;
    auth.signInWithEmailAndPassword(email: email, password: password).then((_) {
      // Navigator.of(context).pushReplacement(
      //     MaterialPageRoute(builder: (context) => HomePage())
      // );
      print("Success logged in");
    });
  }

}
//
// class Signin extends StatelessWidget {
//   const Signin({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       child: InkWell
//         (
//           onTap: (){
//             Authentication.signup(context, "dd@gmail.co", "password");
//           },
//           child: Container(
//             width: 100,
//             height: 100,
//             color: Colors.red,
//
//           )),
//     );
//   }
// }
