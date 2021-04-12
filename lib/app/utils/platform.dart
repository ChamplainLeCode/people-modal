import 'dart:io';

import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:flutter/material.dart' show MediaQuery;

class PlatformControl {
  static bool get isDesktop => Platform.isFuchsia || Platform.isLinux || Platform.isMacOS || Platform.isWindows;
  static bool get isMobile => Platform.isAndroid || Platform.isIOS;
  static bool get isWeb => kIsWeb;
  static bool isMinSize(context) => MediaQuery.of(context).size.width < 660;
}
