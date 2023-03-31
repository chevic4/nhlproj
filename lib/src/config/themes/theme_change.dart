library theme_custom;

import 'package:flutter/material.dart';

part 'theme_dark.dart';
part 'theme_light.dart';

abstract class ThemeDataChange {
  static ThemeData get dark {
    return _darkTheme;
  }

  static ThemeData get light {
    return _lightTheme;
  }
}
