// Copyright 2022 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:domain/domain.dart';
import 'package:responsive_framework/responsive_framework.dart';

final double smallMobileBreak = responsiveDataClass.smallMobileBreak;
final double mediumMobileBreak = responsiveDataClass.mediumMobileBreak;
final double largeMobileBreak = responsiveDataClass.largeMobileBreak;
final double smallDeskBreak = responsiveDataClass.smallDeskBreak;
final double largeDeskBreak = responsiveDataClass.largeDeskBreak;

final double kAppResponsiveMaxWidth = responsiveDataClass.largeDeskBreak;
final double kAppResponsiveMinWidth = responsiveDataClass.smallMobileBreak;
final bool kAppResponsiveDefaultScale = responsiveDataClass.responsiveDefaultScale;
final ResponsiveBreakpoint kAppResponsiveBreakSmallMobile =
    ResponsiveBreakpoint.resize(
  smallMobileBreak,
  name: responsiveDataClass.smallMobileBreakLabel,
);
//
// ignore: prefer-correct-identifier-length
final ResponsiveBreakpoint kAppResponsiveBreakMediumMobile =
    ResponsiveBreakpoint.autoScale(
  mediumMobileBreak,
  name: responsiveDataClass.mediumMobileBreakLabel,
);
final ResponsiveBreakpoint kAppResponsiveBreakLargeMobile =
    ResponsiveBreakpoint.autoScale(
  largeMobileBreak,
  name: responsiveDataClass.largeMobileBreakLabel,
);
final ResponsiveBreakpoint kAppResponsiveBreakSmallDesk =
    ResponsiveBreakpoint.resize(
  smallDeskBreak,
  name: responsiveDataClass.smallDeskBreakLabel,
);
final ResponsiveBreakpoint kAppResponsiveBreakLargeDesk =
    ResponsiveBreakpoint.resize(
  largeDeskBreak,
  name: responsiveDataClass.largeDeskBreakLabel,
);

// content inserts
final double edgeInsetsSmallMobile = responsiveDataClass.smallMobileEdgeInset;
final double edgeInsetsMediumMobile = responsiveDataClass.mediumMobileEdgeInset;
final double edgeInsetsLargeMobile = responsiveDataClass.largeMobileEdgeInset;
final double edgeInsetsSmallDesk = responsiveDataClass.smallDeskEdgeInset;
final double edgeInsetsLargeDesk = responsiveDataClass.largeDeskEdgeInset;

double responsiveInsets(double width) {
  if (width < smallMobileBreak) return edgeInsetsSmallMobile;
  if (width < mediumMobileBreak) return edgeInsetsMediumMobile;
  if (width < largeMobileBreak) return edgeInsetsLargeMobile;
  if (width < smallDeskBreak) return edgeInsetsSmallDesk;

  return edgeInsetsLargeDesk;
}
