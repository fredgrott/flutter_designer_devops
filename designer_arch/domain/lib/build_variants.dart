// Copyright 2022 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

enum BuildVariantsEnv {
  dev,
  production,
  stagging,
  design,
  devicepreview,
}

late bool isItDev = false;

late bool isItProduction = false;

late bool isItStagging = false;

late bool isItDesign = false;

late bool isItDevicePreview = false;

class Constants {
  late Map<String, dynamic> _config;

  void setEnvironment(BuildVariantsEnv env) {
    switch (env) {
      case BuildVariantsEnv.dev:
        _config = _Config.debugConstants;
        isItDev = true;
        break;
      case BuildVariantsEnv.stagging:
        _config = _Config.qaConstants;
        isItStagging = true;
        break;
      case BuildVariantsEnv.production:
        _config = _Config.prodConstants;
        isItProduction = true;
        break;
      case BuildVariantsEnv.devicepreview:
        _config = _Config.previewConstants;
        isItDevicePreview = true;
        break;
      case BuildVariantsEnv.design:
        _config = _Config.designConstants;
        isItDesign = true;
        break;
    }
  }

  dynamic get whereAmI {
    return _config[_Config.whereAmI];
  }
}

class _Config {
  static final Map<String, dynamic> debugConstants = <String, dynamic>{
    whereAmI: "debug",
  };

  static final Map<String, dynamic> prodConstants = <String, dynamic>{
    whereAmI: "prod",
  };

  static final Map<String, dynamic> qaConstants = <String, dynamic>{
    whereAmI: "stagging",
  };

  static final Map<String, dynamic> previewConstants = <String, dynamic>{
    whereAmI: "preview",
  };

  static final Map<String, dynamic> designConstants = <String, dynamic>{
    whereAmI: "design",
  };

  // our env variables
  static const whereAmI = "where_am_i";
}
