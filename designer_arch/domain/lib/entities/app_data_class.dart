// Copyright 2022 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_data_class.freezed.dart';

const AppDataClass appDataClass = AppDataClass();

@freezed
class AppDataClass with _$AppDataClass {
  const factory AppDataClass({
    @Default('DesignerApp') String appTitle,
    
  }) = _DataClass;
}
