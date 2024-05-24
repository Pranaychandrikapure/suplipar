import 'dart:ui';
import 'package:flutter/material.dart';

class OnboardingPageFirst extends StatelessWidget {
  const OnboardingPageFirst({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
  decoration: BoxDecoration(
    color: Color(0xFFFFFFFF),
    borderRadius: BorderRadius.circular(25),
  ),
  child: Stack(
    children: [
      Positioned(
        left: 0,
        right: 0,
        top: 0,
        bottom: 0,
        child: Container(
          decoration: BoxDecoration(
            color: Color(0xFFFFFFFF),
          ),
          child: Container(
            width: 375,
            height: 812,
          ),
        ),
      ),
Container(
        padding: EdgeInsets.fromLTRB(0, 296, 1, 85),
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.fromLTRB(0, 0, 53, 27),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(41.5),
                    color: Color(0xFF2F3A4B),
                    boxShadow: [
                      BoxShadow(
                        color: Color(0x40000000),
                        offset: Offset(0, 4),
                        blurRadius: 2,
                      ),
                    ],
                  ),
                  child: Container(
                    width: 83,
                    height: 83,
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(0, 0, 0, 14),
                  child: RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                      style:TextStyle (
                        fontWeight: FontWeight.w600,
                        fontSize: 40,
                        height: 1.2,
                        color: Color(0xFF1E1E1E),
                      ),
                      children: [
                        TextSpan(
                          text: 'Welcome to',
                          style: TextStyle (
                            fontWeight: FontWeight.w500,
                            fontSize: 45,
                            height: 1.3,
                          ),
                        ),
                        TextSpan(
                          text: '',
                          style: TextStyle (
                            fontWeight: FontWeight.w500,
                            fontSize: 40,
                            height: 1.3,
                          ),
                        ),
                        TextSpan(
                          text: 'TrasnferMe.',
                          style: TextStyle (
                            fontWeight: FontWeight.w500,
                            fontSize: 36,
                            height: 1.3,
                            color: Color(0xFF2F3A4B),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(0, 0, 14.9, 112),
                  child: Text(
                    'Your Best Money Transfer Partner.',
                    style: TextStyle (
                      fontWeight: FontWeight.w500,
                      fontSize: 13,
                      color: Color(0xFF878787),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(1, 0, 0, 0),
                  child: SizedBox(
                    width: 201,
                    height: 72,
                    child: Container(
                      padding: EdgeInsets.fromLTRB(0, 0, 0, 13),
                      child: Stack(
                        clipBehavior: Clip.none,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: Color(0xFF2F3A4B),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Container(
                              width: 201,
                              height: 59,
                            ),
                          ),
                          Positioned(
                            bottom: 0,
                            child: ImageFiltered(
                              imageFilter: ImageFilter.blur(
                                sigmaX: 100,
                                sigmaY: 100,
                              ),
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Color(0xFF2F3A4B),
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Container(
                                  width: 201,
                                  height: 59,
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            left: 44,
                            top: 16,
                            child: SizedBox(
                              height: 26,
                              child: Text(
                                'Get Started',
                                style:TextStyle (
                                  fontWeight: FontWeight.w600,
                                  fontSize: 22,
                                  color: Color(0xFFFFFFFF),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Positioned(
              right: 120,
              top: 296,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(41.5),
                  color: Color(0xFF7688A4),
                  boxShadow: [
                    BoxShadow(
                      color: Color(0x40000000),
                      offset: Offset(0, 4),
                      blurRadius: 2,
                    ),
                  ],
                ),
                child: Container(
                  width: 83,
                  height: 83,
                ),
              ),
            ),
          ],
        ),
      ),
    ],
  ),
);
  }
}