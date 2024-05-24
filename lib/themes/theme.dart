import "package:flutter/material.dart";

class MaterialTheme {
  final TextTheme textTheme;

  const MaterialTheme(this.textTheme);

  static MaterialScheme lightScheme() {
    return const MaterialScheme(
      brightness: Brightness.light,
      primary: Color(4283260050),
      surfaceTint: Color(4283260050),
      onPrimary: Color(4294967295),
      primaryContainer: Color(4292665855),
      onPrimaryContainer: Color(4278457931),
      secondary: Color(4278217067),
      onSecondary: Color(4294967295),
      secondaryContainer: Color(4288475634),
      onSecondaryContainer: Color(4278198304),
      tertiary: Color(4285879407),
      onTertiary: Color(4294967295),
      tertiaryContainer: Color(4294957045),
      onTertiaryContainer: Color(4281078313),
      error: Color(4287646275),
      onError: Color(4294967295),
      errorContainer: Color(4294957781),
      onErrorContainer: Color(4282059015),
      background: Color(4294637823),
      onBackground: Color(4279900961),
      surface: Color(4294637823),
      onSurface: Color(4279900961),
      surfaceVariant: Color(4293059052),
      onSurfaceVariant: Color(4282730063),
      outline: Color(4285953664),
      outlineVariant: Color(4291216848),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4281282614),
      inverseOnSurface: Color(4294045943),
      inversePrimary: Color(4290233599),
      primaryFixed: Color(4292665855),
      onPrimaryFixed: Color(4278457931),
      primaryFixedDim: Color(4290233599),
      onPrimaryFixedVariant: Color(4281681017),
      secondaryFixed: Color(4288475634),
      onSecondaryFixed: Color(4278198304),
      secondaryFixedDim: Color(4286633174),
      onSecondaryFixedVariant: Color(4278210385),
      tertiaryFixed: Color(4294957045),
      onTertiaryFixed: Color(4281078313),
      tertiaryFixedDim: Color(4293114586),
      onTertiaryFixedVariant: Color(4284235095),
      surfaceDim: Color(4292598240),
      surfaceBright: Color(4294637823),
      surfaceContainerLowest: Color(4294967295),
      surfaceContainerLow: Color(4294243066),
      surfaceContainer: Color(4293914100),
      surfaceContainerHigh: Color(4293519343),
      surfaceContainerHighest: Color(4293124585),
    );
  }

  ThemeData light() {
    return theme(lightScheme().toColorScheme());
  }

  static MaterialScheme lightMediumContrastScheme() {
    return const MaterialScheme(
      brightness: Brightness.light,
      primary: Color(4281417844),
      surfaceTint: Color(4283260050),
      onPrimary: Color(4294967295),
      primaryContainer: Color(4284773034),
      onPrimaryContainer: Color(4294967295),
      secondary: Color(4278209356),
      onSecondary: Color(4294967295),
      secondaryContainer: Color(4280516995),
      onSecondaryContainer: Color(4294967295),
      tertiary: Color(4283906386),
      onTertiary: Color(4294967295),
      tertiaryContainer: Color(4287457926),
      onTertiaryContainer: Color(4294967295),
      error: Color(4285411369),
      onError: Color(4294967295),
      errorContainer: Color(4289355863),
      onErrorContainer: Color(4294967295),
      background: Color(4294637823),
      onBackground: Color(4279900961),
      surface: Color(4294637823),
      onSurface: Color(4279900961),
      surfaceVariant: Color(4293059052),
      onSurfaceVariant: Color(4282466891),
      outline: Color(4284374631),
      outlineVariant: Color(4286151299),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4281282614),
      inverseOnSurface: Color(4294045943),
      inversePrimary: Color(4290233599),
      primaryFixed: Color(4284773034),
      onPrimaryFixed: Color(4294967295),
      primaryFixedDim: Color(4283128207),
      onPrimaryFixedVariant: Color(4294967295),
      secondaryFixed: Color(4280516995),
      onSecondaryFixed: Color(4294967295),
      secondaryFixedDim: Color(4278216553),
      onSecondaryFixedVariant: Color(4294967295),
      tertiaryFixed: Color(4287457926),
      onTertiaryFixed: Color(4294967295),
      tertiaryFixedDim: Color(4285682285),
      onTertiaryFixedVariant: Color(4294967295),
      surfaceDim: Color(4292598240),
      surfaceBright: Color(4294637823),
      surfaceContainerLowest: Color(4294967295),
      surfaceContainerLow: Color(4294243066),
      surfaceContainer: Color(4293914100),
      surfaceContainerHigh: Color(4293519343),
      surfaceContainerHighest: Color(4293124585),
    );
  }

  ThemeData lightMediumContrast() {
    return theme(lightMediumContrastScheme().toColorScheme());
  }

  static MaterialScheme lightHighContrastScheme() {
    return const MaterialScheme(
      brightness: Brightness.light,
      primary: Color(4279049810),
      surfaceTint: Color(4283260050),
      onPrimary: Color(4294967295),
      primaryContainer: Color(4281417844),
      onPrimaryContainer: Color(4294967295),
      secondary: Color(4278200104),
      onSecondary: Color(4294967295),
      secondaryContainer: Color(4278209356),
      onSecondaryContainer: Color(4294967295),
      tertiary: Color(4281538864),
      onTertiary: Color(4294967295),
      tertiaryContainer: Color(4283906386),
      onTertiaryContainer: Color(4294967295),
      error: Color(4282650636),
      onError: Color(4294967295),
      errorContainer: Color(4285411369),
      onErrorContainer: Color(4294967295),
      background: Color(4294637823),
      onBackground: Color(4279900961),
      surface: Color(4294637823),
      onSurface: Color(4278190080),
      surfaceVariant: Color(4293059052),
      onSurfaceVariant: Color(4280427307),
      outline: Color(4282466891),
      outlineVariant: Color(4282466891),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4281282614),
      inverseOnSurface: Color(4294967295),
      inversePrimary: Color(4293520383),
      primaryFixed: Color(4281417844),
      onPrimaryFixed: Color(4294967295),
      primaryFixedDim: Color(4279904605),
      onPrimaryFixedVariant: Color(4294967295),
      secondaryFixed: Color(4278209356),
      onSecondaryFixed: Color(4294967295),
      secondaryFixedDim: Color(4278203188),
      onSecondaryFixedVariant: Color(4294967295),
      tertiaryFixed: Color(4283906386),
      onTertiaryFixed: Color(4294967295),
      tertiaryFixedDim: Color(4282327867),
      onTertiaryFixedVariant: Color(4294967295),
      surfaceDim: Color(4292598240),
      surfaceBright: Color(4294637823),
      surfaceContainerLowest: Color(4294967295),
      surfaceContainerLow: Color(4294243066),
      surfaceContainer: Color(4293914100),
      surfaceContainerHigh: Color(4293519343),
      surfaceContainerHighest: Color(4293124585),
    );
  }

  ThemeData lightHighContrast() {
    return theme(lightHighContrastScheme().toColorScheme());
  }

  static MaterialScheme darkScheme() {
    return const MaterialScheme(
      brightness: Brightness.dark,
      primary: Color(4290233599),
      surfaceTint: Color(4290233599),
      onPrimary: Color(4280167777),
      primaryContainer: Color(4281681017),
      onPrimaryContainer: Color(4292665855),
      secondary: Color(4286633174),
      onSecondary: Color(4278204216),
      secondaryContainer: Color(4278210385),
      onSecondaryContainer: Color(4288475634),
      tertiary: Color(4293114586),
      onTertiary: Color(4282591039),
      tertiaryContainer: Color(4284235095),
      onTertiaryContainer: Color(4294957045),
      error: Color(4294948011),
      onError: Color(4283833881),
      errorContainer: Color(4285740077),
      onErrorContainer: Color(4294957781),
      background: Color(4279374616),
      onBackground: Color(4293124585),
      surface: Color(4279374616),
      onSurface: Color(4293124585),
      surfaceVariant: Color(4282730063),
      onSurfaceVariant: Color(4291216848),
      outline: Color(4287664282),
      outlineVariant: Color(4282730063),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4293124585),
      inverseOnSurface: Color(4281282614),
      inversePrimary: Color(4283260050),
      primaryFixed: Color(4292665855),
      onPrimaryFixed: Color(4278457931),
      primaryFixedDim: Color(4290233599),
      onPrimaryFixedVariant: Color(4281681017),
      secondaryFixed: Color(4288475634),
      onSecondaryFixed: Color(4278198304),
      secondaryFixedDim: Color(4286633174),
      onSecondaryFixedVariant: Color(4278210385),
      tertiaryFixed: Color(4294957045),
      onTertiaryFixed: Color(4281078313),
      tertiaryFixedDim: Color(4293114586),
      onTertiaryFixedVariant: Color(4284235095),
      surfaceDim: Color(4279374616),
      surfaceBright: Color(4281874751),
      surfaceContainerLowest: Color(4279045651),
      surfaceContainerLow: Color(4279900961),
      surfaceContainer: Color(4280164133),
      surfaceContainerHigh: Color(4280887855),
      surfaceContainerHighest: Color(4281611322),
    );
  }

  ThemeData dark() {
    return theme(darkScheme().toColorScheme());
  }

  static MaterialScheme darkMediumContrastScheme() {
    return const MaterialScheme(
      brightness: Brightness.dark,
      primary: Color(4290562303),
      surfaceTint: Color(4290233599),
      onPrimary: Color(4278194501),
      primaryContainer: Color(4286615240),
      onPrimaryContainer: Color(4278190080),
      secondary: Color(4286896602),
      onSecondary: Color(4278196763),
      secondaryContainer: Color(4282883487),
      onSecondaryContainer: Color(4278190080),
      tertiary: Color(4293443294),
      onTertiary: Color(4280683812),
      tertiaryContainer: Color(4289430947),
      onTertiaryContainer: Color(4278190080),
      error: Color(4294949553),
      onError: Color(4281533443),
      errorContainer: Color(4291591026),
      onErrorContainer: Color(4278190080),
      background: Color(4279374616),
      onBackground: Color(4293124585),
      surface: Color(4279374616),
      onSurface: Color(4294769407),
      surfaceVariant: Color(4282730063),
      onSurfaceVariant: Color(4291480276),
      outline: Color(4288848556),
      outlineVariant: Color(4286743180),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4293124585),
      inverseOnSurface: Color(4280887855),
      inversePrimary: Color(4281812346),
      primaryFixed: Color(4292665855),
      onPrimaryFixed: Color(4278193209),
      primaryFixedDim: Color(4290233599),
      onPrimaryFixedVariant: Color(4280562535),
      secondaryFixed: Color(4288475634),
      onSecondaryFixed: Color(4278195221),
      secondaryFixedDim: Color(4286633174),
      onSecondaryFixedVariant: Color(4278205758),
      tertiaryFixed: Color(4294957045),
      onTertiaryFixed: Color(4280289054),
      tertiaryFixedDim: Color(4293114586),
      onTertiaryFixedVariant: Color(4282985541),
      surfaceDim: Color(4279374616),
      surfaceBright: Color(4281874751),
      surfaceContainerLowest: Color(4279045651),
      surfaceContainerLow: Color(4279900961),
      surfaceContainer: Color(4280164133),
      surfaceContainerHigh: Color(4280887855),
      surfaceContainerHighest: Color(4281611322),
    );
  }

  ThemeData darkMediumContrast() {
    return theme(darkMediumContrastScheme().toColorScheme());
  }

  static MaterialScheme darkHighContrastScheme() {
    return const MaterialScheme(
      brightness: Brightness.dark,
      primary: Color(4294769407),
      surfaceTint: Color(4290233599),
      onPrimary: Color(4278190080),
      primaryContainer: Color(4290562303),
      onPrimaryContainer: Color(4278190080),
      secondary: Color(4293525503),
      onSecondary: Color(4278190080),
      secondaryContainer: Color(4286896602),
      onSecondaryContainer: Color(4278190080),
      tertiary: Color(4294965754),
      onTertiary: Color(4278190080),
      tertiaryContainer: Color(4293443294),
      onTertiaryContainer: Color(4278190080),
      error: Color(4294965753),
      onError: Color(4278190080),
      errorContainer: Color(4294949553),
      onErrorContainer: Color(4278190080),
      background: Color(4279374616),
      onBackground: Color(4293124585),
      surface: Color(4279374616),
      onSurface: Color(4294967295),
      surfaceVariant: Color(4282730063),
      onSurfaceVariant: Color(4294769407),
      outline: Color(4291480276),
      outlineVariant: Color(4291480276),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4293124585),
      inverseOnSurface: Color(4278190080),
      inversePrimary: Color(4279707226),
      primaryFixed: Color(4293060095),
      onPrimaryFixed: Color(4278190080),
      primaryFixedDim: Color(4290562303),
      onPrimaryFixedVariant: Color(4278194501),
      secondaryFixed: Color(4288738807),
      onSecondaryFixed: Color(4278190080),
      secondaryFixedDim: Color(4286896602),
      onSecondaryFixedVariant: Color(4278196763),
      tertiaryFixed: Color(4294958582),
      onTertiaryFixed: Color(4278190080),
      tertiaryFixedDim: Color(4293443294),
      onTertiaryFixedVariant: Color(4280683812),
      surfaceDim: Color(4279374616),
      surfaceBright: Color(4281874751),
      surfaceContainerLowest: Color(4279045651),
      surfaceContainerLow: Color(4279900961),
      surfaceContainer: Color(4280164133),
      surfaceContainerHigh: Color(4280887855),
      surfaceContainerHighest: Color(4281611322),
    );
  }

  ThemeData darkHighContrast() {
    return theme(darkHighContrastScheme().toColorScheme());
  }


  ThemeData theme(ColorScheme colorScheme) => ThemeData(
     useMaterial3: true,
     brightness: colorScheme.brightness,
     colorScheme: colorScheme,
     textTheme: textTheme.apply(
       bodyColor: colorScheme.onSurface,
       displayColor: colorScheme.onSurface,
     ),
     scaffoldBackgroundColor: colorScheme.background,
     canvasColor: colorScheme.surface,
  );


  List<ExtendedColor> get extendedColors => [
  ];
}

class MaterialScheme {
  const MaterialScheme({
    required this.brightness,
    required this.primary, 
    required this.surfaceTint, 
    required this.onPrimary, 
    required this.primaryContainer, 
    required this.onPrimaryContainer, 
    required this.secondary, 
    required this.onSecondary, 
    required this.secondaryContainer, 
    required this.onSecondaryContainer, 
    required this.tertiary, 
    required this.onTertiary, 
    required this.tertiaryContainer, 
    required this.onTertiaryContainer, 
    required this.error, 
    required this.onError, 
    required this.errorContainer, 
    required this.onErrorContainer, 
    required this.background, 
    required this.onBackground, 
    required this.surface, 
    required this.onSurface, 
    required this.surfaceVariant, 
    required this.onSurfaceVariant, 
    required this.outline, 
    required this.outlineVariant, 
    required this.shadow, 
    required this.scrim, 
    required this.inverseSurface, 
    required this.inverseOnSurface, 
    required this.inversePrimary, 
    required this.primaryFixed, 
    required this.onPrimaryFixed, 
    required this.primaryFixedDim, 
    required this.onPrimaryFixedVariant, 
    required this.secondaryFixed, 
    required this.onSecondaryFixed, 
    required this.secondaryFixedDim, 
    required this.onSecondaryFixedVariant, 
    required this.tertiaryFixed, 
    required this.onTertiaryFixed, 
    required this.tertiaryFixedDim, 
    required this.onTertiaryFixedVariant, 
    required this.surfaceDim, 
    required this.surfaceBright, 
    required this.surfaceContainerLowest, 
    required this.surfaceContainerLow, 
    required this.surfaceContainer, 
    required this.surfaceContainerHigh, 
    required this.surfaceContainerHighest, 
  });

  final Brightness brightness;
  final Color primary;
  final Color surfaceTint;
  final Color onPrimary;
  final Color primaryContainer;
  final Color onPrimaryContainer;
  final Color secondary;
  final Color onSecondary;
  final Color secondaryContainer;
  final Color onSecondaryContainer;
  final Color tertiary;
  final Color onTertiary;
  final Color tertiaryContainer;
  final Color onTertiaryContainer;
  final Color error;
  final Color onError;
  final Color errorContainer;
  final Color onErrorContainer;
  final Color background;
  final Color onBackground;
  final Color surface;
  final Color onSurface;
  final Color surfaceVariant;
  final Color onSurfaceVariant;
  final Color outline;
  final Color outlineVariant;
  final Color shadow;
  final Color scrim;
  final Color inverseSurface;
  final Color inverseOnSurface;
  final Color inversePrimary;
  final Color primaryFixed;
  final Color onPrimaryFixed;
  final Color primaryFixedDim;
  final Color onPrimaryFixedVariant;
  final Color secondaryFixed;
  final Color onSecondaryFixed;
  final Color secondaryFixedDim;
  final Color onSecondaryFixedVariant;
  final Color tertiaryFixed;
  final Color onTertiaryFixed;
  final Color tertiaryFixedDim;
  final Color onTertiaryFixedVariant;
  final Color surfaceDim;
  final Color surfaceBright;
  final Color surfaceContainerLowest;
  final Color surfaceContainerLow;
  final Color surfaceContainer;
  final Color surfaceContainerHigh;
  final Color surfaceContainerHighest;
}

extension MaterialSchemeUtils on MaterialScheme {
  ColorScheme toColorScheme() {
    return ColorScheme(
      brightness: brightness,
      primary: primary,
      onPrimary: onPrimary,
      primaryContainer: primaryContainer,
      onPrimaryContainer: onPrimaryContainer,
      secondary: secondary,
      onSecondary: onSecondary,
      secondaryContainer: secondaryContainer,
      onSecondaryContainer: onSecondaryContainer,
      tertiary: tertiary,
      onTertiary: onTertiary,
      tertiaryContainer: tertiaryContainer,
      onTertiaryContainer: onTertiaryContainer,
      error: error,
      onError: onError,
      errorContainer: errorContainer,
      onErrorContainer: onErrorContainer,
      background: background,
      onBackground: onBackground,
      surface: surface,
      onSurface: onSurface,
      surfaceVariant: surfaceVariant,
      onSurfaceVariant: onSurfaceVariant,
      outline: outline,
      outlineVariant: outlineVariant,
      shadow: shadow,
      scrim: scrim,
      inverseSurface: inverseSurface,
      onInverseSurface: inverseOnSurface,
      inversePrimary: inversePrimary,
    );
  }
}

class ExtendedColor {
  final Color seed, value;
  final ColorFamily light;
  final ColorFamily lightHighContrast;
  final ColorFamily lightMediumContrast;
  final ColorFamily dark;
  final ColorFamily darkHighContrast;
  final ColorFamily darkMediumContrast;

  const ExtendedColor({
    required this.seed,
    required this.value,
    required this.light,
    required this.lightHighContrast,
    required this.lightMediumContrast,
    required this.dark,
    required this.darkHighContrast,
    required this.darkMediumContrast,
  });
}

class ColorFamily {
  const ColorFamily({
    required this.color,
    required this.onColor,
    required this.colorContainer,
    required this.onColorContainer,
  });

  final Color color;
  final Color onColor;
  final Color colorContainer;
  final Color onColorContainer;
}
