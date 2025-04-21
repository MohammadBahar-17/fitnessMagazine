import 'package:flutter/material.dart';

class AppTextStyles {
  //APP BAR
  /*
   static const TextStyle appBarTitle = TextStyle(
    color: Colors.white,
    fontSize: 20,
    fontWeight: FontWeight.bold,
  );
  */
  static TextStyle appBarTitle() {
    return TextStyle(
      color: Colors.white,
      fontSize: 20,
      fontWeight: FontWeight.bold,
    );
  }

// FEATURED CONTENT
// articleCategory
  static TextStyle articleCategory() {
    return TextStyle(
      color: Colors.white,
      fontSize: 23,
      fontWeight: FontWeight.w200,
    );
  }

  //articleTitle
  static TextStyle articleTitle() {
    return TextStyle(
      color: Color(0xFF5A5A5A),
      fontSize: 16,
      fontWeight: FontWeight.w600,
    );
  }

  // articleSummary
  static TextStyle articleSummary() {
    return TextStyle(
      color: Color(0xFF575757),
      fontSize: 14,
    );
  }
  // FEATURED CONTENT Done

  //categoryContentList
  //articleTitleCat
  static TextStyle articleTitleCat() {
    return TextStyle(
      color: Colors.white,
      fontSize: 14,
    );
  }

//articleSummaryCat
  static TextStyle articleSummaryCat() {
    return TextStyle(
      color: Colors.white,
      fontSize: 12,
    );
  }
  //categoryContentList Done

  //articleViewScreen
  //Title
  static TextStyle title() {
    return TextStyle(
      color: Color(0xFF5A5A5A),
      fontSize: 22,
      fontWeight: FontWeight.w200,
    );
  }

  //Content
  static TextStyle content() {
    return TextStyle(
      color: Color(0xFF5A5A5A),
      fontSize: 18,
    );
  }
  //articleViewScreen Done

  //tabBar
  static TextStyle tabBar() {
    return TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w600,
      color: Color(0xFF48444D),
      letterSpacing: 1,
    );
  }
//tabBar Done
}
