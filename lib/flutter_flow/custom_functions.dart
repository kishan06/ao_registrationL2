import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'package:ff_commons/flutter_flow/lat_lng.dart';
import 'package:ff_commons/flutter_flow/place.dart';
import 'package:ff_commons/flutter_flow/uploaded_file.dart';
import 'package:l1_components_vo6ate/flutter_flow/custom_functions.dart'
    as l1_components_vo6ate_functions;

bool? isFormValid(
  bool validationCondition1,
  bool validationCondition2,
  bool validationCondition3,
  bool validationCondition4,
  bool validationCondition5,
  bool confirmPasswordValidation,
) {
  return validationCondition1 &&
      validationCondition2 &&
      validationCondition3 &&
      validationCondition4 &&
      confirmPasswordValidation &&
      validationCondition5;
}

String getPasswordStrength(
  bool validationCondition1,
  bool validationCondition2,
  bool validationCondition3,
  bool validationCondition4,
  bool validationCondition5,
) {
  int validConditions = 0;

  if (validationCondition1) validConditions++;
  if (validationCondition2) validConditions++;
  if (validationCondition3) validConditions++;
  if (validationCondition4) validConditions++;
  if (validationCondition5) validConditions++;

  // Determine strength
  if (validConditions <= 2) {
    return "LOW";
  } else if (validConditions <= 4) {
    return "MEDIUM";
  } else {
    return "HIGH";
  }
}
