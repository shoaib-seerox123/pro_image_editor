// Flutter imports:
import 'package:flutter/widgets.dart';

// Project imports:
import 'package:pro_image_editor/models/editor_callbacks/standalone_editor_callbacks.dart';

/// A class representing callbacks for the adjustment editor.
class AdjustEditorCallbacks extends StandaloneEditorCallbacks {
  /// Creates a new instance of [AdjustEditorCallbacks].
  const AdjustEditorCallbacks({
    this.onBrightnessChange,
    this.onContrastChange,
    this.onTemperatureChange,
    this.onBrightnessChangeEnd,
    this.onContrastChangeEnd,
    this.onTemperatureChangeEnd,
    super.onInit,
    super.onAfterViewInit,
    super.onUpdateUI,
    super.onDone,
    super.onCloseEditor,
  });

  /// A callback function that is triggered when the brightness factor changes.
  final ValueChanged<double>? onBrightnessChange;

  /// A callback function that is triggered when the contrast factor changes.
  final ValueChanged<double>? onContrastChange;

  /// A callback function that is triggered when the temperature factor changes.
  final ValueChanged<double>? onTemperatureChange;

  /// A callback function that is triggered when the brightness factor change
  /// ends.
  final ValueChanged<double>? onBrightnessChangeEnd;

  /// A callback function that is triggered when the contrast factor change
  /// ends.
  final ValueChanged<double>? onContrastChangeEnd;

  /// A callback function that is triggered when the temperature factor change
  /// ends.
  final ValueChanged<double>? onTemperatureChangeEnd;

  /// Handles the brightness factor change event.
  void handleBrightnessChange(double newBrightness) {
    onBrightnessChange?.call(newBrightness);
    handleUpdateUI();
  }

  /// Handles the contrast factor change event.
  void handleContrastChange(double newContrast) {
    onContrastChange?.call(newContrast);
    handleUpdateUI();
  }

  /// Handles the temperature factor change event.
  void handleTemperatureChange(double newTemperature) {
    onTemperatureChange?.call(newTemperature);
    handleUpdateUI();
  }

  /// Handles the brightness factor change end event.
  void handleBrightnessChangeEnd(double finalBrightness) {
    onBrightnessChangeEnd?.call(finalBrightness);
    handleUpdateUI();
  }

  /// Handles the contrast factor change end event.
  void handleContrastChangeEnd(double finalContrast) {
    onContrastChangeEnd?.call(finalContrast);
    handleUpdateUI();
  }

  /// Handles the temperature factor change end event.
  void handleTemperatureChangeEnd(double finalTemperature) {
    onTemperatureChangeEnd?.call(finalTemperature);
    handleUpdateUI();
  }
}
