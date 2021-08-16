import 'package:firebase_firestoreapp/screens/homepage.dart';
import 'package:firebase_firestoreapp/screens/login_page.dart';
import 'package:flutter/material.dart';
// import 'screens/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Firebase FireStore App',
      routes: {
        '/login': (context) => LoginPage(),
        '/home': (context) => HomeScreen(),
        // '/Profile': (context) => ProfilePage(),
      },
      home: LoginPage(),
    );
  }
}
// void main() {
//   // SystemChrome.setPreferredOrientations([
//   //   DeviceOrientation.portraitUp,
//   //   // DeviceOrientation.portraitDown,
//   // ]);

//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   static final String title = 'Fitness App ';

//   @override
//   Widget build(BuildContext context) => MaterialApp(
//         debugShowCheckedModeBanner: false,
//         title: title,

//         theme: ThemeData(
//           primaryColor: Color(0xFFff6369),
//         ),
//         // routes: {
//         //   // '/login': (context) => LoginPage(),
//         //   '/home': (context) => MainPage(),
//         //   // '/Profile': (context) => ProfilePage(),
//         // },
//         // home: LoginPage(),
//         home: HomeScreen(),
//       );
// }

// class MainPage extends StatefulWidget {
//   @override
//   _MainPageState createState() => _MainPageState();
// }

// class _MainPageState extends State<MainPage> {
//   @override
//   Widget build(BuildContext context) => Scaffold(
//         // drawer: NavigationDrawerWidget(),
//         // endDrawer: NavigationDrawerWidget(),
//         appBar: AppBar(
//           title: Text(MyApp.title),
//         ),
//         body: CustomScrollView(
//           physics: BouncingScrollPhysics(),
//           slivers: [
//             // return
//             // buildAppBar(context),
//             ExercisesWidget(),
//           ],
//         ),
//       );
// }
//  routes: {
//         '/login': (context) => LoginPage(),
//         '/home': (context) => HomePage(),
//         // '/Profile': (context) => ProfilePage(),
//       },
//       home: LoginPage(),
