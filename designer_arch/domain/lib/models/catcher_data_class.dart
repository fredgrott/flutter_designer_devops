// Copyright 2022 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:freezed_annotation/freezed_annotation.dart';

part 'catcher_data_class.freezed.dart';

const CatcherDataClass catcherDataClass = CatcherDataClass();

@freezed
class CatcherDataClass with _$CatcherDataClass {
  const factory CatcherDataClass({
    @Default("emailAddyOne@email.com") String emailAddyOne,
    @Default("emailAddyTwo@email.com") String emailAddyTwo,
    @Default("ErrorReport") String emailTitle,
    @Default("ErrorReport") String emailHeader,
    @Default(true) bool reportModeShowStackTrace,
    @Default(true) bool consoleHandlerEnableAppParams,
    @Default(true) bool consoleHandlerEnableDeviceParams,
    @Default(true) bool consoleHandlerEnableCustomParams,
    @Default(true) bool consoleHandlerEnableStacktrace,
    @Default(true) bool dialogReportModeEnableDeviceParams,
    @Default(true) bool dialogReportModeEnableStacktrace,
    @Default(true) bool dialogReportModeEnableCustomParams,
    @Default(true) bool dialogReportModeEnableAppParams,
    @Default(true) bool dialogReportModeSendHtml,
    @Default(true) bool dialogReportModePrintLogs,
  }) = _CatcherDataClass;
}
