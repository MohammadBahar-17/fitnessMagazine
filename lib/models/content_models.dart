import 'package:flutter/material.dart';

class Article {
  final String title;
  final String summary;
  final String content;
  final String imagePath;
  final Color themeColor;

  const Article({
    required this.title,
    required this.summary,
    required this.content,
    required this.imagePath,
    required this.themeColor,
  });
}

class FeaturedArticle extends Article {
  final String category;

  const FeaturedArticle({
    required super.title,
    required super.summary,
    required super.content,
    required super.imagePath,
    required super.themeColor,
    required this.category,
  });
}
