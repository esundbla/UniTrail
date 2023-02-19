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
        // sethhomemyclassesamv (87:79)
        width: double.infinity,
        decoration: const BoxDecoration(color: Color(0xffffffff)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              // autogroupm3n8Jxp (V561tnFaZkoLgXNLH7M3n8)
              padding:
                  EdgeInsets.fromLTRB(22 * fem, 9 * fem, 17 * fem, 395 * fem),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // autogroupl9hsdVJ (V561R3Yo4ww273bBrvL9HS)
                    margin: EdgeInsets.fromLTRB(
                        0 * fem, 0 * fem, 0 * fem, 117 * fem),
                    width: double.infinity,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // vectormLc (154:52)
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
                          // logodraftdarkmode2x3kbr (154:51)
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
                          // usercircleUXr (154:53)
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
                    // autogrouprejzPui (V561Zhy2afv1oyu7sWRejz)
                    margin: EdgeInsets.fromLTRB(
                        33 * fem, 0 * fem, 32 * fem, 0 * fem),
                    padding: EdgeInsets.fromLTRB(
                        6 * fem, 6 * fem, 6 * fem, 66 * fem),
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
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          // myclassesS7J (87:96)
                          margin: EdgeInsets.fromLTRB(
                              61 * fem, 0 * fem, 0 * fem, 16 * fem),
                          child: Text(
                            'My Classes',
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
                          // cs210computerorg18kp (87:98)
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 0 * fem, 0 * fem, 7 * fem),
                          child: Text(
                            'CS 210 - Computer Org. 1',
                            style: SafeGoogleFont(
                              'Inter',
                              fontSize: 16 * ffem,
                              fontWeight: FontWeight.w400,
                              height: 1.2125 * ffem / fem,
                              color: Color(0xff000000),
                            ),
                          ),
                        ),
                        Container(
                          // cs220introtocomputers2rC (87:99)
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 0 * fem, 0 * fem, 7 * fem),
                          child: Text(
                            'CS 220 - Intro to Computers',
                            style: SafeGoogleFont(
                              'Inter',
                              fontSize: 16 * ffem,
                              fontWeight: FontWeight.w400,
                              height: 1.2125 * ffem / fem,
                              color: Color(0xff000000),
                            ),
                          ),
                        ),
                        Text(
                          // kc307calculusiiwCU (87:100)
                          'KC 307 - Calculus II',
                          style: SafeGoogleFont(
                            'Inter',
                            fontSize: 16 * ffem,
                            fontWeight: FontWeight.w400,
                            height: 1.2125 * ffem / fem,
                            color: Color(0xff000000),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              // autogroupalsiTgc (V561jsLmCeyJCMDvVtaLsi)
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
                    // mBW (154:7)
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
                    // etaH9r (154:11)
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
                    // arrowupsvgrepocom2zpx (154:8)
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
