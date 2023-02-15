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
        // sethhomemenubuttongnc (41:15)
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              // autogroupnqhnpdv (V5688X2Vzgh4VXindCNQHn)
              padding: EdgeInsets.fromLTRB(11*fem, 0*fem, 11*fem, 475*fem),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    // autogroup6js2xEL (V567dhXBoupsCgeuCw6Js2)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 7*fem),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // vectorHnQ (154:5)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 33*fem, 1*fem),
                          child: TextButton(
                            onPressed: () {},
                            style: TextButton.styleFrom (
                              padding: EdgeInsets.zero,
                            ),
                            child: Container(
                              width: 35*fem,
                              height: 30*fem,
                              child: Image.asset(
                                'assets/page-1/images/vector.png',
                                width: 35*fem,
                                height: 30*fem,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          // logodraftdarkmode2x4C8g (154:68)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 18.55*fem, 0*fem),
                          width: 201*fem,
                          height: 43*fem,
                          child: Image.asset(
                            'assets/images/logodraftdarkmode2x-4-oEG.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                        Container(
                          // usercircleuon (154:3)
                          margin: EdgeInsets.fromLTRB(0*fem, 4*fem, 0*fem, 0*fem),
                          width: 33.91*fem,
                          height: 33.91*fem,
                          child: Image.asset(
                            'assets/images/user-circle-VFe.png',
                            width: 33.91*fem,
                            height: 33.91*fem,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    // autogrouplcxqELG (V567oH5ZSgaNSAMvNWLCxQ)
                    margin: EdgeInsets.fromLTRB(2*fem, 0*fem, 0*fem, 0*fem),
                    padding: EdgeInsets.fromLTRB(14*fem, 11*fem, 14*fem, 15*fem),
                    width: 203*fem,
                    decoration: BoxDecoration (
                      border: Border.all(color: Color(0xffa31621)),
                      color: Color(0xffa31621),
                      borderRadius: BorderRadius.circular(10*fem),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          // myclassesK6p (49:27)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 17*fem),
                          child: TextButton(
                            onPressed: () {},
                            style: TextButton.styleFrom (
                              padding: EdgeInsets.zero,
                            ),
                            child: Text(
                              'My Classes',
                              style: SafeGoogleFont (
                                'Work Sans',
                                fontSize: 16*ffem,
                                fontWeight: FontWeight.w800,
                                height: 1.1725*ffem/fem,
                                color: Color(0xffffffff),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          // searchclassroomszik (49:28)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 14*fem),
                          child: TextButton(
                            onPressed: () {},
                            style: TextButton.styleFrom (
                              padding: EdgeInsets.zero,
                            ),
                            child: Text(
                              'Search Classrooms',
                              style: SafeGoogleFont (
                                'Work Sans',
                                fontSize: 16*ffem,
                                fontWeight: FontWeight.w800,
                                height: 1.1725*ffem/fem,
                                color: Color(0xffffffff),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          // calendarbetaUdv (49:30)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 18*fem),
                          child: Text(
                            'Calendar (Beta)',
                            style: SafeGoogleFont (
                              'Work Sans',
                              fontSize: 16*ffem,
                              fontWeight: FontWeight.w800,
                              height: 1.1725*ffem/fem,
                              color: Color(0xffffffff),
                            ),
                          ),
                        ),
                        Container(
                          // settingsawr (49:29)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 17*fem),
                          child: Text(
                            'Settings',
                            style: SafeGoogleFont (
                              'Work Sans',
                              fontSize: 16*ffem,
                              fontWeight: FontWeight.w800,
                              height: 1.1725*ffem/fem,
                              color: Color(0xffffffff),
                            ),
                          ),
                        ),
                        Container(
                          // navigateiHN (132:2)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 12*fem),
                          child: TextButton(
                            onPressed: () {},
                            style: TextButton.styleFrom (
                              padding: EdgeInsets.zero,
                            ),
                            child: Text(
                              'Navigate',
                              style: SafeGoogleFont (
                                'Work Sans',
                                fontSize: 16*ffem,
                                fontWeight: FontWeight.w800,
                                height: 1.1725*ffem/fem,
                                color: Color(0xffffffff),
                              ),
                            ),
                          ),
                        ),
                        TextButton(
                          // debugmoded9S (154:120)
                          onPressed: () {},
                          style: TextButton.styleFrom (
                            padding: EdgeInsets.zero,
                          ),
                          child: Text(
                            'Debug Mode',
                            style: SafeGoogleFont (
                              'Work Sans',
                              fontSize: 16*ffem,
                              fontWeight: FontWeight.w800,
                              height: 1.1725*ffem/fem,
                              color: Color(0xffffffff),
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
              // autogrouprtksYnC (V567zgvDKYrtiis7r3rtKS)
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
                    // T8U (154:75)
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
                    // etamur (154:79)
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
                    // arrowupsvgrepocom2sxt (154:76)
                    onPressed: () {},
                    style: TextButton.styleFrom (
                      padding: EdgeInsets.zero,
                    ),
                    child: Container(
                      width: 26*fem,
                      height: 30*fem,
                      child: Image.asset(
                        'assets/images/arrow-up-svgrepo-com-2-osn.png',
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