import 'package:flutter/material.dart';

class AppSizes {
  static const int splashScreenTitleFontSize = 48;
  static const int titleFontSize = 34;
  static const double sidePadding = 15;
  static const double space = 5.0;
  static const double widgetSidePadding = 20;
  static const double buttonRadius = 25;
  static const double imageRadius = 8;
  static const double linePadding = 4;
  static const double widgetBorderRadius = 34;
  static const double textFieldRadius = 4.0;
  static const EdgeInsets bottomSheetPadding =
      EdgeInsets.symmetric(horizontal: 16, vertical: 10);
  static const app_bar_size = 56.0;
  static const app_bar_expanded_size = 180.0;
  static const tile_width = 148.0;
  static const tile_height = 276.0;
}

class AppColors {
  static const white = Color(0xfffefefe);
  static const black = Color(0xFF000000);
  static const orange = Color(0xfffb5a3c);
  static const lightOrange = Color(0xfff5b19e);
  static const yellow = Color(0xfffeb918);
  static const darkGrey = Color(0x777b7d7e);
  static const grey = Color(0xccc9cacd);
  static const lightGrey = Color(0xfff6f6f8);
  static const greeen = Color(0x5559da72);
  static const darkGreen = Color(0x00007d7f);
}

class FoodEcommerceTheme {
  static ThemeData of(context) {
    var theme = Theme.of(context);
    return theme.copyWith(
      backgroundColor: AppColors.white,
      primaryColor: AppColors.orange,
      appBarTheme: theme.appBarTheme.copyWith(
        color: AppColors.white,
        iconTheme: IconThemeData(color: AppColors.black),
        textTheme: theme.textTheme.copyWith(
          caption: TextStyle(
              color: AppColors.black,
              fontSize: 18,
              fontFamily: 'Montserrat',
              fontWeight: FontWeight.w400),
        ),
      ),
      textTheme: theme.textTheme
          .copyWith(
            headline1: theme.textTheme.headline1!.copyWith(
                fontSize: 26, fontWeight: FontWeight.w700, color: Colors.black),
            headline2: theme.textTheme.headline2!.copyWith(
                fontSize: 24,
                fontWeight: FontWeight.w700,
                color: AppColors.orange),
            headline3: theme.textTheme.headline3!.copyWith(
                fontSize: 22,
                fontWeight: FontWeight.w600,
                color: AppColors.orange),
            headline4: theme.textTheme.headline4!.copyWith(
                fontSize: 20,
                fontWeight: FontWeight.w500,
                color: AppColors.orange),
            headline5: theme.textTheme.headline5!.copyWith(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: AppColors.orange),
            bodyText1: theme.textTheme.bodyText1!.copyWith(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: AppColors.black),
            bodyText2: theme.textTheme.bodyText2!
                .copyWith(fontSize: 12, color: AppColors.black),
            caption: theme.textTheme.caption!.copyWith(
                fontSize: 15,
                fontWeight: FontWeight.w500,
                color: AppColors.darkGrey),
            subtitle1: theme.textTheme.subtitle1!.copyWith(
                fontSize: 15,
                fontWeight: FontWeight.w400,
                color: AppColors.orange),
            subtitle2: theme.textTheme.subtitle2!.copyWith(
                fontSize: 12,
                fontWeight: FontWeight.w200,
                color: AppColors.lightOrange),
          )
          .apply(fontFamily: 'Montserrat'),
      buttonTheme: theme.buttonTheme
          .copyWith(minWidth: 50, buttonColor: AppColors.orange),
    );
  }
}
