import 'package:expandable_bottom_bar/expandable_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:unitrail/views/NavigateScreen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Image.asset(
            "assets/images/logo.png",
            fit: BoxFit.contain,
            height: 5.h,
          ),
          toolbarHeight: 7.h,
          backgroundColor: const Color(0xFFa31621),
          actions: [
            PopupMenuButton(
              // add icon, by default "3 dot" icon
              // icon: Icon(Icons.book)
              itemBuilder: (context) {
                return [
                  const PopupMenuItem<int>(
                    value: 0,
                    child: Text("My Classes"),
                  ),
                  const PopupMenuItem<int>(
                    value: 1,
                    child: Text("Search Classrooms"),
                  ),
                  const PopupMenuItem<int>(
                    value: 2,
                    child: Text("Navigate"),
                  ),
                  const PopupMenuItem<int>(
                      value: 3, child: Text("Calender (Beta)")),
                  const PopupMenuItem<int>(value: 4, child: Text("Settings")),
                  const PopupMenuItem<int>(value: 5, child: Text("AR Debug")),
                ];
              },
              onSelected: (value) {
                if (value == 0) {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: const Text("My Classes"),
                        shape: RoundedRectangleBorder(
                            side: const BorderSide(
                                color: Color(0xFFa31621), width: 5),
                            borderRadius: BorderRadius.circular(20.0)),
                        content: const Text(""),
                        actions: [
                          ElevatedButton(
                              // ignore: sort_child_properties_last
                              child: const Text("Ok"),
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: const Color(0xff78c091),
                                  shape: RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(20)))),
                        ],
                      );
                    },
                  );
                }
                if (value == 1) {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return NavigateScreen();
                  }));
                  //   showDialog(
                  //     context: context,
                  //     builder: (BuildContext context) {
                  //       return AlertDialog(
                  //         title: const Text("Search Classrooms"),
                  //         shape: RoundedRectangleBorder(
                  //             side: const BorderSide(
                  //                 color: Color(0xFFa31621), width: 5),
                  //             borderRadius: BorderRadius.circular(20.0)),
                  //         content: const TextField(
                  //           obscureText: true,
                  //           decoration: InputDecoration(
                  //             border: OutlineInputBorder(),
                  //             labelText: 'Ex. AES 220',
                  //           ),
                  //         ),
                  //         actions: [
                  //           ElevatedButton(
                  //               // ignore: sort_child_properties_last
                  //               child: const Text("Add to My Classes"),
                  //               onPressed: () {
                  //                 Navigator.of(context).pop();
                  //               },
                  //               style: ElevatedButton.styleFrom(
                  //                   backgroundColor: const Color(0xff78c091),
                  //                   shape: RoundedRectangleBorder(
                  //                       borderRadius:
                  //                           BorderRadius.circular(20)))),
                  //         ],
                  //       );
                  //     },
                  //   );
                  // }
                  // if (value == 2) {
                  //   showDialog(
                  //     context: context,
                  //     builder: (BuildContext context) {
                  //       return AlertDialog(
                  //           title: const Text("Navigate"),
                  //           actionsAlignment: MainAxisAlignment.center,
                  //           shape: RoundedRectangleBorder(
                  //               side: const BorderSide(
                  //                   color: Color(0xFFa31621), width: 5),
                  //               borderRadius: BorderRadius.circular(20.0)),
                  //           actions: [
                  //             const TextField(
                  //               obscureText: true,
                  //               decoration: InputDecoration(
                  //                 border: OutlineInputBorder(),
                  //                 labelText: "Current Location",
                  //               ),
                  //             ),
                  //             const TextField(
                  //               obscureText: true,
                  //               decoration: InputDecoration(
                  //                 border: OutlineInputBorder(),
                  //                 labelText: "Destination",
                  //               ),
                  //             ),
                  //             ButtonBar(
                  //               children: [
                  //                 ElevatedButton(
                  //                     // ignore: sort_child_properties_last
                  //                     child: const Text("Cancel"),
                  //                     onPressed: () {
                  //                       Navigator.of(context).pop();
                  //                     },
                  //                     style: ElevatedButton.styleFrom(
                  //                         backgroundColor:
                  //                             const Color(0xFFa31621),
                  //                         shape: RoundedRectangleBorder(
                  //                             borderRadius:
                  //                                 BorderRadius.circular(20)))),
                  //                 ElevatedButton(
                  //                     // ignore: sort_child_properties_last
                  //                     child: const Text("Go"),
                  //                     onPressed: () {
                  //                       Navigator.of(context).pop();
                  //                     },
                  //                     style: ElevatedButton.styleFrom(
                  //                         backgroundColor:
                  //                             const Color(0xff78c091),
                  //                         shape: RoundedRectangleBorder(
                  //                             borderRadius:
                  //                                 BorderRadius.circular(20)))),
                  //               ],
                  //             )
                  //           ]);
                  //     },
                  //   );
                }
              },
            ),
          ]),
      //
      // Lets use docked FAB for handling state of sheet
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: GestureDetector(
        //
        // Set onVerticalDrag event to drag handlers of controller for swipe effect
        onVerticalDragUpdate: DefaultBottomBarController.of(context).onDrag,
        onVerticalDragEnd: DefaultBottomBarController.of(context).onDragEnd,
        child: FloatingActionButton.extended(
          label: AnimatedBuilder(
            animation: DefaultBottomBarController.of(context).state,
            builder: (context, child) => Row(
              children: [
                Text(
                  DefaultBottomBarController.of(context).isOpen
                      ? "Pull"
                      : "Pull",
                ),
                const SizedBox(width: 4.0),
                AnimatedBuilder(
                  animation: DefaultBottomBarController.of(context).state,
                  builder: (context, child) => Transform(
                    alignment: Alignment.center,
                    transform: Matrix4.diagonal3Values(
                      1,
                      DefaultBottomBarController.of(context).state.value * 2 -
                          1,
                      1,
                    ),
                    child: child,
                  ),
                  child: const RotatedBox(
                    quarterTurns: 1,
                    child: Icon(
                      Icons.chevron_right,
                      size: 20,
                    ),
                  ),
                ),
              ],
            ),
          ),
          elevation: 2,
          backgroundColor: const Color(0xFFa31621),
          foregroundColor: const Color(0xFFfcf7f8),
          //
          //Set onPressed event to swap state of bottom bar
          onPressed: () => DefaultBottomBarController.of(context).swap(),
        ),
      ),
      bottomNavigationBar: BottomExpandableAppBar(
        horizontalMargin: 16,
        bottomAppBarColor: const Color(0xff78c091),
        shape: const AutomaticNotchedShape(
            RoundedRectangleBorder(), StadiumBorder(side: BorderSide())),
        expandedBackColor: const Color(0xFFfcf7f8),
        expandedBody: const Center(
          child: Text("Hello world!"),
        ),
        bottomAppBarBody: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            children: const <Widget>[
              Expanded(
                child: Text(
                  "Foo",
                  textAlign: TextAlign.center,
                ),
              ),
              Spacer(
                flex: 2,
              ),
              Expanded(
                child: Text(
                  "Bar",
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
