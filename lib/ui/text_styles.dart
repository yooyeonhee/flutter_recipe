import 'package:flutter/material.dart';

abstract class TextStyles {
  // 구글 폰트를 사용하는 경우 pub add google_fonts 실행 후
  // static const TextStyle titleTextBold = GoogleFonts.poppins(
  //   fontSize: 50, fontWeight: FontWeight.bold);

  // assets 폰트 파일 적용
  static const TextStyle titleTextBold = TextStyle(
      fontSize: 50, fontWeight: FontWeight.bold, fontFamily: 'PoppinsBold');
  static const TextStyle headerTextBold = TextStyle(
      fontSize: 30, fontWeight: FontWeight.bold, fontFamily: 'PoppinsBold');
  static const TextStyle largeTextBold = TextStyle(
      fontSize: 20, fontWeight: FontWeight.bold, fontFamily: 'PoppinsBold');
  static const TextStyle mediumTextBold = TextStyle(
      fontSize: 18, fontWeight: FontWeight.bold, fontFamily: 'PoppinsBold');
  static const TextStyle normalTextBold = TextStyle(
      fontSize: 16, fontWeight: FontWeight.bold, fontFamily: 'PoppinsBold');
  static const TextStyle smallTextBold = TextStyle(
      fontSize: 14, fontWeight: FontWeight.bold, fontFamily: 'PoppinsBold');
  static const TextStyle smallerTextBold = TextStyle(
      fontSize: 11, fontWeight: FontWeight.bold, fontFamily: 'PoppinsBold');

  static const TextStyle titleTextRegular = TextStyle(
      fontSize: 50,
      fontWeight: FontWeight.normal,
      fontFamily: 'PoppinsRegular');
  static const TextStyle headerTextRegular = TextStyle(
      fontSize: 30,
      fontWeight: FontWeight.normal,
      fontFamily: 'PoppinsRegular');
  static const TextStyle largeTextRegular = TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.normal,
      fontFamily: 'PoppinsRegular');
  static const TextStyle mediumTextRegular = TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.normal,
      fontFamily: 'PoppinsRegular');
  static const TextStyle normalTextRegular = TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.normal,
      fontFamily: 'PoppinsRegular');
  static const TextStyle smallTextRegular = TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.normal,
      fontFamily: 'PoppinsRegular');
  static const TextStyle smallerTextRegular = TextStyle(
      fontSize: 11,
      fontWeight: FontWeight.normal,
      fontFamily: 'PoppinsRegular');
}
