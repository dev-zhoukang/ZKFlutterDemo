import 'package:flutter/material.dart';

class GlobalConfig {
  static const _ColorConfig colorConfig = _ColorConfig();
  static const _TextThemeConfig textThemeConfig = _TextThemeConfig();
}

class _ColorConfig {
  const _ColorConfig();
  final Color defaultThemeColor = const Color(0xff245DB4);
}

class _TextThemeConfig {
  const _TextThemeConfig();
  final TextStyle defaultSubTextStyle = const TextStyle(
    color: Color(0xff555555),
    fontSize: 14.0,
    fontWeight: FontWeight.w500,
  );
}