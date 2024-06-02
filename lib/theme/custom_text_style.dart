import 'package:flutter/material.dart';

import 'package:thesisapp/core/utils/size_utils.dart';
import 'package:thesisapp/theme/theme_helper.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
// Body text style
  static get bodyLargeBlack900 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.black900.withOpacity(0.58),
      );
  static get bodyLargeGreen800b2 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.green800B2,
        fontSize: 18.fSize,
        fontWeight: FontWeight.w400,
      );
  static get bodyLargeOnPrimaryContainer => theme.textTheme.bodyLarge!.copyWith(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
        fontSize: 18.fSize,
        fontWeight: FontWeight.w400,
      );
  static get bodyLargeOnPrimaryContainer18 =>
      theme.textTheme.bodyLarge!.copyWith(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
        fontSize: 18.fSize,
      );
  static get bodyMediumBlack900 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.black900.withOpacity(0.58),
      );
  static get bodyMediumBlack90013 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.black900.withOpacity(0.58),
        fontSize: 13.fSize,
      );
  static get bodyMediumBlack900_1 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.black900.withOpacity(0.58),
      );
  static get bodyMediumInknutAntiquaBlack900 =>
      theme.textTheme.bodyMedium!.inknutAntiqua.copyWith(
        color: appTheme.black900.withOpacity(0.58),
        fontSize: 13.fSize,
        fontWeight: FontWeight.w300,
      );
  static get bodyMediumInknutAntiquaLightgreen900 =>
      theme.textTheme.bodyMedium!.inknutAntiqua.copyWith(
        color: appTheme.lightGreen900,
        fontSize: 13.fSize,
        fontWeight: FontWeight.w300,
      );

  static get bodyMediumInknutAntiquaLightgreen900WithUnderline =>
      theme.textTheme.bodyMedium!.inknutAntiqua.copyWith(
        color: appTheme.lightGreen900,
        fontSize: 13.fSize,
        fontWeight: FontWeight.w300,
        decoration: TextDecoration.underline,
      );

  static get bodyMediumInknutAntiquaOnPrimaryContainer =>
      theme.textTheme.bodyMedium!.inknutAntiqua.copyWith(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
      );
  static get bodyMediumInknutAntiquaOnSecondaryContainer =>
      theme.textTheme.bodyMedium!.inknutAntiqua.copyWith(
        color: theme.colorScheme.onSecondaryContainer,
        fontSize: 13.fSize,
        fontWeight: FontWeight.w300,
      );
  static get bodyMedium_1 => theme.textTheme.bodyMedium!;
  static get bodySmallInterBlack900 =>
      theme.textTheme.bodySmall!.inter.copyWith(
        color: appTheme.black900.withOpacity(0.8),
        fontSize: 12.fSize,
        fontWeight: FontWeight.w400,
      );
  static get bodySmallInterLightgreen600 =>
      theme.textTheme.bodySmall!.inter.copyWith(
        color: appTheme.lightGreen600,
        fontSize: 12.fSize,
        fontWeight: FontWeight.w400,
      );
// Headline text style
  static get headlineLarge32 => theme.textTheme.headlineLarge!.copyWith(
        fontSize: 32.fSize,
      );
  static get headlineLargeOnPrimaryContainer =>
      theme.textTheme.headlineLarge!.copyWith(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
        fontSize: 32.fSize,
      );
// Label text style
  static get labelLargeBlack900 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.black900,
        fontSize: 13.fSize,
        fontWeight: FontWeight.w700,
      );
  static get labelLargeBlack90013 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.black900.withOpacity(0.58),
        fontSize: 13.fSize,
      );
  static get labelLargeGray80001 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.gray80001,
        fontWeight: FontWeight.w700,
      );
  static get labelLargeInterBlack900 =>
      theme.textTheme.labelLarge!.inter.copyWith(
        color: appTheme.black900,
        fontSize: 13.fSize,
        fontWeight: FontWeight.w600,
      );
  static get labelLargeInterDeeporange600 =>
      theme.textTheme.labelLarge!.inter.copyWith(
        color: appTheme.deepOrange600,
        fontSize: 13.fSize,
      );
  static get labelLargeInterOnPrimaryContainer =>
      theme.textTheme.labelLarge!.inter.copyWith(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
        fontSize: 13.fSize,
        fontWeight: FontWeight.w600,
      );
  static get labelLargeInterOnSecondaryContainer =>
      theme.textTheme.labelLarge!.inter.copyWith(
        color: theme.colorScheme.onSecondaryContainer.withOpacity(1),
        fontSize: 13.fSize,
        fontWeight: FontWeight.w600,
      );
  static get labelLargeKarlaBlack900 =>
      theme.textTheme.labelLarge!.karla.copyWith(
        color: appTheme.black900,
      );
  static get labelLargeKarlaOnSecondaryContainer =>
      theme.textTheme.labelLarge!.karla.copyWith(
        color: theme.colorScheme.onSecondaryContainer.withOpacity(1),
      );
  static get labelLargeKarlaff000000 =>
      theme.textTheme.labelLarge!.karla.copyWith(
        color: Color(0XFF000000),
        fontWeight: FontWeight.w700,
      );
  static get labelLargeKarlaff000000_1 =>
      theme.textTheme.labelLarge!.karla.copyWith(
        color: Color(0XFF000000),
      );
  static get labelLargeLightgreen900 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.lightGreen900,
        fontWeight: FontWeight.w600,
      );
  static get labelLargePrimaryContainer => theme.textTheme.labelLarge!.copyWith(
        color: theme.colorScheme.primaryContainer,
        fontWeight: FontWeight.w600,
      );
  static get labelMediumBlack900 => theme.textTheme.labelMedium!.copyWith(
        color: appTheme.black900,
        fontWeight: FontWeight.w600,
      );
  static get labelMediumBlack900_1 => theme.textTheme.labelMedium!.copyWith(
        color: appTheme.black900,
      );
  static get labelMediumErrorContainer => theme.textTheme.labelMedium!.copyWith(
        color: theme.colorScheme.errorContainer,
      );
  static get labelMediumGray80001 => theme.textTheme.labelMedium!.copyWith(
        color: appTheme.gray80001,
      );
// Title text style
  static get titleLargeGreen700 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.green700,
      );
  static get titleLargeInterBlack900 =>
      theme.textTheme.titleLarge!.inter.copyWith(
        color: appTheme.black900,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumBlack => theme.textTheme.titleMedium!.copyWith(
        fontWeight: FontWeight.w900,
      );
  static get titleMediumBlack900 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.black900.withOpacity(0.58),
        fontWeight: FontWeight.w900,
      );
  static get titleMediumBlack900Black => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.black900,
        fontWeight: FontWeight.w900,
      );
  static get titleMediumInknutAntiquaOnSecondaryContainer =>
      theme.textTheme.titleMedium!.inknutAntiqua.copyWith(
        color: theme.colorScheme.onSecondaryContainer.withOpacity(1),
      );
  static get titleMediumKoHoLightgreen5001 =>
      theme.textTheme.titleMedium!.koHo.copyWith(
        color: appTheme.lightGreen5001,
        fontWeight: FontWeight.w700,
      );
  static get titleMediumKoHoPrimaryContainer =>
      theme.textTheme.titleMedium!.koHo.copyWith(
        color: theme.colorScheme.primaryContainer,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumOnSecondaryContainer =>
      theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.onSecondaryContainer.withOpacity(1),
        fontWeight: FontWeight.w900,
      );
  static get titleMediumOnSecondaryContainerSemiBold =>
      theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.onSecondaryContainer.withOpacity(1),
        fontWeight: FontWeight.w600,
      );
  static get titleSmallBlack900 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.black900.withOpacity(0.58),
      );
  static get titleSmallInknutAntiqua =>
      theme.textTheme.titleSmall!.inknutAntiqua.copyWith(
        fontSize: 15.fSize,
      );
  static get titleSmallInknutAntiqua_1 =>
      theme.textTheme.titleSmall!.inknutAntiqua;
  static get titleSmallInterBlack900 =>
      theme.textTheme.titleSmall!.inter.copyWith(
        color: appTheme.black900,
        fontSize: 15.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleSmallInterBlack900SemiBold =>
      theme.textTheme.titleSmall!.inter.copyWith(
        color: appTheme.black900.withOpacity(0.58),
        fontSize: 15.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleSmallInterOnPrimaryContainer =>
      theme.textTheme.titleSmall!.inter.copyWith(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
        fontWeight: FontWeight.w900,
      );
  static get titleSmallKoHoBlack900 =>
      theme.textTheme.titleSmall!.koHo.copyWith(
        color: appTheme.black900,
        fontWeight: FontWeight.w700,
      );
  static get titleSmallKoHoPrimaryContainer =>
      theme.textTheme.titleSmall!.koHo.copyWith(
        color: theme.colorScheme.primaryContainer,
        fontWeight: FontWeight.w600,
      );
  static get titleSmallSemiBold => theme.textTheme.titleSmall!.copyWith(
        fontWeight: FontWeight.w600,
      );
}

extension on TextStyle {
  TextStyle get inconsolata {
    return copyWith(
      fontFamily: 'Inconsolata',
    );
  }

  TextStyle get imprima {
    return copyWith(
      fontFamily: 'Imprima',
    );
  }

  TextStyle get inter {
    return copyWith(
      fontFamily: 'Inter',
    );
  }

  TextStyle get koHo {
    return copyWith(
      fontFamily: 'KoHo',
    );
  }

  TextStyle get josefinSans {
    return copyWith(
      fontFamily: 'Josefin Sans',
    );
  }

  TextStyle get karla {
    return copyWith(
      fontFamily: 'Karla',
    );
  }

  TextStyle get inknutAntiqua {
    return copyWith(
      fontFamily: 'Inknut Antiqua',
    );
  }

  TextStyle get inriaSans {
    return copyWith(
      fontFamily: 'Inria Sans',
    );
  }
}
