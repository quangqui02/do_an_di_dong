import 'package:flutter/material.dart';

class ListDetail {
  ListDetail({
    required this.title,
    required this.iconAssetName,
    required this.gradients,
    required this.shadowColor,
    required this.iconTag,
    required this.category,
    required this.textColor,
  });
  final String title;
  final String iconAssetName;
  final List<Color> gradients;
  final Color shadowColor;
  final Object iconTag;
  final String category;
  final Color textColor;
}

const double opacity = 0.4;

final List<ListDetail> cardDetailList = [
  ListDetail(
    title: 'Literature',
    iconAssetName: 'images/van.png',
    gradients: [
      const Color(0xff089e44),
      const Color(0xff3dd178),
    ],
    shadowColor: const Color(0xff3dd178).withOpacity(opacity),
    iconTag: 'literature_icon',
    category: 'literature',
    textColor: const Color(0xff089e44),
  ),
  ListDetail(
    title: 'Music',
    iconAssetName: 'images/music.png',
    gradients: [
      const Color(0xff5718d6),
      const Color(0xff8048f0),
    ],
    shadowColor: const Color(0xff8048f0).withOpacity(opacity),
    iconTag: 'Music_icon',
    category: 'Music',
    textColor: const Color(0xff5718d6),
  ),
  ListDetail(
    title: 'Math',
    iconAssetName: 'images/math.png',
    gradients: [
      const Color(0xffd6182e),
      const Color(0xffed475a),
    ],
    shadowColor: const Color(0xffed475a).withOpacity(opacity),
    iconTag: 'Math_icon',
    category: 'Math',
    textColor: const Color(0xffd6182e),
  ),
  ListDetail(
    title: 'History',
    iconAssetName: 'images/music.png',
    gradients: [
      const Color(0xff0846a3),
      const Color(0xff387ee8),
    ],
    shadowColor: const Color(0xff387ee8).withOpacity(opacity),
    iconTag: 'history_icon',
    category: 'history',
    textColor: const Color(0xff0846a3),
  ),
];
