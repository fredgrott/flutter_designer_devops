// Copyright 2022 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:catcher/catcher.dart';


import 'package:domain/logging.dart';
import 'package:domain/models/catcher_data_class.dart';


final String catcherEmailAddyOne = catcherDataClass.emailAddyOne;

final String catcherEmailAddyTwo = catcherDataClass.emailAddyTwo;

final ReportMode reportMode = PageReportMode(showStackTrace: catcherDataClass.reportModeShowStackTrace);

final CatcherOptions debugOptions = CatcherOptions(
  reportMode,
  [
    ConsoleHandler(
      enableApplicationParameters: catcherDataClass.consoleHandlerEnableAppParams,
      enableDeviceParameters: catcherDataClass.consoleHandlerEnableDeviceParams,
      enableCustomParameters: catcherDataClass.consoleHandlerEnableCustomParams,
      enableStackTrace: catcherDataClass.consoleHandlerEnableStacktrace,
    ),
    // Requires the SentryClient import, put this in pubspec sentry: ^5.1.0
    //SentryHandler(
    //SentryClient(SentryOptions(dsn: 'YOUR DSN HERE')),
    //printLogs: true,
    //),
  ],
);

final CatcherOptions releaseOptions = CatcherOptions(
  DialogReportMode(),
  [
    EmailManualHandler(
      [
        catcherEmailAddyOne,
        catcherEmailAddyTwo,
      ],
      enableDeviceParameters: catcherDataClass.dialogReportModeEnableDeviceParams,
      enableStackTrace: catcherDataClass.dialogReportModeEnableStacktrace,
      enableCustomParameters: catcherDataClass.dialogReportModeEnableCustomParams,
      enableApplicationParameters: catcherDataClass.dialogReportModeEnableAppParams,
      sendHtml: catcherDataClass.dialogReportModeSendHtml,
      emailTitle: catcherDataClass.emailTitle,
      emailHeader: catcherDataClass.emailHeader,
      printLogs: catcherDataClass.dialogReportModePrintLogs,
    ),
  ],
);
