/// Configuration options for an adjustment editor.
///
/// `AdjustmentEditorConfigs` allows you to define settings for an adjustment editor,
/// including brightness, contrast, and saturation levels.
///
/// Example usage:
/// ```dart
/// AdjustmentEditorConfigs(
///   brightness: 1.0,
///   contrast: 1.0,
///   saturation: 1.0,
/// );
/// ```
class AdjustmentEditorConfigs {
  /// Creates an instance of AdjustmentEditorConfigs with optional settings.
  ///
  /// By default, brightness, contrast, and saturation are set to 1.0 (no adjustment).
  const AdjustmentEditorConfigs({
    this.brightness = 1.0,
    this.contrast = 1.0,
    this.saturation = 1.0,
  })  : assert(brightness >= 0, 'brightness must be non-negative'),
        assert(contrast >= 0, 'contrast must be non-negative'),
        assert(saturation >= 0, 'saturation must be non-negative');

  /// The brightness adjustment value (default is 1.0).
  final double brightness;

  /// The contrast adjustment value (default is 1.0).
  final double contrast;

  /// The saturation adjustment value (default is 1.0).
  final double saturation;

  /// Creates a copy of this `AdjustmentEditorConfigs` object with the given fields
  /// replaced with new values.
  ///
  /// The [copyWith] method allows you to create a new instance of
  /// [AdjustmentEditorConfigs] with some properties updated while keeping the
  /// others unchanged.
  AdjustmentEditorConfigs copyWith({
    double? brightness,
    double? contrast,
    double? saturation,
  }) {
    return AdjustmentEditorConfigs(
      brightness: brightness ?? this.brightness,
      contrast: contrast ?? this.contrast,
      saturation: saturation ?? this.saturation,
    );
  }
}
