import 'package:e_store/utils/constants/colors.dart';
import 'package:flutter/material.dart';

class EShadowStyle {
  static final verticalProductShadow = BoxShadow(
    color: EColors.darkGrey.withValues(alpha: 0.1),
    blurRadius: 50,
    spreadRadius: 7,
    offset: Offset(0, 2),
  );

  static final horizontalProductShadow = BoxShadow(
    color: EColors.darkGrey.withValues(alpha: 0.1),
    blurRadius: 50,
    spreadRadius: 7,
    offset: Offset(0, 2),
  );
}
