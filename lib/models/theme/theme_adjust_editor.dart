// Flutter imports:
import 'package:flutter/widgets.dart';

// Project imports:
import 'theme_shared_values.dart';

/// The `AdjustmentEditorTheme` class defines the theme for the adjustment
/// editor in the image editor.
/// It includes properties such as colors for the app bar and background.
///
/// Usage:
///
/// ```dart
/// AdjustmentEditorTheme adjustmentEditorTheme = AdjustmentEditorTheme(
///   appBarBackgroundColor: Colors.black,
///   appBarForegroundColor: Colors.white,
///   background: Colors.grey,
/// );
/// ```
///
/// Properties:
///
/// - `appBarBackgroundColor`: Background color of the app bar in the adjustment
/// editor.
///
/// - `appBarForegroundColor`: Foreground color (text and icons) of the app bar.
///
/// - `background`: Background color of the adjustment editor.
///
/// Example Usage:
///
/// ```dart
/// AdjustmentEditorTheme adjustmentEditorTheme = AdjustmentEditorTheme(
///   appBarBackgroundColor: Colors.black,
///   appBarForegroundColor: Colors.white,
///   background: Colors.grey,
/// );
///
/// Color appBarBackgroundColor = adjustmentEditorTheme.appBarBackgroundColor;
/// Color background = adjustmentEditorTheme.background;
/// // Access other theme properties...
/// ```
class AdjustmentEditorTheme {
  /// Creates an instance of the `AdjustmentEditorTheme` class with the
  /// specified
  /// theme properties.
  const AdjustmentEditorTheme({
    this.appBarBackgroundColor = imageEditorAppBarColor,
    this.appBarForegroundColor = const Color(0xFFE1E1E1),
    this.background = imageEditorBackgroundColor,
  });

  /// Background color of the app bar in the adjustment editor.
  final Color appBarBackgroundColor;

  /// Foreground color (text and icons) of the app bar.
  final Color appBarForegroundColor;

  /// Background color of the adjustment editor.
  final Color background;

  /// Creates a copy of this `AdjustmentEditorTheme` object with the given
  /// fields
  /// replaced with new values.
  ///
  /// The [copyWith] method allows you to create a new instance of
  /// [AdjustmentEditorTheme] with some properties updated while keeping the
  /// others unchanged.
  AdjustmentEditorTheme copyWith({
    Color? appBarBackgroundColor,
    Color? appBarForegroundColor,
    Color? background,
  }) {
    return AdjustmentEditorTheme(
      appBarBackgroundColor:
      appBarBackgroundColor ?? this.appBarBackgroundColor,
      appBarForegroundColor:
      appBarForegroundColor ?? this.appBarForegroundColor,
      background: background ?? this.background,
    );
  }
}
