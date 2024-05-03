import 'package:flutter/material.dart';

class MyTheme{
  static const Color lightPrimary = Color(0xff5D9CEC);
  static const Color colorGrey = Color(0xffC8C9CB);
  static const Color lightScaffoldBackgroundColor = Color(0xffDFCEDB);
static final lightTheme = ThemeData(
  primaryColor: lightPrimary,
scaffoldBackgroundColor: lightScaffoldBackgroundColor,
  appBarTheme: AppBarTheme(
    color: lightPrimary,
  ),
  bottomNavigationBarTheme: BottomNavigationBarThemeData(
    backgroundColor: Colors.transparent,
    elevation: 0,
    selectedIconTheme:IconThemeData(
      color: lightPrimary,
      size: 36,
    ),
    unselectedIconTheme: IconThemeData(
      color: colorGrey,
    ),
  ),
  bottomSheetTheme: BottomSheetThemeData(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(18),
        topRight:Radius.circular(18),
      ),
    ),
  ),
    textTheme: const TextTheme(
      headline5: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.bold,
        color:Colors.black,
      ),
      headline6: TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.bold,
        color:Colors.black,
      ),

)
);
}