import 'package:flutter_test/flutter_test.dart';
import 'package:flutter/material.dart';
import 'package:shopping_list_app/themes/theme.dart';

void main() {
  group('MaterialSchemeUtils', () {
    test('toColorScheme should return correct ColorScheme', () {
      final materialScheme = MaterialScheme(
        brightness: Brightness.light,
        primary: Colors.blue,
        surfaceTint: Colors.blue,
        onPrimary: Colors.white,
        primaryContainer: Colors.blue,
        onPrimaryContainer: Colors.white,
        secondary: Colors.amber,
        onSecondary: Colors.black,
        secondaryContainer: Colors.amber,
        onSecondaryContainer: Colors.black,
        tertiary: Colors.green,
        onTertiary: Colors.black,
        tertiaryContainer: Colors.green,
        onTertiaryContainer: Colors.black,
        error: Colors.red,
        onError: Colors.white,
        errorContainer: Colors.red,
        onErrorContainer: Colors.white,
        background: Colors.white,
        onBackground: Colors.black,
        surface: Colors.white,
        onSurface: Colors.black,
        surfaceVariant: Colors.white,
        onSurfaceVariant: Colors.black,
        outline: Colors.black,
        outlineVariant: Colors.black,
        shadow: Colors.black,
        scrim: Colors.black,
        inverseSurface: Colors.black,
        inverseOnSurface: Colors.white,
        inversePrimary: Colors.black,
        primaryFixed: Colors.blue,
        onPrimaryFixed: Colors.white,
        primaryFixedDim: Colors.blue,
        onPrimaryFixedVariant: Colors.white,
        secondaryFixed: Colors.amber,
        onSecondaryFixed: Colors.black,
        secondaryFixedDim: Colors.amber,
        onSecondaryFixedVariant: Colors.black,
        tertiaryFixed: Colors.green,
        onTertiaryFixed: Colors.black,
        tertiaryFixedDim: Colors.green,
        onTertiaryFixedVariant: Colors.black,
        surfaceDim: Colors.white,
        surfaceBright: Colors.white,
        surfaceContainerLowest: Colors.white,
        surfaceContainerLow: Colors.white,
        surfaceContainer: Colors.white,
        surfaceContainerHigh: Colors.white,
        surfaceContainerHighest: Colors.white,
      );

      final colorScheme = materialScheme.toColorScheme();

      expect(colorScheme.brightness, Brightness.light);
      expect(colorScheme.primary, Colors.blue);
      expect(colorScheme.onPrimary, Colors.white);
      // Add all other assertions
    });
  });
}