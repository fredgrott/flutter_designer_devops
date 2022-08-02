// Copyright 2022 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/animation.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'theme_data_class.freezed.dart';

final ThemeDataClass themeDataClass = ThemeDataClass();

@freezed
class ThemeDataClass with _$ThemeDataClass {
  const factory ThemeDataClass({
    // key colors
    @Default(true) bool useTertiary,
    @Default(true) bool useSecondary,
    @Default(true) bool keepPrimary,
    @Default(true) bool keepPrimaryContainer,
    @Default(true) bool keepSecondary,
    @Default(true) bool keepSecondaryContainer,
    @Default(true) bool keepTertiary,
    @Default(true) bool keepTertiaryContainer,
    // scheme color input colors
    @Default(0xFF00296B) Color lightPrimary,
    @Default(0xFFA0C2ED) Color lightPrimaryContainer,
    @Default(0xFFD26900) Color lightSecondary,
    @Default(0xFFFFD270) Color lightSecondaryContainer,
    @Default(0xFF5C5C95) Color lightTertiary,
    @Default(0xFFC8DBF8) Color lightTertiaryContainer,
    @Default(0xFFC8DCF8) Color lightAppbarBackground,
    @Default(0xFFB1CFF5) Color darkPrimary,
    @Default(0xFF3873BA) Color darkPrimaryContainer,
    @Default(0xFFFFD270) Color darkSecondary,
    @Default(0xFFD26900) Color darkSecondaryContainer,
    @Default(0xFFC9CBFC) Color darkTertiary,
    @Default(0xFF535393) Color darkTertiaryContainer,
    @Default(0xFF00102B) Color darkAppbarBackground,
    // sub theme data
    @Default(true) bool interactiveEffects,
    @Default(null) double? defaultRadius,
    @Default(24) double bottomsheetRadius,
    @Default(true) bool useTextTheme,
    @Default(FlexInputBorderType.outline)
        FlexInputBorderType inputDecoratorBordeType,
    @Default(true) bool inputDecoratorIsfilled,
    @Default(true) bool inputDecoratorUnfocusedHasBorder,
    @Default(SchemeColor.primary) SchemeColor inputDecoratorSchemeColor,
    @Default(true) bool fabUseShape,
    @Default(SchemeColor.secondaryContainer) SchemeColor fabSchemeColor,
    @Default(SchemeColor.primary) SchemeColor chipSchemeColor,
    @Default(1) double elevatedButtonWElevation,
    @Default(2) double thickBorderWidth,
    @Default(1.5) double thinBorderWidth,
    @Default(SchemeColor.secondary) SchemeColor tabBarIndicatorSchemeColor,
    @Default(SchemeColor.primary)
        SchemeColor bottomNavigationBarSelectedLabelSchemeColor,
    @Default(SchemeColor.background)
        SchemeColor bottomNavigationBarBackgroundSchemeColor,
    @Default(SchemeColor.tertiary)
        SchemeColor navigationBarSelectedIconSchemeColor,
    @Default(SchemeColor.tertiary)
        SchemeColor navigationBarSelectedLabelSchemeColor,
    @Default(SchemeColor.onSurface)
        SchemeColor navigationBarUnselectedIconSchemeColor,
    @Default(SchemeColor.onSurface)
        SchemeColor navigationBarUnselectedLabelSchemeColor,
    @Default(SchemeColor.tertiaryContainer)
        SchemeColor navigationBarIndicatorSchemeColor,
    @Default(1) double navigationBarIndicatorOpacity,
    @Default(SchemeColor.background)
        SchemeColor navigationBarBackgroundSchemeColor,
    @Default(true) bool navigationBarMutedUnselectedIcon,
    @Default(true) bool navigationBarMutedUnselectedLabel,
    @Default(12) double navigationBarSelectedLabelSize,
    @Default(10) double navigationBarUnselectedLabelSize,
    @Default(26) double navigationBarSelectedIconSize,
    @Default(22) double navigationBarUnSelectIconSize,
    // other theme data
    @Default(true) bool useMaterial3,
    @Default(true) bool swapColors,
    @Default(6) int useColors,
    @Default(true) bool lightIsWhite,
    @Default(true) bool darkIsTrueBlack,
    @Default(FlexAppBarStyle.primary) FlexAppBarStyle flexAppBarStyle,
    @Default(0.5) double appbarElevation,
    @Default(0.94) double appbarOpacity,
    @Default(true) bool transparentStatus,
    @Default(FlexTabBarStyle) FlexTabBarStyle flexTabBarStyle,
    @Default(FlexSurfaceMode.highBackgroundLowScaffold)
        FlexSurfaceMode flexSurfaceMode,
    @Default(20) int blendLevel,
    @Default(true) bool tooltipsMatchBackground,
  }) = _ThemeDataClass;
}
