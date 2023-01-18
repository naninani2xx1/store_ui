// ignore_for_file: public_member_AppTextStylepi_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

/// It's a class that returns a TextStyle object
class PrimaryFont {
  PrimaryFont.style();

  /// It's a default value for the fontSize and color.
  final double _fontSize = 12.0;

  /// It's a default value for the color.
  final Color _color = Colors.black87;

  /// It's a default value for the fontWeight.
  final FontWeight _fontWeight = FontWeight.w300;

  /// It returns a TextStyle object.
  ///
  /// Returns:
  ///   A TextStyle object.
  TextStyle small() {
    return GoogleFonts.roboto(
      fontSize: 12,
      color: _color,
      fontWeight: _fontWeight,
    );
  }

  TextStyle medium() {
    return GoogleFonts.roboto(
      fontSize: 16,
      color: _color,
      fontWeight: _fontWeight,
    );
  }

  TextStyle large() {
    return GoogleFonts.roboto(
      fontSize: 18,
      color: _color,
      fontWeight: _fontWeight,
    );
  }

  TextStyle big() {
    return GoogleFonts.roboto(
      fontSize: 20,
      color: _color,
      fontWeight: _fontWeight,
    );
  }

  /// `copyWith` is a function that returns a new `TextStyle` object with the same properties as the
  /// original `TextStyle` object, except for the properties that are passed in as arguments
  ///
  /// Args:
  ///   fontSize (double): The size of the font.
  ///   color (Color): The color of the text.
  ///   fontWeight (FontWeight): The font weight to use when drawing the text (e.g., bold).
  ///
  /// Returns:
  ///   A TextStyle object.
  TextStyle copyWith({
    double? fontSize,
    Color? color,
    FontWeight? fontWeight,
    double? height,
  }) {
    return GoogleFonts.roboto(
      fontSize: fontSize ?? _fontSize,
      color: color ?? _color,
      fontWeight: fontWeight ?? _fontWeight,
      height: height ?? 1.0,
    );
  }
}
