// Copyright 2022 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:freezed_annotation/freezed_annotation.dart';

part 'responsive_data_class.freezed.dart';

const ResponsiveDataClass responsiveDataClass = ResponsiveDataClass();

@freezed
class ResponsiveDataClass with _$ResponsiveDataClass {
  const factory ResponsiveDataClass({
    @Default(450) double smallMobileBreak,
    @Default("SmallMobile") String smallMobileBreakLabel,
    @Default(8) double smallMobileEdgeInset,
    @Default(600) double mediumMobileBreak,
    @Default("MediumMobile") String mediumMobileBreakLabel,
    @Default(10) double mediumMobileEdgeInset,
    @Default(1000) double largeMobileBreak,
    @Default("LargeMobile") String largeMobileBreakLabel,
    @Default(14) double largeMobileEdgeInset,
    @Default(1200) double smallDeskBreak,
    @Default("SmallDesk") String smallDeskBreakLabel,
    @Default(18) double smallDeskEdgeInset,
    @Default(2400) double largeDeskBreak,
    @Default("LargeDesk") String largeDeskBreakLabel,
    @Default(24) double largeDeskEdgeInset,
    @Default(true) bool responsiveDefaultScale,
  }) = _ResponsiveDataClass;
}
