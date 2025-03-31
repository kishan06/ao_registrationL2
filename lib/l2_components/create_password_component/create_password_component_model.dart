import '';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:ui';
import '/flutter_flow/custom_functions.dart' as functions;
import 'create_password_component_widget.dart'
    show CreatePasswordComponentWidget;
import 'package:l1_component_headers_and_footers_9376zz/components/primary_button_widget.dart'
    as l1_component_headers_and_footers_9376zz;
import 'package:l1_component_headers_and_footers_9376zz/components/secondary_button_widget.dart'
    as l1_component_headers_and_footers_9376zz;
import 'package:l1_component_headers_and_footers_9376zz/flutter_flow/flutter_flow_util.dart'
    as l1_component_headers_and_footers_9376zz_util
    show wrapWithModel, createModel, FlutterFlowDynamicModels;
import 'package:l1_components_vo6ate/flutter_flow/custom_functions.dart'
    as l1_components_vo6ate_functions;
import 'package:l1_components_vo6ate/flutter_flow/flutter_flow_util.dart'
    as l1_components_vo6ate_util
    show wrapWithModel, createModel, FlutterFlowDynamicModels;
import 'package:l1_components_vo6ate/l1_components/generic_password_field/generic_password_field_widget.dart'
    as l1_components_vo6ate;
import 'package:l1_presentation_qgr4y2/components/main_header_text_widget.dart'
    as l1_presentation_qgr4y2;
import 'package:l1_presentation_qgr4y2/components/subtitle_text_widget.dart'
    as l1_presentation_qgr4y2;
import 'package:l1_presentation_qgr4y2/flutter_flow/flutter_flow_util.dart'
    as l1_presentation_qgr4y2_util
    show wrapWithModel, createModel, FlutterFlowDynamicModels;
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CreatePasswordComponentModel
    extends FlutterFlowModel<CreatePasswordComponentWidget> {
  ///  Local state fields for this component.

  bool isValidationCondition1Valid = false;

  bool isValidationCondition2Valid = false;

  bool isValidationCondition3Valid = false;

  bool isValidationCondition4Valid = false;

  bool isValidationCondition5Valid = false;

  bool isConfirmPasswordSameAsCurrentPassword = false;

  ///  State fields for stateful widgets in this component.

  // Model for MainHeaderText component.
  late l1_presentation_qgr4y2.MainHeaderTextModel mainHeaderTextModel;
  // Model for SubtitleText component.
  late l1_presentation_qgr4y2.SubtitleTextModel subtitleTextModel;
  // Model for PasswordField.
  late l1_components_vo6ate.GenericPasswordFieldModel passwordFieldModel;
  // Model for Confirm_PasswordField.
  late l1_components_vo6ate.GenericPasswordFieldModel confirmPasswordFieldModel;
  // Model for secondaryButton component.
  late l1_component_headers_and_footers_9376zz.SecondaryButtonModel
      secondaryButtonModel;
  // Model for PrimaryButton component.
  late l1_component_headers_and_footers_9376zz.PrimaryButtonModel
      primaryButtonModel;

  @override
  void initState(BuildContext context) {
    mainHeaderTextModel = l1_presentation_qgr4y2_util.createModel(
        context, () => l1_presentation_qgr4y2.MainHeaderTextModel());
    subtitleTextModel = l1_presentation_qgr4y2_util.createModel(
        context, () => l1_presentation_qgr4y2.SubtitleTextModel());
    passwordFieldModel = l1_components_vo6ate_util.createModel(
        context, () => l1_components_vo6ate.GenericPasswordFieldModel());
    confirmPasswordFieldModel = l1_components_vo6ate_util.createModel(
        context, () => l1_components_vo6ate.GenericPasswordFieldModel());
    secondaryButtonModel =
        l1_component_headers_and_footers_9376zz_util.createModel(
            context,
            () =>
                l1_component_headers_and_footers_9376zz.SecondaryButtonModel());
    primaryButtonModel =
        l1_component_headers_and_footers_9376zz_util.createModel(context,
            () => l1_component_headers_and_footers_9376zz.PrimaryButtonModel());
  }

  @override
  void dispose() {
    mainHeaderTextModel.dispose();
    subtitleTextModel.dispose();
    passwordFieldModel.dispose();
    confirmPasswordFieldModel.dispose();
    secondaryButtonModel.dispose();
    primaryButtonModel.dispose();
  }
}
