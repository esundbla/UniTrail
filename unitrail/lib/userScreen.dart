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
        // sethhomeuserbuttonX3v (87:2)
        padding: EdgeInsets.fromLTRB(1 * fem, 10 * fem, 0 * fem, 0 * fem),
        width: double.infinity,
        decoration: const BoxDecoration(color: Color(0xffffffff)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Container(
              // autogroupv4nlcr4 (V566QV4rBZpCuhSStiV4nL)
              margin:
                  EdgeInsets.fromLTRB(17 * fem, 0 * fem, 21 * fem, 10 * fem),
              width: double.infinity,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // vectorYji (132:28)
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
                    // logodraftdarkmode2x2dWG (87:6)
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
                    // usercirclejZJ (154:45)
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
              // autogroupebmaewA (V566YeVuzY774A5RN3EBMA)
              margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 6 * fem, 539 * fem),
              padding:
                  EdgeInsets.fromLTRB(17 * fem, 7 * fem, 21 * fem, 19 * fem),
              width: 241 * fem,
              decoration: BoxDecoration(
                border: Border.all(color: const Color(0xffa31621)),
                color: const Color(0xffa31621),
                borderRadius: BorderRadius.circular(10 * fem),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    // autogroupyhuzXVA (V566govyoWQ1CciPqMyHuz)
                    margin: EdgeInsets.fromLTRB(
                        0 * fem, 0 * fem, 0 * fem, 36 * fem),
                    width: double.infinity,
                    height: 46 * fem,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // autogroupyrwq3iQ (V566oJk9wJPFUpSqqoYRWQ)
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 0 * fem, 15 * fem, 0 * fem),
                          padding: EdgeInsets.fromLTRB(
                              6 * fem, 5 * fem, 6 * fem, 4 * fem),
                          height: double.infinity,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage(
                                'assets/images/ellipse.png',
                              ),
                            ),
                          ),
                          child: Center(
                            // icons8customer96xxhdpi4jr8 (132:27)
                            child: SizedBox(
                              width: 37 * fem,
                              height: 37 * fem,
                              child: Image.asset(
                                'assets/images/icon-user.png',
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          // msudenveredurfr (87:11)
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 11 * fem, 0 * fem, 0 * fem),
                          child: Text(
                            '123@msudenver.edu',
                            style: SafeGoogleFont(
                              'Inter',
                              fontSize: 14 * ffem,
                              fontWeight: FontWeight.w400,
                              height: 1.2125 * ffem / fem,
                              color: const Color(0xffffffff),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    // viewaccountmH2 (87:12)
                    margin:
                        EdgeInsets.fromLTRB(7 * fem, 0 * fem, 0 * fem, 7 * fem),
                    child: Text(
                      'View Account',
                      style: SafeGoogleFont(
                        'Inter',
                        fontSize: 14 * ffem,
                        fontWeight: FontWeight.w400,
                        height: 1.2125 * ffem / fem,
                        color: const Color(0xffffffff),
                      ),
                    ),
                  ),
                  Container(
                    // logoutGUg (87:13)
                    margin:
                        EdgeInsets.fromLTRB(7 * fem, 0 * fem, 0 * fem, 0 * fem),
                    child: Text(
                      'Log Out',
                      style: SafeGoogleFont(
                        'Inter',
                        fontSize: 14 * ffem,
                        fontWeight: FontWeight.w400,
                        height: 1.2125 * ffem / fem,
                        color: const Color(0xffffffff),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              // autogroup1vfnyP6 (V56723svMWWhFz5G641VFN)
              padding:
                  EdgeInsets.fromLTRB(18 * fem, 11 * fem, 22 * fem, 8 * fem),
              width: 360 * fem,
              decoration: BoxDecoration(
                border: Border.all(color: const Color(0xffa31621)),
                color: const Color(0xff78c091),
                borderRadius: BorderRadius.circular(15 * fem),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // f12 (154:19)
                    margin: EdgeInsets.fromLTRB(
                        0 * fem, 3 * fem, 118 * fem, 0 * fem),
                    child: Text(
                      '--',
                      style: SafeGoogleFont(
                        'Inter',
                        fontSize: 20 * ffem,
                        fontWeight: FontWeight.w400,
                        height: 1.2125 * ffem / fem,
                        color: const Color(0xff000000),
                      ),
                    ),
                  ),
                  Container(
                    // etampk (154:23)
                    margin: EdgeInsets.fromLTRB(
                        0 * fem, 0 * fem, 90 * fem, 1 * fem),
                    child: Text(
                      'ETA: --',
                      style: SafeGoogleFont(
                        'Inter',
                        fontSize: 20 * ffem,
                        fontWeight: FontWeight.w400,
                        height: 1.2125 * ffem / fem,
                        color: const Color(0xff000000),
                      ),
                    ),
                  ),
                  TextButton(
                    // arrowupsvgrepocom25qS (154:20)
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
