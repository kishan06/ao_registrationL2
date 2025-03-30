import '/flutter_flow/flutter_flow_util.dart';
import 'dart:ui';
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
import 'l2_initial_registration_process_page_model.dart';
export 'l2_initial_registration_process_page_model.dart';

class L2InitialRegistrationProcessPageWidget extends StatefulWidget {
  const L2InitialRegistrationProcessPageWidget({
    super.key,
    this.onConfirmCallBack,
  });

  final Future Function()? onConfirmCallBack;

  @override
  State<L2InitialRegistrationProcessPageWidget> createState() =>
      _L2InitialRegistrationProcessPageWidgetState();
}

class _L2InitialRegistrationProcessPageWidgetState
    extends State<L2InitialRegistrationProcessPageWidget> {
  late L2InitialRegistrationProcessPageModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model =
        createModel(context, () => L2InitialRegistrationProcessPageModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        l1_presentation_qgr4y2_util.wrapWithModel(
          model: _model.mainHeaderTextModel,
          updateCallback: () => safeSetState(() {}),
          child: l1_presentation_qgr4y2.MainHeaderTextWidget(
            headerText: 'Initial Registration Process',
          ),
        ),
        l1_presentation_qgr4y2_util.wrapWithModel(
          model: _model.subtitleTextModel,
          updateCallback: () => safeSetState(() {}),
          child: l1_presentation_qgr4y2.SubtitleTextWidget(
            subtitleHeadertext: 'Please enter your User ID',
            subtitleText:
                'Kindly input your User ID, which is structured as \"U\" followed by your employee ID.',
          ),
        ),
        Padding(
          padding: EdgeInsetsDirectional.fromSTEB(0.0, 40.0, 0.0, 40.0),
          child: l1_components_vo6ate_util.wrapWithModel(
            model: _model.genericTextFieldModel,
            updateCallback: () => safeSetState(() {}),
            child: l1_components_vo6ate.GenericTextFieldWidget(
              hintText: 'User ID',
              errorText: 'Please enter valid User ID',
              keyPrefix: 'useridField',
              validationRegex: '^[a-zA-Z0-9_]{8,15}\$',
              labelText: 'User ID',
            ),
          ),
        ),
        Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            l1_component_headers_and_footers_9376zz_util.wrapWithModel(
              model: _model.secondaryButtonModel,
              updateCallback: () => safeSetState(() {}),
              child:
                  l1_component_headers_and_footers_9376zz.SecondaryButtonWidget(
                onTapCallBack: () async {},
              ),
            ),
            l1_component_headers_and_footers_9376zz_util.wrapWithModel(
              model: _model.primaryButtonModel,
              updateCallback: () => safeSetState(() {}),
              child:
                  l1_component_headers_and_footers_9376zz.PrimaryButtonWidget(
                isEnabled: _model.genericTextFieldModel.isInputValid,
                buttonText: 'Confirm',
                onTapCallBack: () async {
                  await widget.onConfirmCallBack?.call();
                },
              ),
            ),
          ],
        ),
      ],
    );
  }
}
