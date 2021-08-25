import 'package:flutter/material.dart';

class QwikUCustomTheme {
  bool isDark;

  QwikUCustomTheme({required this.isDark});

  ThemeData get themeData {
    // Create a TextTheme and ColorScheme, that we can use to generate ThemeData
    TextTheme txtTheme =
        (isDark ? ThemeData.dark() : ThemeData.light()).textTheme;
    ColorScheme colorScheme = ColorScheme(
      // Decide how we want to apply our own custom theme, to the MaterialApp
      brightness: isDark ? Brightness.dark : Brightness.light,
      primary: qwikGrayLight.shade700,
      primaryVariant: qwikGrayLight.shade700,
      secondary: qwikGreenDark,
      secondaryVariant: qwikGreenLight,
      background: Color(0xFFffffff),
      surface: Color(0xFFffffff),
      onSurface: qwikGrayDark.shade700,
      onBackground: qwikGrayDark.shade700,
      onError: Colors.white,
      onPrimary: Colors.white,
      onSecondary: Colors.white,
      error: Colors.red.shade400,
    );

    // Now that we have ColorScheme and TextTheme, we can create the ThemeData
    ThemeData t = ThemeData.from(textTheme: txtTheme, colorScheme: colorScheme)
        // We can also add on some extra properties that ColorScheme seems to miss
        .copyWith(
      buttonColor: qwikGrayDark.shade100,
      highlightColor: qwikGrayLight.shade700,
      toggleableActiveColor: qwikGrayLight.shade700,
    );

    // Return the themeData which MaterialApp can now use
    return t;
  }
}
// ---------------- (start) QwikU Custom Theme: (start) ----------------

// COLORS:
// Qwik-GRAY----- DARK
const MaterialColor qwikGrayDark = const MaterialColor(
  0xFF434f59,
  const <int, Color>{
    50: const Color(0xFF3c4750),
    100: const Color(0xFF363f47),
    200: const Color(0xFF2f373e),
    300: const Color(0xFF282f35),
    400: const Color(0xFF22282d),
    500: const Color(0xFF1b2024),
    600: const Color(0xFF14181b),
    700: const Color(0xFF0d1012),
    800: const Color(0xFF070809),
    900: const Color(0xFF000000),
  },
);

// ------- 700 --------> base dark and light color <----- |

// Qwik-GRAY----- LIGHT
const MaterialColor qwikGrayLight = const MaterialColor(
  0xFF434f59,
  const <int, Color>{
    50: const Color(0xFF56616a),
    100: const Color(0xFF69727a),
    200: const Color(0xFF7b848b),
    300: const Color(0xFF8e959b),
    400: const Color(0xFFa1a7ac),
    500: const Color(0xFFb4b9bd),
    600: const Color(0xFFc7cacd),
    700: const Color(0xFFd9dcde),
    800: const Color(0xFFecedee),
    900: const Color(0xFFffffff),
  },
);

// Qwik-GREEN----- DARK
const MaterialColor qwikGreenDark = const MaterialColor(
  0xFF11A70C,
  const <int, Color>{
    50: const Color(0xFF0f960b),
    100: const Color(0xFF0e860a),
    200: const Color(0xFF0c7508),
    300: const Color(0xFF0a6407),
    400: const Color(0xFF095406),
    500: const Color(0xFF074305),
    600: const Color(0xFF053204),
    700: const Color(0xFF032102),
    800: const Color(0xFF021101),
    900: const Color(0xFF000000),
  },
);

// Qwik-GREEN----- LIGHT
const MaterialColor qwikGreenLight = const MaterialColor(
  0xFF11A70C,
  const <int, Color>{
    50: const Color(0xFF29b024),
    100: const Color(0xFF41b93d),
    200: const Color(0xFF58c155),
    300: const Color(0xFF70ca6d),
    400: const Color(0xFF88d386),
    500: const Color(0xFFa0dc9e),
    600: const Color(0xFFb8e5b6),
    700: const Color(0xFFcfedce),
    800: const Color(0xFFe7f6e7),
    900: const Color(0xFFffffff),
  },
);

// ------------------- (end) QwikU Custom Theme (end) ------------------
