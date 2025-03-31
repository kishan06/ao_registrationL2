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
import 'o_t_p_authentication_component_model.dart';
export 'o_t_p_authentication_component_model.dart';

class OTPAuthenticationComponentWidget extends StatefulWidget {
  const OTPAuthenticationComponentWidget({
    super.key,
    required this.onConfirmCallbck,
  });

  final Future Function()? onConfirmCallbck;

  @override
  State<OTPAuthenticationComponentWidget> createState() =>
      _OTPAuthenticationComponentWidgetState();
}

class _OTPAuthenticationComponentWidgetState
    extends State<OTPAuthenticationComponentWidget> {
  late OTPAuthenticationComponentModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => OTPAuthenticationComponentModel());
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
            headerText: 'OTP Authentication',
          ),
        ),
        l1_presentation_qgr4y2_util.wrapWithModel(
          model: _model.subtitleTextModel,
          updateCallback: () => safeSetState(() {}),
          child: l1_presentation_qgr4y2.SubtitleTextWidget(
            subtitleHeadertext: 'Please enter the 6-digit OTP',
            subtitleText:
                'A unique six-digit One-Time Password(OTP) has been sent to your registered mobile number ending with xx478 and your name-based email address (xxxbhuta@gmail.com)',
          ),
        ),
        Padding(
          padding: EdgeInsetsDirectional.fromSTEB(0.0, 40.0, 0.0, 40.0),
          child: l1_components_vo6ate_util.wrapWithModel(
            model: _model.genericTextFieldModel1,
            updateCallback: () => safeSetState(() {}),
            child: l1_components_vo6ate.GenericTextFieldWidget(
              hintText: 'Enter Mobile OTP',
              errorText: 'OTP is incorrect.',
              keyPrefix: 'OTPField',
              validationRegex: '^[a-zA-Z0-9_]{4,6}\$',
              labelText: 'Mobile OTP',
            ),
          ),
        ),
        Padding(
          padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 40.0),
          child: l1_components_vo6ate_util.wrapWithModel(
            model: _model.genericTextFieldModel2,
            updateCallback: () => safeSetState(() {}),
            child: l1_components_vo6ate.GenericTextFieldWidget(
              hintText: 'Enter Email OTP',
              errorText: 'OTP is incorrect.',
              keyPrefix: 'OTPField',
              validationRegex: '^[a-zA-Z0-9_]{4,6}\$',
              labelText: 'Email ID OTP',
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
                isEnabled: valueOrDefault<bool>(
                      _model.genericTextFieldModel1.isInputValid,
                      false,
                    ) &&
                    valueOrDefault<bool>(
                      _model.genericTextFieldModel2.isInputValid,
                      false,
                    ),
                buttonText: 'Confirm',
                onTapCallBack: () async {
                  widget.onConfirmCallbck?.call();
                },
              ),
            ),
          ],
        ),
        Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 30.0, 0.0, 50.0),
              child: Text(
                'OTP will expire in 03:00 minutes',
                style: FlutterFlowTheme.of(context).labelLarge.override(
                      fontFamily: 'Inter',
                      color: Color(0xFFAFB8B8),
                      letterSpacing: 0.0,
                    ),
              ),
            ),
          ],
        ),
        Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Click here to resend OTP (available in 01:00 minute)',
              style: FlutterFlowTheme.of(context).bodyMedium.override(
                    fontFamily: 'Inter',
                    color: Color(0xFFAFB8B8),
                    letterSpacing: 0.0,
                  ),
            ),
          ],
        ),
      ],
    );
  }
}
