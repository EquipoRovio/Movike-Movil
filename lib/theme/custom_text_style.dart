import 'package:flutter/material.dart';
import '../core/app_export.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Amaranth text style
  static get amaranthWhiteA70001 => TextStyle(
        color: appTheme.whiteA70001,
        fontSize: 96.fSize,
        fontWeight: FontWeight.w700,
      ).amaranth;
  // Body text style
  static get bodyLargeSalsaWhiteA70001 =>
      theme.textTheme.bodyLarge!.salsa.copyWith(
        color: appTheme.whiteA70001,
      );
  // Cousine text style
  static get cousineWhiteA70001 => TextStyle(
        color: appTheme.whiteA70001,
        fontSize: 96.fSize,
        fontWeight: FontWeight.w700,
      ).cousine;
  // Crete text style
  static get creteRoundWhiteA70001 => TextStyle(
        color: appTheme.whiteA70001,
        fontSize: 200.fSize,
        fontWeight: FontWeight.w400,
      ).creteRound;
  // Display text style
  static get displayMediumCousine =>
      theme.textTheme.displayMedium!.cousine.copyWith(
        fontSize: 45.fSize,
      );
  static get displayMediumCousineAmber300 =>
      theme.textTheme.displayMedium!.cousine.copyWith(
        color: appTheme.amber300,
        fontSize: 40.fSize,
      );
  static get displayMediumCousineAmber300Bold =>
      theme.textTheme.displayMedium!.cousine.copyWith(
        color: appTheme.amber300,
        fontSize: 40.fSize,
        fontWeight: FontWeight.w700,
      );
  static get displayMediumCousineAmber300_1 =>
      theme.textTheme.displayMedium!.cousine.copyWith(
        color: appTheme.amber300,
      );
  static get displayMediumCousineBlack900 =>
      theme.textTheme.displayMedium!.cousine.copyWith(
        color: appTheme.black900,
        fontSize: 45.fSize,
        fontWeight: FontWeight.w700,
      );
  static get displayMediumCousineBlack900Bold =>
      theme.textTheme.displayMedium!.cousine.copyWith(
        color: appTheme.black900,
        fontSize: 40.fSize,
        fontWeight: FontWeight.w700,
      );
  static get displayMediumCousineBlack900Bold_1 =>
      theme.textTheme.displayMedium!.cousine.copyWith(
        color: appTheme.black900,
        fontWeight: FontWeight.w700,
      );
  static get displayMediumCousineBlack900_1 =>
      theme.textTheme.displayMedium!.cousine.copyWith(
        color: appTheme.black900,
      );
  static get displayMediumCousineRed800 =>
      theme.textTheme.displayMedium!.cousine.copyWith(
        color: appTheme.red800,
        fontWeight: FontWeight.w700,
      );
  static get displaySmallCousineBlack900 =>
      theme.textTheme.displaySmall!.cousine.copyWith(
        color: appTheme.black900,
      );
  // Headline text style
  static get headlineLargeBlack900 => theme.textTheme.headlineLarge!.copyWith(
        color: appTheme.black900,
      );
  static get headlineLargeCousine => theme.textTheme.headlineLarge!.cousine;
  static get headlineLargeCousineRegular =>
      theme.textTheme.headlineLarge!.cousine.copyWith(
        fontWeight: FontWeight.w400,
      );
  static get headlineLargeCousine_1 => theme.textTheme.headlineLarge!.cousine;
  static get headlineSmallAmaranthBlack900 =>
      theme.textTheme.headlineSmall!.amaranth.copyWith(
        color: appTheme.black900,
        fontSize: 24.fSize,
        fontWeight: FontWeight.w700,
      );
  static get headlineSmallAmaranthGray100 =>
      theme.textTheme.headlineSmall!.amaranth.copyWith(
        color: appTheme.gray100,
        fontSize: 24.fSize,
        fontWeight: FontWeight.w700,
      );
  static get headlineSmallAmaranthGray200 =>
      theme.textTheme.headlineSmall!.amaranth.copyWith(
        color: appTheme.gray200,
        fontSize: 24.fSize,
        fontWeight: FontWeight.w700,
      );
  static get headlineSmallBold => theme.textTheme.headlineSmall!.copyWith(
        fontWeight: FontWeight.w700,
      );
  // Title text style
  static get titleLargeInter => theme.textTheme.titleLarge!.inter.copyWith(
        fontSize: 22.fSize,
      );
  static get titleLargeScadaWhiteA70001 =>
      theme.textTheme.titleLarge!.scada.copyWith(
        color: appTheme.whiteA70001,
      );
  static get titleLargeScadaWhiteA70001Bold =>
      theme.textTheme.titleLarge!.scada.copyWith(
        color: appTheme.whiteA70001,
        fontWeight: FontWeight.w700,
      );
  static get titleLargeWhiteA70001 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.whiteA70001,
        fontSize: 22.fSize,
      );
  static get titleLargeWhiteA70001_1 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.whiteA70001,
      );
  static get titleLargeYellow200 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.yellow200,
      );
}

extension on TextStyle {
  TextStyle get scada {
    return copyWith(
      fontFamily: 'Scada',
    );
  }

  TextStyle get cousine {
    return copyWith(
      fontFamily: 'Cousine',
    );
  }

  TextStyle get creteRound {
    return copyWith(
      fontFamily: 'Crete Round',
    );
  }

  TextStyle get inter {
    return copyWith(
      fontFamily: 'Inter',
    );
  }

  TextStyle get amaranth {
    return copyWith(
      fontFamily: 'Amaranth',
    );
  }

  TextStyle get salsa {
    return copyWith(
      fontFamily: 'Salsa',
    );
  }

  TextStyle get secularOne {
    return copyWith(
      fontFamily: 'Secular One',
    );
  }

  TextStyle get amiri {
    return copyWith(
      fontFamily: 'Amiri',
    );
  }
}
