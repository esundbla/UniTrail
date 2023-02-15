import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:unitrail/utils.dart';

class Scene extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 360;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Container(
      width: double.infinity,
      child: Container(
        // sethhomesearchowN (132:3)
        width: double.infinity,
        decoration: const BoxDecoration(color: Color(0xffffffff)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              // autogroup8fxv9VS (V564ThyRxEouYhXguz8fXv)
              padding:
                  EdgeInsets.fromLTRB(19 * fem, 9 * fem, 20 * fem, 395 * fem),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // autogroupv9gkH5r (V563gjGNiSbH9m5WQAV9Gk)
                    margin: EdgeInsets.fromLTRB(
                        0 * fem, 0 * fem, 0 * fem, 117 * fem),
                    width: double.infinity,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // vectorp5n (154:60)
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 6 * fem, 28 * fem, 0 * fem),
                          child: TextButton(
                            onPressed: () {},
                            style: TextButton.styleFrom(
                              padding: EdgeInsets.zero,
                            ),
                            child: Container(
                              width: 34 * fem,
                              height: 29 * fem,
                              child: Image.asset(
                                'assets/images/vector-XxL.png',
                                width: 34 * fem,
                                height: 29 * fem,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          // logodraftdarkmode2x4iBA (154:59)
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 0 * fem, 23 * fem, 0 * fem),
                          width: 201 * fem,
                          height: 43 * fem,
                          child: Image.asset(
                            'assets/images/logodraftdarkmode2x-4.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                        TextButton(
                          // usercircleRbN (154:61)
                          onPressed: () {},
                          style: TextButton.styleFrom(
                            padding: EdgeInsets.zero,
                          ),
                          child: Container(
                            width: 35 * fem,
                            height: 35 * fem,
                            child: Image.asset(
                              'assets/images/user-circle-Jmn.png',
                              width: 35 * fem,
                              height: 35 * fem,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    // autogroupm48pwJp (V563q4Mq6L7YV3c8iaM48p)
                    margin: EdgeInsets.fromLTRB(
                        36 * fem, 0 * fem, 29 * fem, 0 * fem),
                    padding: EdgeInsets.fromLTRB(
                        0 * fem, 36 * fem, 0 * fem, 33 * fem),
                    width: double.infinity,
                    decoration: BoxDecoration(
                      border: Border.all(color: Color(0xffa31621)),
                      color: Color(0xffd9d9d9),
                      borderRadius: BorderRadius.circular(10 * fem),
                      boxShadow: [
                        BoxShadow(
                          color: Color(0x3f000000),
                          offset: Offset(0 * fem, 4 * fem),
                          blurRadius: 2 * fem,
                        ),
                      ],
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // autogroupawiqa6t (V5641UE9Zh1seemR7bAwiQ)
                          margin: EdgeInsets.fromLTRB(
                              1 * fem, 0 * fem, 1 * fem, 42 * fem),
                          width: double.infinity,
                          height: 38 * fem,
                          child: Stack(
                            children: [
                              Positioned(
                                // searchbart7a (132:19)
                                left: 0 * fem,
                                top: 1 * fem,
                                child: Align(
                                  child: SizedBox(
                                    width: 254 * fem,
                                    height: 37 * fem,
                                    child: Container(
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(10 * fem),
                                        border: Border.all(
                                            color: Color(0xffa31621)),
                                        color: Color(0xfffcf7f8),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                // icons8searchmore72xxhdpi1mhA (132:23)
                                left: 205 * fem,
                                top: 0 * fem,
                                child: Align(
                                  child: SizedBox(
                                    width: 39 * fem,
                                    height: 38 * fem,
                                    child: Image.asset(
                                      'assets/images/icons8-search-more-72-xxhdpi-1-5Rz.png',
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                // currentlocationfnY (132:25)
                                left: 6 * fem,
                                top: 8 * fem,
                                child: Align(
                                  child: SizedBox(
                                    width: 119 * fem,
                                    height: 19 * fem,
                                    child: Text(
                                      'Current Location',
                                      style: SafeGoogleFont(
                                        'Inter',
                                        fontSize: 15 * ffem,
                                        fontWeight: FontWeight.w400,
                                        height: 1.2125 * ffem / fem,
                                        color: Color(0xff000000),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          // autogroupx5ziMQU (V5647YtMHBvhxnmjWJx5Zi)
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 0 * fem, 2 * fem, 0 * fem),
                          width: 254 * fem,
                          height: 38 * fem,
                          child: Stack(
                            children: [
                              Positioned(
                                // searchbarsNp (132:22)
                                left: 0 * fem,
                                top: 1 * fem,
                                child: Align(
                                  child: SizedBox(
                                    width: 254 * fem,
                                    height: 37 * fem,
                                    child: Container(
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(10 * fem),
                                        border: Border.all(
                                            color: Color(0xffa31621)),
                                        color: Color(0xfffcf7f8),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                // destinationM36 (132:26)
                                left: 11 * fem,
                                top: 8 * fem,
                                child: Align(
                                  child: SizedBox(
                                    width: 81 * fem,
                                    height: 19 * fem,
                                    child: Text(
                                      'Destination',
                                      style: SafeGoogleFont(
                                        'Inter',
                                        fontSize: 15 * ffem,
                                        fontWeight: FontWeight.w400,
                                        height: 1.2125 * ffem / fem,
                                        color: Color(0xff000000),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                // icons8searchmore72xxhdpi2czc (132:24)
                                left: 206 * fem,
                                top: 0 * fem,
                                child: Align(
                                  child: SizedBox(
                                    width: 39 * fem,
                                    height: 38 * fem,
                                    child: Image.asset(
                                      'assets/images/icons8-search-more-72-xxhdpi-2.png',
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              // autogroupjm1sL9v (V564L8Mj8UpnZ8WVuUJM1S)
              padding:
                  EdgeInsets.fromLTRB(18 * fem, 11 * fem, 22 * fem, 8 * fem),
              width: double.infinity,
              decoration: BoxDecoration(
                border: Border.all(color: Color(0xffa31621)),
                color: Color(0xff78c091),
                borderRadius: BorderRadius.circular(15 * fem),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // dui (154:105)
                    margin: EdgeInsets.fromLTRB(
                        0 * fem, 3 * fem, 118 * fem, 0 * fem),
                    child: Text(
                      '--',
                      style: SafeGoogleFont(
                        'Inter',
                        fontSize: 20 * ffem,
                        fontWeight: FontWeight.w400,
                        height: 1.2125 * ffem / fem,
                        color: Color(0xff000000),
                      ),
                    ),
                  ),
                  Container(
                    // eta7pt (154:109)
                    margin: EdgeInsets.fromLTRB(
                        0 * fem, 0 * fem, 90 * fem, 1 * fem),
                    child: Text(
                      'ETA: --',
                      style: SafeGoogleFont(
                        'Inter',
                        fontSize: 20 * ffem,
                        fontWeight: FontWeight.w400,
                        height: 1.2125 * ffem / fem,
                        color: Color(0xff000000),
                      ),
                    ),
                  ),
                  TextButton(
                    // arrowupsvgrepocom3PGc (154:106)
                    onPressed: () {},
                    style: TextButton.styleFrom(
                      padding: EdgeInsets.zero,
                    ),
                    child: Container(
                      width: 26 * fem,
                      height: 30 * fem,
                      child: Image.asset(
                        'assets/images/arrow-up-svgrepo-com-3.png',
                        width: 26 * fem,
                        height: 30 * fem,
                      ),
                    ),
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
