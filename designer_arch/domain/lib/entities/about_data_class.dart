// Copyright 2022 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:freezed_annotation/freezed_annotation.dart';

part 'about_data_class.freezed.dart';

const AboutDataClass aboutDataClass = AboutDataClass();

@freezed
class AboutDataClass with _$AboutDataClass {
  const factory AboutDataClass({
    @Default('1') String versionMajor,
    @Default('01') String versionBuild,
    @Default('1.1.1') String packageVersion,
    @Default('beta 3.3.0') String flutterVersion,
    @Default("Â© 2022") String copyright,
    @Default("Fredrick Allan Grott") String author,
    @Default("BSD 3-Clause License") String license,
    @Default('assets/images/app_icon.png') String iconPath,
  }) = _AboutDataClass;
}
