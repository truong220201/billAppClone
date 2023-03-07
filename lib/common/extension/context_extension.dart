import 'package:flutter/material.dart';

extension ContextExtension on BuildContext {
  ThemeData get theme => Theme.of(this);

  ColorScheme get colorScheme => theme.colorScheme;

  TextTheme get textStyle => theme.textTheme;

  ScaffoldMessengerState get messenger => ScaffoldMessenger.of(this);
}
