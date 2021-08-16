// import 'package:firebase_firestoreapp/main.dart';
// import 'package:firebase_firestoreapp/screens/activity_screen.dart';
// import 'package:firebase_firestoreapp/screens/dashboard_screen.dart';
// import 'package:firebase_firestoreapp/screens/testing.dart';
// import 'package:flutter/material.dart';

// class NavigationDrawerWidget extends StatelessWidget {
//   final padding = EdgeInsets.symmetric(horizontal: 20);
//   @override
//   Widget build(BuildContext context) {
//     return Drawer(
//       child: Material(
//         color: Color.fromRGBO(50, 75, 205, 1),
//         child: ListView(
//           children: <Widget>[
//             Container(
//               padding: padding,
//               child: Column(
//                 children: [
//                   const SizedBox(height: 12),
//                   buildSearchField(),
//                   const SizedBox(height: 24),
//                   buildMenuItem(
//                     text: 'DashBoard',
//                     icon: Icons.people,
//                     onClicked: () => selectedItem(context, 0),
//                   ),
//                   const SizedBox(height: 16),
//                   buildMenuItem(
//                     text: 'Activity',
//                     icon: Icons.favorite_border,
//                     onClicked: () => selectedItem(context, 1),
//                   ),
//                   const SizedBox(height: 16),
//                   buildMenuItem(
//                     text: 'Profile',
//                     icon: Icons.workspaces_outline,
//                     onClicked: () => selectedItem(context, 2),
//                   ),
//                   const SizedBox(height: 16),
//                   buildMenuItem(
//                     text: 'Metrics',
//                     icon: Icons.update,
//                     onClicked: () => selectedItem(context, 3),
//                   ),
//                   const SizedBox(height: 24),
//                   Divider(color: Colors.white70),
//                   const SizedBox(height: 24),
//                   buildMenuItem(
//                     text: 'Plugins',
//                     icon: Icons.account_tree_outlined,
//                     onClicked: () => selectedItem(context, 4),
//                   ),
//                   const SizedBox(height: 16),
//                   buildMenuItem(
//                     text: 'Notifications',
//                     icon: Icons.notifications_outlined,
//                     onClicked: () => selectedItem(context, 5),
//                   ),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//   Widget buildHeader({
//     String urlImage,
//     String name,
//     String email,
//     VoidCallback onClicked,
//   }) =>
//       InkWell(
//         onTap: onClicked,
//         child: Container(
//           padding: padding.add(EdgeInsets.symmetric(vertical: 40)),
//           child: Row(
//             children: [
//               CircleAvatar(radius: 30, backgroundImage: NetworkImage(urlImage)),
//               SizedBox(width: 20),
//               Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Text(
//                     name,
//                     style: TextStyle(fontSize: 20, color: Colors.white),
//                   ),
//                   const SizedBox(height: 4),
//                   Text(
//                     email,
//                     style: TextStyle(fontSize: 14, color: Colors.white),
//                   ),
//                 ],
//               ),
//               Spacer(),
//               CircleAvatar(
//                 radius: 24,
//                 backgroundColor: Color.fromRGBO(30, 60, 168, 1),
//                 child: Icon(Icons.add_comment_outlined, color: Colors.white),
//               )
//             ],
//           ),
//         ),
//       );

//   Widget buildSearchField() {
//     final color = Colors.white;

//     return TextField(
//       style: TextStyle(color: color),
//       decoration: InputDecoration(
//         contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
//         hintText: 'Search',
//         hintStyle: TextStyle(color: color),
//         prefixIcon: Icon(Icons.search, color: color),
//         filled: true,
//         fillColor: Colors.white12,
//         enabledBorder: OutlineInputBorder(
//           borderRadius: BorderRadius.circular(5),
//           borderSide: BorderSide(color: color.withOpacity(0.7)),
//         ),
//         focusedBorder: OutlineInputBorder(
//           borderRadius: BorderRadius.circular(5),
//           borderSide: BorderSide(color: color.withOpacity(0.7)),
//         ),
//       ),
//     );
//   }

//   Widget buildMenuItem({
//     String text,
//     IconData icon,
//     VoidCallback onClicked,
//   }) {
//     final color = Colors.white;
//     final hoverColor = Colors.white70;

//     return ListTile(
//       leading: Icon(icon, color: color),
//       title: Text(text, style: TextStyle(color: color)),
//       hoverColor: hoverColor,
//       onTap: onClicked,
//     );
//   }

//   void selectedItem(BuildContext context, int index) {
//     Navigator.of(context).pop();

//     switch (index) {
//       case 0:
//         Navigator.of(context).push(MaterialPageRoute(
//             // builder: (context) => MainPage(),
//             ));
//         break;
//       case 1:
//         Navigator.of(context).push(MaterialPageRoute(
//           builder: (context) => HomeScreen(),
//         ));
//         break;
//     }
//   }
// }
