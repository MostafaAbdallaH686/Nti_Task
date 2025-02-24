//import 'dart:nativewrappers/_internal/vm/lib/ffi_patch.dart';
// import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:projects/appcolors.dart';
import 'package:projects/appimages.dart';
import 'package:projects/default_text_from_field.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'First UI',
      theme: ThemeData(
        appBarTheme: AppBarTheme(backgroundColor: MyColors.whitecolor),
        scaffoldBackgroundColor: MyColors.backcolor,
        fontFamily: 'Lexend Deca',
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: MyWidget1(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Color(0xffF3F5F4),
      appBar: AppBar(
        title: Center(
          child: Text(
            " Today Task ",
            style: TextStyle(
              fontSize: 19,
              fontWeight: FontWeight.w300,
              color: Color(0x24252C),
            ),
          ),
        ),
        leading: SvgPicture.asset('assets/icons/Vector.svg'),
        actions: [
          Container(
            //padding: EdgeInsets.symmetric(vertical: 10),
            decoration: BoxDecoration(
                color: const Color.fromARGB(255, 158, 216, 216),
                borderRadius: BorderRadius.circular(15)),
            child: Row(
              children: [
                Icon(Icons.add),
                Text('Add'),
              ],
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                  width: 60,
                  height: 20,
                  decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(50)),
                  child: Center(child: Text("All"))),
              Container(
                  width: 60,
                  height: 20,
                  decoration: BoxDecoration(
                      color: const Color.fromARGB(179, 179, 171, 171),
                      borderRadius: BorderRadius.circular(50)),
                  child: Center(child: Text("Future"))),
              Container(
                  width: 60,
                  height: 20,
                  decoration: BoxDecoration(
                      color: const Color.fromARGB(179, 179, 171, 171),
                      borderRadius: BorderRadius.circular(50)),
                  child: Center(child: Text("Missed"))),
              Container(
                  width: 60,
                  height: 20,
                  decoration: BoxDecoration(
                      color: const Color.fromARGB(179, 179, 171, 171),
                      borderRadius: BorderRadius.circular(50)),
                  child: Center(child: Text("Done")))
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Row(
              children: [
                SizedBox(
                  width: 15,
                ),
                Text("Results"),
                SizedBox(
                  width: 50,
                ),
                Container(
                  child: Text("5"),
                  color: Colors.cyanAccent,
                )
              ],
            ),
          ),
          Container(
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.symmetric(vertical: 5),
                  decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 218, 216, 216),
                      borderRadius: BorderRadius.circular(15)),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Padding(padding: EdgeInsets.all(20)),
                          SvgPicture.asset('assets/icons/bag.svg'),
                          SizedBox(
                            width: 10,
                          ),
                          Text("World Task"),
                          SizedBox(
                            width: 150,
                          ),
                          Container(
                              width: 60,
                              height: 20,
                              decoration: BoxDecoration(
                                  color:
                                      const Color.fromARGB(255, 236, 229, 229),
                                  borderRadius: BorderRadius.circular(50)),
                              child: Center(child: Text("Future"))),
                        ],
                      ),
                      Container(
                        decoration: BoxDecoration(
                            //color: Colors.white60,
                            ),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Padding(padding: EdgeInsets.all(20)),
                                Text("Go To superMarket to buy some milk &eggs")
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 218, 216, 216),
                      borderRadius: BorderRadius.circular(15)),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Padding(padding: EdgeInsets.all(20)),
                          SvgPicture.asset('assets\icons\bag.svg'),
                          SizedBox(
                            width: 10,
                          ),
                          Text("World Task"),
                          SizedBox(
                            width: 150,
                          ),
                          Container(
                              width: 60,
                              height: 20,
                              decoration: BoxDecoration(
                                  color: Colors.green,
                                  borderRadius: BorderRadius.circular(50)),
                              child: Center(child: Text("Done"))),
                        ],
                      ),
                      Row(
                        children: [
                          Padding(padding: EdgeInsets.all(20)),
                          Text("Go To superMarket to buy some milk &eggs")
                        ],
                      )
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 5),
                  decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 218, 216, 216),
                      borderRadius: BorderRadius.circular(15)),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Padding(padding: EdgeInsets.all(20)),
                          SvgPicture.asset(
                              'D:\bloc_ed\Nti_project\projects\assets\icons\home.svg'),
                          SizedBox(
                            width: 10,
                          ),
                          Text("Home Task"),
                          SizedBox(
                            width: 150,
                          ),
                          Container(
                              width: 60,
                              height: 20,
                              decoration: BoxDecoration(
                                  color: Colors.green,
                                  borderRadius: BorderRadius.circular(50)),
                              child: Center(child: Text("Done"))),
                        ],
                      ),
                      Row(
                        children: [
                          Padding(padding: EdgeInsets.all(20)),
                          Text("Add new feature for Do it app and commit it")
                        ],
                      )
                    ],
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 218, 216, 216),
                      borderRadius: BorderRadius.circular(15)),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Padding(padding: EdgeInsets.all(20)),
                          SvgPicture.asset(
                              'D:\bloc_ed\Nti_project\projects\assets\icons\person.svg'),
                          SizedBox(
                            width: 10,
                          ),
                          Text("Personal Task"),
                          SizedBox(
                            width: 110,
                          ),
                          Container(
                              width: 80,
                              height: 20,
                              decoration: BoxDecoration(
                                  color: Colors.cyanAccent,
                                  borderRadius: BorderRadius.circular(50)),
                              child: Center(child: Text("In Progress"))),
                        ],
                      ),
                      Row(
                        children: [
                          Padding(padding: EdgeInsets.all(20)),
                          Text("Improve my English skills by trying to speek")
                        ],
                      )
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 5),
                  decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 218, 216, 216),
                      borderRadius: BorderRadius.circular(15)),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Padding(padding: EdgeInsets.all(20)),
                          SvgPicture.asset(
                              'D:\bloc_ed\Nti_project\projects\assets\icons\home.svg'),
                          SizedBox(
                            width: 10,
                          ),
                          Text("Home Task"),
                          SizedBox(
                            width: 150,
                          ),
                          Container(
                              width: 60,
                              height: 20,
                              decoration: BoxDecoration(
                                  color: Colors.green,
                                  borderRadius: BorderRadius.circular(50)),
                              child: Center(child: Text("Done"))),
                        ],
                      ),
                      Row(
                        children: [
                          Padding(padding: EdgeInsets.all(20)),
                          Text("Add new feature for Do it app and commit it")
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class MyWidget1 extends StatelessWidget {
  const MyWidget1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            " Edit Task ",
            style: TextStyle(
              fontSize: 19,
              fontWeight: FontWeight.w300,
              color: MyColors.blackcolor,
            ),
          ),
        ),
        leading: SvgPicture.asset(Appimages.vectoricon),
        actions: [
          Container(
            width: 70,
            height: 28,
            margin: EdgeInsets.only(right: 10),
            padding: EdgeInsets.only(left: 10),
            decoration: BoxDecoration(
                color: MyColors.redcolor,
                borderRadius: BorderRadius.circular(15)),
            child: Container(
              child: Row(
                children: [Text(""), SvgPicture.asset(Appimages.group)],
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          SizedBox(height: 30),
          Text("    In progress"),
          Text("    Believe you can, and you're halfway there."),
          DefaultTextFromField(
            icon: SvgPicture.asset(Appimages.homeicon),
            label: "Task Group",
          ),
          DefaultTextFromField(
            label: "Task Name",
          ),
          DefaultTextFromField(
            label: "Detials",
          ),
          DefaultTextFromField(
            icon: SvgPicture.asset(Appimages.calendericon),
            label: "Start Date",
          ),
          DefaultTextFromField(
            icon: SvgPicture.asset(Appimages.calendericon),
            label: "End Date",
          ),
          Container(
            margin: EdgeInsets.only(right: 15, left: 15, top: 15),
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    fixedSize: const Size(350, 24),
                    backgroundColor: MyColors.greencolor,
                    foregroundColor: const Color.fromARGB(255, 221, 132, 132),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(14),
                        side: BorderSide(
                          width: 2,
                          color: MyColors.greencolor,
                        ))),
                onPressed: () {
                  print("Done");
                },
                child: Text(
                  "Mark as Done",
                  style: TextStyle(
                    fontSize: 19,
                    fontWeight: FontWeight.w300,
                    color: MyColors.whitecolor,
                  ),
                )),
          ),
          Container(
            margin: EdgeInsets.only(right: 15, left: 15),
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    fixedSize: const Size(350, 24),
                    backgroundColor: MyColors.whitecolor,
                    foregroundColor: const Color.fromARGB(255, 221, 132, 132),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(14),
                        side: BorderSide(
                          width: 2,
                          color: MyColors.greencolor,
                        ))),
                onPressed: () {
                  print("Update");
                },
                child: Text(
                  "UPDATE",
                  style: TextStyle(
                    fontSize: 19,
                    fontWeight: FontWeight.w300,
                    color: MyColors.greencolor,
                  ),
                )),
          ),
          DropdownButton(
              menuWidth: double.infinity,
              isExpanded: true,
              items: [
                DropdownMenuItem(
                  child: Text("data"),
                  value: 1,
                ),
                DropdownMenuItem(
                  child: Text("data2"),
                  value: 1,
                )
              ],
              onChanged: (value) {
                print(value);
              }),
        ]),
      ),
    );
  }
}

// class EditTask extends StatelessWidget {
//   static const String routName = 'EditTask';
//   const EditTask({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         leading: IconButton(
//             onPressed: () {
//              print("Back");
//             },
//             icon: SvgPicture.asset(Appimages.vectoricon)),
//         title:const Text('Edit Task'),
//         centerTitle: true,
//         actions: [
//           Padding(
//             padding: const EdgeInsetsDirectional.only(end: 10),
//             child: ElevatedButton(
//                 style: ElevatedButton.styleFrom(
//                   backgroundColor: Colors.red,
//                   foregroundColor: Colors.white,
//                   minimumSize: const Size(70, 30),
//                 ),
//                 onPressed: () {},
//                 child: const Row(
//                   children: [
//                     Icon(
//                       Icons.delete_outline,
//                       size: 18,
//                     ),
//                     SizedBox(
//                       width: 5,
//                     ),
//                     Text(
//                       'Delete',
//                       style: TextStyle(
//                         fontSize: 12,
//                         fontWeight: FontWeight.w300,
//                       ),
//                     ),
//                   ],
//                 )),
//           )
//         ],
//       ),
//       body: Padding(
//         padding:const EdgeInsets.symmetric(horizontal: 28, vertical: 50),
//         child: ListView(
//           children:const [
//             Column(
//               children: [
//                 Text(
//                   "In Progress\nBelieve you can, and you're halfway there. ",
//                   style: TextStyle(
//                     fontSize: 14,
//                     fontWeight: FontWeight.w300,
//                   ),
//                 ),
//                 SizedBox(
//                   height: 27,
//                 ),
//                 ContanierIconText(
//                   title: 'Task Group',
//                   screbt: 'Home',
//                   color1: AppColors.colorIcon,
//                   color2: AppColors.backcolorIcon,
//                   iconss: Icons.home,
//                 ),
//                 SizedBox(
//                   height: 10,
//                 ),
//                 ContainerText(
//                   width: 331,
//                   height: 61,
//                   title: 'Task Name',
//                   screbt: 'Grocery Shopping App',
//                 ),
//                 SizedBox(
//                   height: 10,
//                 ),
//                 ContainerText(
//                   width: 331,
//                   height: 142,
//                   title: 'Description',
//                   screbt:
//                       'Go for grocery to buy some products. Go for grocery to buy some products. Go for grocery to buy some products. Go for grocery to buy some products.',
//                 ),
//                 SizedBox(
//                   height: 10,
//                 ),
//                 ContanierIconText(
//                   title: 'Star Date',
//                   screbt: '01 May, 2022 , 10:00 am',
//                   color1: AppColors.colorsGreen,
//                   color2: Colors.white,
//                   iconss: Icons.calendar_month,
//                 ),
//                 SizedBox(
//                   height: 10,
//                 ),
//                 ContanierIconText(
//                   title: 'End Date',
//                   screbt: '30 June, 2022 , 10:00 pm',
//                   color1: AppColors.colorsGreen,
//                   color2: Colors.white,
//                   iconss: Icons.calendar_month,
//                 ),
//                 SizedBox(
//                   height: 15,
//                 ),
//                 Elvetbuton(
//                   text: 'Mark as Done',
//                   colorsBack: AppColors.colorsGreen,
//                   bprdeColor: AppColors.colorsGreen,
//                   textColor: Colors.white,
//                 ),
//                 SizedBox(
//                   height: 15,
//                 ),
//                 Elvetbuton(
//                   text: 'Mark as Done',
//                   colorsBack: Colors.white,
//                   bprdeColor: AppColors.colorsGreen,
//                   textColor: AppColors.colorsGreen,
//                 ),
//               ],
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
        // Column(
        //   children: [
        //     Container(
        //       margin: EdgeInsetsDirectional.only(start: 20),
        //       child: Column(
        //         children: [
        //           Row(
        //             children: [
        //               Text(
        //                 "In Progress",
        //                 style: TextStyle(
        //                   fontSize: 14,
        //                   fontWeight: FontWeight.w300,
        //                   color: Color(0xff24252C),
        //                 ),
        //               )
        //             ],
        //           ),
        //           Row(
        //             children: [
        //               Text(
        //                 "Blieve you can,and you're halfway there.",
        //                 style: TextStyle(
        //                   fontSize: 14,
        //                   fontWeight: FontWeight.w300,
        //                   color: Color(0xff24252C),
        //                 ),
        //               )
        //             ],
        //           )
        //         ],
        //       ),
        //     ),
        //     Container(
        //       margin: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
        //       decoration: BoxDecoration(
        //           color: const Color(0xffFFFFFF),
        //           borderRadius: BorderRadius.circular(15)),
        //       child: Column(
        //         children: [
        //           Row(
        //             children: [
        //               Padding(padding: EdgeInsets.all(20)),
        //               Container(
        //                 decoration: BoxDecoration(color: Colors.red),
        //                 child: SvgPicture.asset(Appimages.homeicon),
        //               ),
        //               SizedBox(
        //                 width: 10,
        //               ),
        //               Column(
        //                 children: [
        //                   Text(
        //                     "Task Group",
        //                     style: TextStyle(
        //                       fontSize: 9,
        //                       fontWeight: FontWeight.w400,
        //                       color: Color(0xff6E6A7C),
        //                     ),
        //                   ),
        //                   Text(
        //                     "Home",
        //                     style: TextStyle(
        //                       fontSize: 14,
        //                       fontWeight: FontWeight.w200,
        //                       color: Color(0xff24252C),
        //                     ),
        //                   ),
        //                 ],
        //               ),
        //               SizedBox(
        //                 width: 150,
        //               ),
        //             ],
        //           ),
        //         ],
        //       ),
        //     ),
        //     Container(
        //       margin: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
        //       decoration: BoxDecoration(
        //           color: const Color(0xffFFFFFF),
        //           borderRadius: BorderRadius.circular(15)),
        //       child: Column(
        //         children: [
        //           Row(
        //             children: [
        //               Padding(padding: EdgeInsets.all(20)),
        //               Column(
        //                 crossAxisAlignment: CrossAxisAlignment.start,
        //                 children: [
        //                   Text(
        //                     "Task Home",
        //                     style: TextStyle(
        //                       fontSize: 9,
        //                       fontWeight: FontWeight.w400,
        //                       color: Color(0xff6E6A7C),
        //                     ),
        //                   ),
        //                   Text(
        //                     "Grocery Shopping Area",
        //                     style: TextStyle(
        //                       fontSize: 14,
        //                       fontWeight: FontWeight.w200,
        //                       color: Color(0xff24252C),
        //                     ),
        //                   ),
        //                 ],
        //               ),
        //               SizedBox(
        //                 width: 150,
        //               ),
        //             ],
        //           ),
        //         ],
        //       ),
        //     ),
        //     Container(
        //       margin: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
        //       decoration: BoxDecoration(
        //           color: const Color(0xffFFFFFF),
        //           borderRadius: BorderRadius.circular(15)),
        //       child: Column(
        //         children: [
        //           Row(
        //             children: [
        //               Padding(padding: EdgeInsets.all(20)),
        //               Column(
        //                 crossAxisAlignment: CrossAxisAlignment.start,
        //                 children: [
        //                   Text(
        //                     "Go for grocery to buy some products. ",
        //                     style: TextStyle(
        //                       fontSize: 14,
        //                       fontWeight: FontWeight.w200,
        //                       color: Color(0xff24252C),
        //                     ),
        //                   ),
        //                   Text(
        //                     "Go for grocery to buy some products.",
        //                     style: TextStyle(
        //                       fontSize: 14,
        //                       fontWeight: FontWeight.w200,
        //                       color: Color(0xff24252C),
        //                     ),
        //                   ),
        //                   Text(
        //                     "Go for grocery to buy some products.",
        //                     style: TextStyle(
        //                       fontSize: 14,
        //                       fontWeight: FontWeight.w200,
        //                       color: Color(0xff24252C),
        //                     ),
        //                   ),
        //                   Text(
        //                     "Go for grocery to buy some products. ",
        //                     style: TextStyle(
        //                       fontSize: 14,
        //                       fontWeight: FontWeight.w200,
        //                       color: Color(0xff24252C),
        //                     ),
        //                   ),
        //                 ],
        //               ),
        //             ],
        //           ),
        //         ],
        //       ),
        //     ),
        //     Container(
        //       margin: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
        //       decoration: BoxDecoration(
        //           color: const Color(0xffFFFFFF),
        //           borderRadius: BorderRadius.circular(15)),
        //       child: Column(
        //         children: [
        //           Row(
        //             children: [
        //               Padding(padding: EdgeInsets.all(20)),
        //               SvgPicture.asset(Appimages.calendericon),
        //               SizedBox(
        //                 width: 10,
        //               ),
        //               Column(
        //                 crossAxisAlignment: CrossAxisAlignment.start,
        //                 children: [
        //                   Text(
        //                     "Start Date",
        //                     style: TextStyle(
        //                       fontSize: 9,
        //                       fontWeight: FontWeight.w400,
        //                       color: Color(0xff6E6A7C),
        //                     ),
        //                   ),
        //                   Text(
        //                     "01 May, 2022    10:00 am",
        //                     style: TextStyle(
        //                       fontSize: 14,
        //                       fontWeight: FontWeight.w200,
        //                       color: Color(0xff24252C),
        //                     ),
        //                   ),
        //                 ],
        //               ),
        //             ],
        //           ),
        //         ],
        //       ),
        //     ),
        //     Container(
        //       margin: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
        //       decoration: BoxDecoration(
        //           color: const Color(0xffFFFFFF),
        //           borderRadius: BorderRadius.circular(15)),
        //       child: Column(
        //         children: [
        //           Row(
        //             children: [
        //               Padding(padding: EdgeInsets.all(20)),
        //               SvgPicture.asset(Appimages.calendericon),
        //               SizedBox(
        //                 width: 10,
        //               ),
        //               Column(
        //                 crossAxisAlignment: CrossAxisAlignment.start,
        //                 children: [
        //                   Text(
        //                     "End Date",
        //                     style: TextStyle(
        //                       fontSize: 9,
        //                       fontWeight: FontWeight.w400,
        //                       color: Color(0xff6E6A7C),
        //                     ),
        //                   ),
        //                   Text(
        //                     "30 June, 2022    10:00 pm",
        //                     style: TextStyle(
        //                       fontSize: 14,
        //                       fontWeight: FontWeight.w200,
        //                       color: Color(0xff24252C),
        //                     ),
        //                   ),
        //                 ],
        //               ),
        //             ],
        //           ),
        //         ],
        //       ),
        //     ),
        //     Container(
        //       margin: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
        //       decoration: BoxDecoration(
        //           color: const Color(0xff149954),
        //           borderRadius: BorderRadius.circular(15)),
        //       child: Column(
        //         mainAxisAlignment: MainAxisAlignment.center,
        //         children: [
        //           TextButton(
        //               style: TextButton.styleFrom(
        //                   backgroundColor: Color(0xff149954)),
        //               onPressed: () {
        //                 print("Done");
        //               },
        //               child: Text(
        //                 "Mark as Done",
        //                 style: TextStyle(
        //                   fontSize: 19,
        //                   fontWeight: FontWeight.w300,
        //                   color: Color(0xffFFFFFF),
        //                 ),
        //               )),
        //         ],
        //       ),
        //     ),
        //     Container(
        //       margin: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
        //       decoration: BoxDecoration(
        //           color: const Color(0xff149954),
        //           borderRadius: BorderRadius.circular(15)),
        //       child: Column(
        //         mainAxisAlignment: MainAxisAlignment.center,
        //         children: [
        //           TextButton(
        //               style: TextButton.styleFrom(
        //                   backgroundColor: Color(0xffFFFFFF)),
        //               onPressed: () {
        //                 print("Update");
        //               },
        //               child: Text(
        //                 "Update",
        //                 style: TextStyle(
        //                   fontSize: 19,
        //                   fontWeight: FontWeight.w300,
        //                   color: Color(0xff149954),
        //                 ),
        //               )),
        //         ],
        //       ),
        //     )
        //   ],
        // )
        // 
        // 
        // 
  
/*Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: CircleBorder(),
                    backgroundColor: Colors.brown,
                  ),
                  onPressed: () {
                    print("on pressed");
                  },
                  child: Icon(Icons.add_alert)),
              MaterialButton(
                  child: Icon(Icons.atm),
                  shape: CircleBorder(),
                  color: Colors.deepOrangeAccent,
                  textColor: Colors.amberAccent,
                  onPressed: () {
                    print("object");
                  }),
              TextButton(
                  style: TextButton.styleFrom(
                      backgroundColor: Colors.deepOrangeAccent),
                  onPressed: () {
                    print("Hello Baby");
                  },
                  child: Icon(Icons.baby_changing_station_outlined)),
              IconButton(
                  onPressed: () {
                    print("hhhah");
                  },
                  icon: Icon(Icons.add_chart_sharp)
                  ,),
              TextFormField(
                onFieldSubmitted: (String Value) {
                  print(Value);
                },
                decoration: InputDecoration(
                    enabledBorder: UnderlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide(width: 15, color: Colors.pink)),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide:
                            BorderSide(color: Colors.yellowAccent, width: 30)),
                    disabledBorder: UnderlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide:
                            BorderSide(color: Colors.deepPurple, width: 15)),
                    suffixIcon: Icon(Icons.headphones),
                    prefix: Icon(Icons.alarm),
                    icon: Icon(Icons.person),
                    iconColor: Colors.blue,
                    labelStyle: TextStyle(backgroundColor: Colors.blueAccent),
                    hintText: "help",
                    labelText: "help again",
                    filled: true,
                    fillColor: Colors.green,
                    focusColor: Colors.redAccent,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide:
                            BorderSide(color: Colors.pinkAccent, width: 20))),
              )
            ],
          ),
        )*/
