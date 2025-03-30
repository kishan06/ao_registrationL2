import '/flutter_flow/flutter_flow_util.dart';
import 'dart:ui';
import 'o_t_p_authentication_component_widget.dart'
    show OTPAuthenticationComponentWidget;
import 'package:l1_component_headers_and_footers_9376zz/components/primary_button_widget.dart'
    as l1_component_headers_and_footers_9376zz;
import 'package:l1_component_headers_and_footers_9376zz/components/secondary_button_widget.dart'
    as l1_component_headers_and_footers_9376zz;
import 'package:l1_component_headers_and_footers_9376zz/flutter_flow/flutter_flow_util.dart'
    as l1_component_headers_and_footers_9376zz_util
    show wrapWithModel, createModel, FlutterFlowDynamicModels;
import 'package:l1_components_vo6ate/flutter_flow/flutter_flow_util.dart'
    as l1_components_vo6ate_util
    show wrapWithModel, createModel, FlutterFlowDynamicModels;
import 'package:l1_components_vo6ate/l1_components/generic_text_field/generic_text_field_widget.dart'
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

class OTPAuthenticationComponentModel
    extends FlutterFlowModel<OTPAuthenticationComponentWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for MainHeaderText component.
  late l1_presentation_qgr4y2.MainHeaderTextModel mainHeaderTextModel;
  // Model for SubtitleText component.
  late l1_presentation_qgr4y2.SubtitleTextModel subtitleTextModel;
  // Model for Generic_TextField component.
  late l1_components_vo6ate.GenericTextFieldModel genericTextFieldModel1;
  // Model for Generic_TextField component.
  late l1_components_vo6ate.GenericTextFieldModel genericTextFieldModel2;
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
    genericTextFieldModel1 = l1_components_vo6ate_util.createModel(
        context, () => l1_components_vo6ate.GenericTextFieldModel());
    genericTextFieldModel2 = l1_components_vo6ate_util.createModel(
        context, () => l1_components_vo6ate.GenericTextFieldModel());
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
    genericTextFieldModel1.dispose();
    genericTextFieldModel2.dispose();
    secondaryButtonModel.dispose();
    primaryButtonModel.dispose();
  }
}
