import 'package:flutter/material.dart';

extension BuildContextExtensions on BuildContext {
  ThemeData get theme => Theme.of(this);
  TextTheme get textTheme => theme.textTheme;
  ScaffoldState get scaffold => Scaffold.of(this);
  ColorScheme get colorScheme => theme.colorScheme;
  NavigatorState get navigator => Navigator.of(this);
  FocusScopeNode get focusScope => FocusScope.of(this);
  MediaQueryData get mediaQuery => MediaQuery.of(this);
  DefaultTextStyle get defaultTextStyle => DefaultTextStyle.of(this);
  ScaffoldMessengerState get scaffoldMessenger => ScaffoldMessenger.of(this);
}

extension WidgetStateHelpers on Iterable<WidgetState> {
  bool get isError => contains(WidgetState.error);
  bool get isPressed => contains(WidgetState.pressed);
  bool get isFocused => contains(WidgetState.focused);
  bool get isHovered => contains(WidgetState.hovered);
  bool get isDragged => contains(WidgetState.dragged);
  bool get isDisabled => contains(WidgetState.disabled);
  bool get isSelected => contains(WidgetState.selected);
  bool get isScrolledUnder => contains(WidgetState.scrolledUnder);
}
