// Copyright 2022 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// ignore_for_file: avoid_redundant_argument_values

import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:presentation/presentation.dart';


import 'package:theme_test/src/color_palettes_screen.dart';
import 'package:theme_test/src/component_screen.dart';
import 'package:theme_test/src/elevation_screen.dart';
import 'package:theme_test/src/typography_screen.dart';

// FCS Guide: The core of FCS sets these as non null and with MD3 defautls:
//                ThemeData.appBarTheme
//                ThemeData.bottomAppBarTheme
//                ThemeData.bottomNavigationBarTheme
//                ThemeData.buttonTheme (for the legacy deprecated buttons)
//                ThemeData.chipTheme
//                ThemeData.inputDecorationTheme
//                ThemeData.tabBarTheme
//                ThemeData.textSelectionTheme
//                ThemeData.tooltipTheme
//
//            Then the subthemes sets up these as non null with MD3 defaults and color tunings:
//                 ThemeData.bottomSheetTheme
//                  ThemeData.cardTheme
//                 ThemeData.checkboxTheme
//                 ThemeData.dialogTheme
//                 ThemeData.elevatedButtonTheme
//                 ThemeData.floatingActionButtonTheme
//                 ThemeData.iconTheme
//                 ThemeData.navigationBarTheme
//                 ThemeData.navigationRailTheme
//                 ThemeData.outlinedButtonTheme
//                 ThemeData.popupMenuTheme
//                 ThemeData.primaryIconTheme
//                 ThemeData.radioTheme
//                 ThemeData.snackBarTheme
//                 ThemeData.switchTheme
//                 ThemeData.textButtonTheme
//                 ThemeData.timePickerTheme
//                 ThemeData.toggleButtonsTheme
//
//         To tweak FCS stuff:
//  ```dart
//   theme: lightTheme.copyWith(appBarTheme: lightTheme.appBarTheme.copyWith(
//           shadowColor: const Color(0xFF2D0606));
// ```
//
//  At root in MaterialApp, CupertinoApp or if using FPW PlatFormApp
//
// Generally the one or two themes needed to be set when using FCS are set by
// surrounding the widget with that needed theme as FCS sets the rest of them.
//
// ThemeData is set using FCS constructors with this in mind.
//
//

// NavigationRail shows if the screen width is greater or equal to
// screenWidthThreshold; otherwise, NavigationBar is used for navigation.
const double narrowScreenWidthThreshold = 450;

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyApp();
}

class _MyApp extends State<MyApp> {
  int screenIndex = 0;

  void handleScreenChanged(int selectedScreen) {
    setState(() {
      screenIndex = selectedScreen;
    });
  }

  Widget createScreenFor(int screenIndex, bool showNavBarExample) {
    switch (screenIndex) {
      case 0:
        return ComponentScreen(showNavBottomBar: showNavBarExample);
      case 1:
        return const ColorPalettesScreen();
      case 2:
        return const TypographyScreen();
      case 3:
        return const ElevationScreen();
      default:
        return ComponentScreen(showNavBottomBar: showNavBarExample);
    }
  }

  PreferredSizeWidget createAppBar() {
    return AppBar(
      title: const Text("Material Design 3"),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      useInheritedMediaQuery: true,
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      debugShowCheckedModeBanner: false,
      theme: appLightThemeData,
      darkTheme: appDarkThemeData,
      //themeMode: ThemeMode.light,
      home: LayoutBuilder(
        builder: (
          context,
          constraints,
        ) {
          return constraints.maxWidth < narrowScreenWidthThreshold
              ? Scaffold(
                  appBar: createAppBar(),
                  body: Row(
                      children: <Widget>[createScreenFor(screenIndex, false)],),
                  bottomNavigationBar: NavigationBars(
                      onSelectItem: handleScreenChanged,
                      selectedIndex: screenIndex,
                      isExampleBar: false,),)
              : Scaffold(
                  appBar: createAppBar(),
                  body: SafeArea(
                      bottom: false,
                      top: false,
                      child: Row(children: <Widget>[
                        Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 5),
                            child: NavigationRailSection(
                                onSelectItem: handleScreenChanged,
                                selectedIndex: screenIndex,),),
                        const VerticalDivider(thickness: 1, width: 1),
                        createScreenFor(screenIndex, true)
                      ],),),);
        },
      ),
    );
  }
}
