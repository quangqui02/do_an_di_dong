// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';

// class TabBarDemo extends StatefulWidget {
//   const TabBarDemo({Key? key}) : super(key: key);

//   @override
//   State<TabBarDemo> createState() => _TabBarDemoState();
// }

// class _TabBarDemoState extends State<TabBarDemo> {
//   String? selectedValue;
//   bool buttonDown = false;
//   int tabIndex = 0;
//   int dropDownindex = 0;
//   String dropdownvalue = 'A';
//   @override
//   Widget build(BuildContext context) {
//     double width = MediaQuery.of(context).size.width;
//     return DefaultTabController(
//       initialIndex: 1,
//       length: 4,
//       child: Stack(
//         children: [
//           Scaffold(
//             appBar: AppBar(
//               title: const Text('TabBar Widget'),
//               bottom: TabBar(
//                 tabs: [
//                   const Tab(icon: Icon(Icons.cloud_outlined)),
//                   const Tab(icon: Icon(Icons.beach_access_sharp)),
//                   const Tab(icon: Icon(Icons.brightness_5_sharp)),
//                   SizedBox(
//                     width: width / 3 - 70,
//                     child: Tab(
//                       child: Row(
//                         children: [
//                           const SizedBox(
//                             width: 5,
//                           ),
//                           Text(
//                             maxLines: 1,
//                             overflow: TextOverflow.clip,
//                             'A',
//                             style: TextStyle(
//                               fontSize: 16,
//                               color: Colors.black,
//                             ),
//                           ),
//                           const SizedBox(
//                             width: 3,
//                           ),
//                           GestureDetector(
//                             onTap: () {
//                               setState(() {
//                                 buttonDown = !buttonDown;
//                               });
//                             },
//                             child: Visibility(
//                               visible: dropDownindex == 0,
//                               child: Icon(
//                                 buttonDown
//                                     ? Icons.keyboard_arrow_up
//                                     : Icons.keyboard_arrow_down,
//                                 //Icons.keyboard_arrow_up,
//                                 size: 16,
//                                 color: Colors.black,
//                               ),
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                   ),
//                   // DropdownButtonHideUnderline(
//                   //   child: DropdownButton<String?>(
//                   //     value: selectedValue,
//                   //     onChanged: (value) {
//                   //       setState(() {
//                   //         selectedValue = value;
//                   //       });
//                   //     },
//                   //     items: ["A", "B", "C"]
//                   //         .map(
//                   //           (e) => DropdownMenuItem(
//                   //         value: e,
//                   //         child: Text(e),
//                   //       ),
//                   //     )
//                   //         .toList(),
//                   //   ),
//                   // ),
//                 ],
//               ),
//             ),
//             body: TabBarView(
//               children: [
//                 const Center(child: Text("It's cloudy here")),
//                 const Center(
//                   child: Text("It's rainy here"),
//                 ),
//                 const Center(
//                   child: Text("It's sunny here"),
//                 ),
//                 Center(
//                     child:
//                         Text("TabBar here ${dropdownvalue ?? "select 1st"}")),
//               ],
//             ),
//           ),
//           Visibility(
//               visible: buttonDown,
//               child: Positioned(
//                 top: 110 + MediaQuery.of(context).padding.top,
//                 left: 115,
//                 child: AnimatedContainer(
//                   duration: const Duration(seconds: 5),
//                   curve: Curves.easeInQuint,
//                   decoration: BoxDecoration(
//                     color: Colors.white,
//                     borderRadius: const BorderRadius.all(
//                       Radius.circular(8),
//                     ),
//                     boxShadow: [
//                       BoxShadow(
//                         color: Colors.grey.withOpacity(0.16),
//                         spreadRadius: 5,
//                         blurRadius: 7,
//                         offset: const Offset(0, 3),
//                       ),
//                     ],
//                   ),
//                   height: 110,
//                   width: 110,
//                   padding: const EdgeInsets.only(top: 12, bottom: 12, left: 16),
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       GestureDetector(
//                         onTap: () {
//                           setState(() {
//                             buttonDown = false;
//                             dropdownvalue = 'A';
//                           });
//                         },
//                         child: Text(
//                           'A',
//                           style: TextStyle(
//                             fontSize: 13,
//                             color: const Color(0xFF1A1A1A),
//                             height: 1.2,
//                           ),
//                         ),
//                       ),
//                       SizedBox(
//                         height: 16,
//                       ),
//                       GestureDetector(
//                         onTap: () {
//                           setState(() {
//                             buttonDown = false;
//                             dropdownvalue = 'B';
//                           });
//                         },
//                         child: Text(
//                           'B',
//                           style: TextStyle(
//                             fontSize: 13,
//                             color: const Color(0xFF1A1A1A),
//                             height: 1.2,
//                           ),
//                         ),
//                       ),
//                       SizedBox(
//                         height: 16,
//                       ),
//                       GestureDetector(
//                         onTap: () {
//                           setState(() {
//                             buttonDown = false;
//                             dropdownvalue = 'C';
//                           });
//                         },
//                         child: Text(
//                           'C',
//                           style: TextStyle(
//                             fontSize: 13,
//                             color: const Color(0xFF1A1A1A),
//                             height: 1.2,
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               )),
//         ],
//       ),
//     );
//   }
// }
