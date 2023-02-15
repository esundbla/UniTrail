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
        // sethhomenoaction3cL (24:13)
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              // autogroupxnvevJk (V55zipCq1JnJXe26y7XNVe)
              margin: EdgeInsets.fromLTRB(19*fem, 0*fem, 19.55*fem, 696*fem),
              width: double.infinity,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // vectorzZW (154:118)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 33*fem, 1*fem),
                    width: 35*fem,
                    height: 30*fem,
                    child: Image.asset(
                      'assets/images/vector-k4Q.png',
                      width: 35*fem,
                      height: 30*fem,
                    ),
                  ),
                  Container(
                    // logodraftdarkmode2x5JKJ (154:119)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 18.55*fem, 0*fem),
                    width: 201*fem,
                    height: 43*fem,
                    child: Image.asset(
                      'assets/images/logodraftdarkmode2x-5.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                  Container(
                    // usercircleNpx (154:116)
                    margin: EdgeInsets.fromLTRB(0*fem, 4*fem, 0*fem, 0*fem),
                    width: 33.91*fem,
                    height: 33.91*fem,
                    child: Image.asset(
                      'assets/images/user-circle-HPE.png',
                      width: 33.91*fem,
                      height: 33.91*fem,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              // autogroup43rgsmi (V55zvE3UtB4ppCXJSf43rg)
              padding: EdgeInsets.fromLTRB(18*fem, 11*fem, 22*fem, 8*fem),
              width: double.infinity,
              decoration: BoxDecoration (
                border: Border.all(color: Color(0xffa31621)),
                color: Color(0xff78c091),
                borderRadius: BorderRadius.circular(15*fem),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // vV6 (154:81)
                    margin: EdgeInsets.fromLTRB(0*fem, 3*fem, 118*fem, 0*fem),
                    child: Text(
                      '--',
                      style: SafeGoogleFont (
                        'Inter',
                        fontSize: 20*ffem,
                        fontWeight: FontWeight.w400,
                        height: 1.2125*ffem/fem,
                        color: Color(0xff000000),
                      ),
                    ),
                  ),
                  Container(
                    // etaoYt (154:85)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 90*fem, 1*fem),
                    child: Text(
                      'ETA: --',
                      style: SafeGoogleFont (
                        'Inter',
                        fontSize: 20*ffem,
                        fontWeight: FontWeight.w400,
                        height: 1.2125*ffem/fem,
                        color: Color(0xff000000),
                      ),
                    ),
                  ),
                  TextButton(
                    // arrowupsvgrepocom173n (154:82)
                    onPressed: () {},
                    style: TextButton.styleFrom (
                      padding: EdgeInsets.zero,
                    ),
                    child: Container(
                      width: 26*fem,
                      height: 30*fem,
                      child: Image.asset(
                        'assets/images/arrow-up-svgrepo-com-1.png',
                        width: 26*fem,
                        height: 30*fem,
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