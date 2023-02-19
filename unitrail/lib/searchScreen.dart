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
        // sethhomesearchEAt (87:103)
        width: double.infinity,
        decoration: const BoxDecoration(color: Color(0xffffffff)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              // autogroupba1wAaL (V5631v3iUbuAfNaUCcBA1W)
              padding:
                  EdgeInsets.fromLTRB(23 * fem, 9 * fem, 16 * fem, 395 * fem),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // autogrouppraqgYg (V562bLvKmEQndaiis6PRAQ)
                    margin: EdgeInsets.fromLTRB(
                        0 * fem, 0 * fem, 0 * fem, 117 * fem),
                    width: double.infinity,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // vectorDHi (154:71)
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
                                'assets/images/vector-home.png',
                                width: 34 * fem,
                                height: 29 * fem,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          // logodraftdarkmode2x4WGp (154:70)
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 0 * fem, 23 * fem, 0 * fem),
                          width: 201 * fem,
                          height: 43 * fem,
                          child: Image.asset(
                            'assets/images/final_text_with_logo2x.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                        TextButton(
                          // usercirclepHW (154:72)
                          onPressed: () {},
                          style: TextButton.styleFrom(
                            padding: EdgeInsets.zero,
                          ),
                          child: Container(
                            width: 35 * fem,
                            height: 35 * fem,
                            child: Image.asset(
                              'assets/images/user-circle.png',
                              width: 35 * fem,
                              height: 35 * fem,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    // autogroupa84pXSp (V562kFq98LEq7ks8eKA84p)
                    margin: EdgeInsets.fromLTRB(
                        32 * fem, 0 * fem, 33 * fem, 0 * fem),
                    width: double.infinity,
                    height: 187 * fem,
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
                    child: Stack(
                      children: [
                        Positioned(
                          // searchbarnde (87:124)
                          left: 2 * fem,
                          top: 1 * fem,
                          child: Align(
                            child: SizedBox(
                              width: 254 * fem,
                              height: 37 * fem,
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10 * fem),
                                  border: Border.all(color: Color(0xffa31621)),
                                  color: Color(0xfffcf7f8),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          // searchUFa (87:121)
                          left: 7 * fem,
                          top: 8 * fem,
                          child: Align(
                            child: SizedBox(
                              width: 72 * fem,
                              height: 25 * fem,
                              child: Text(
                                'Search ',
                                style: SafeGoogleFont(
                                  'Inter',
                                  fontSize: 20 * ffem,
                                  fontWeight: FontWeight.w400,
                                  height: 1.2125 * ffem / fem,
                                  color: Color(0xff000000),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          // icons8searchmore72xxhdpi1a3i (87:126)
                          left: 206 * fem,
                          top: 0 * fem,
                          child: Align(
                            child: SizedBox(
                              width: 39 * fem,
                              height: 38 * fem,
                              child: Image.asset(
                                'assets/images/icon-search.png',
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
            Container(
              // autogroups3sgUPz (V562skcefdcGWuwVjHS3Sg)
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
                    // Anc (154:99)
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
                    // etaVK6 (154:103)
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
                    // arrowupsvgrepocom2PQU (154:100)
                    onPressed: () {},
                    style: TextButton.styleFrom(
                      padding: EdgeInsets.zero,
                    ),
                    child: Container(
                      width: 26 * fem,
                      height: 30 * fem,
                      child: Image.asset(
                        'assets/images/arrow-up.png',
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
