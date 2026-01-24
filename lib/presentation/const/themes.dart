import 'package:flutter/material.dart';

import 'colors.dart';

class AppTheme {
  const AppTheme._();

  static final ThemeData themeData = ThemeData(
    colorScheme: const ColorScheme(
      brightness: Brightness.light,

      /// 活性化時のボタン、ボトムタブのテキスト・アイコン、インジケータなどの色
      primary: ColorConsts.green,
      onPrimary: ColorConsts.ivoryWhite,

      /// FilterChipなどの色
      secondary: ColorConsts.darkGreen,
      onSecondary: ColorConsts.ivoryWhite,
      error: ColorConsts.errorRed,
      onError: ColorConsts.ivoryWhite,

      /// 画面全体やElevatedButtonの背景などの色
      surface: ColorConsts.darkGray,
      onSurface: ColorConsts.ivoryWhite,

      /// SnackBarの背景などの色
      inverseSurface: ColorConsts.darkGreen,
      onInverseSurface: ColorConsts.ivoryWhite,

      /// SnackBarにつくボタンなどの色
      // inversePrimary: Colors.black,
    ),
    useMaterial3: true,
  );
}
