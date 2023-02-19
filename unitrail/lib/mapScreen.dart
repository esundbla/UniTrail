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
        // sethshowminimapsqJ (87:41)
        padding: EdgeInsets.fromLTRB(0 * fem, 9 * fem, 0 * fem, 0 * fem),
        width: double.infinity,
        decoration: const BoxDecoration(color: Color(0xffffffff)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              // autogroupjzfeaji (V565GrHYZy2HNNZMRxJZfE)
              margin:
                  EdgeInsets.fromLTRB(19 * fem, 0 * fem, 20 * fem, 429 * fem),
              width: double.infinity,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // vectorWdN (154:48)
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
                    // logodraftdarkmode2x3nqn (154:47)
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
                    // usercircleTS8 (154:49)
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
              // autogrouphhllALY (V565QWjSgBd5xMXNN1hHLL)
              padding:
                  EdgeInsets.fromLTRB(18 * fem, 6.21 * fem, 22 * fem, 8 * fem),
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
                    // rjA (154:87)
                    margin: EdgeInsets.fromLTRB(
                        0 * fem, 7.79 * fem, 118 * fem, 0 * fem),
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
                    // etamLL (154:91)
                    margin: EdgeInsets.fromLTRB(
                        0 * fem, 3.79 * fem, 90 * fem, 0 * fem),
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
                    // arrowupsvgrepocom1fRi (154:88)
                    onPressed: () {},
                    style: TextButton.styleFrom(
                      padding: EdgeInsets.zero,
                    ),
                    child: Container(
                      width: 26 * fem,
                      height: 34.79 * fem,
                      child: Image.asset(
                        'assets/images/arrow-down.png',
                        width: 26 * fem,
                        height: 34.79 * fem,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              // autogroupfzveyhJ (V565Z1VHczNiUTweXWfzVe)
              width: double.infinity,
              height: 270 * fem,
              decoration: BoxDecoration(
                color: Color(0xffd9d9d9),
              ),
              child: Center(
                child: Text(
                  'Mini Map',
                  style: SafeGoogleFont(
                    'Inter',
                    fontSize: 48 * ffem,
                    fontWeight: FontWeight.w400,
                    height: 1.2125 * ffem / fem,
                    color: Color(0xff000000),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
