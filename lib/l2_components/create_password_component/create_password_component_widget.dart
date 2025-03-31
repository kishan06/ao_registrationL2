import '';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:ui';
import '/flutter_flow/custom_functions.dart' as functions;
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
import 'create_password_component_model.dart';
export 'create_password_component_model.dart';

class CreatePasswordComponentWidget extends StatefulWidget {
  const CreatePasswordComponentWidget({
    super.key,
    this.onConfirmCallBack,
  });

  final Future Function()? onConfirmCallBack;

  @override
  State<CreatePasswordComponentWidget> createState() =>
      _CreatePasswordComponentWidgetState();
}

class _CreatePasswordComponentWidgetState
    extends State<CreatePasswordComponentWidget> {
  late CreatePasswordComponentModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CreatePasswordComponentModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 541.8,
      decoration: const BoxDecoration(),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          l1_presentation_qgr4y2_util.wrapWithModel(
            model: _model.mainHeaderTextModel,
            updateCallback: () => safeSetState(() {}),
            child: const l1_presentation_qgr4y2.MainHeaderTextWidget(
              headerText: 'Create Password',
            ),
          ),
          l1_presentation_qgr4y2_util.wrapWithModel(
            model: _model.subtitleTextModel,
            updateCallback: () => safeSetState(() {}),
            child: const l1_presentation_qgr4y2.SubtitleTextWidget(
              subtitleHeadertext: 'Please create a strong password',
              subtitleText:
                  'A strong password is crucial for securing your account and protecting your sensitive personal information',
            ),
          ),
          Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(0.0, 30.0, 0.0, 0.0),
            child: l1_components_vo6ate_util.wrapWithModel(
              model: _model.passwordFieldModel,
              updateCallback: () => safeSetState(() {}),
              child: l1_components_vo6ate.GenericPasswordFieldWidget(
                keyPrefix: 'Enter New Password',
                hintText: 'Enter new password',
                labelText: 'Password',
                showTooltip: true,
                onValueChangeCallback: (passwordValue) async {
                  _model.isValidationCondition1Valid =
                      l1_components_vo6ate_functions.isInputValid(
                          _model.passwordFieldModel
                              .passwordTextfieldTextController.text,
                          '^.{8,15}\$');
                  _model.isValidationCondition2Valid =
                      l1_components_vo6ate_functions.isInputValid(
                          _model.passwordFieldModel
                              .passwordTextfieldTextController.text,
                          '^(?=.*[A-Z]).+\$');
                  _model.isValidationCondition3Valid =
                      l1_components_vo6ate_functions.isInputValid(
                          _model.passwordFieldModel
                              .passwordTextfieldTextController.text,
                          '^(?=.*[a-z]).+\$');
                  _model.isValidationCondition4Valid =
                      l1_components_vo6ate_functions.isInputValid(
                          _model.passwordFieldModel
                              .passwordTextfieldTextController.text,
                          '^(?=.*\\d).+\$');
                  _model.isValidationCondition5Valid =
                      l1_components_vo6ate_functions.isInputValid(
                          _model.passwordFieldModel
                              .passwordTextfieldTextController.text,
                          '^(?=.*[!@#\\\$%^&*(),.?\\\":{}|<>]).+\$');
                  _model.updatePage(() {
                    safeSetState(() {});
                  });
                },
              ),
            ),
          ),
          if (_model.passwordFieldModel.passwordTextfieldTextController.text !=
              '')
            Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Password Strength : ${functions.getPasswordStrength(_model.isValidationCondition1Valid, _model.isValidationCondition2Valid, _model.isValidationCondition3Valid, _model.isValidationCondition4Valid, _model.isValidationCondition5Valid)}',
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Inter',
                        color: FlutterFlowTheme.of(context).secondaryText,
                        letterSpacing: 0.0,
                      ),
                ),
                Padding(
                  padding:
                      const EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Container(
                        width: 150.0,
                        height: 8.0,
                        decoration: BoxDecoration(
                          color: FlutterFlowTheme.of(context).error,
                        ),
                      ),
                      if ((functions.getPasswordStrength(
                                  _model.isValidationCondition1Valid,
                                  _model.isValidationCondition2Valid,
                                  _model.isValidationCondition3Valid,
                                  _model.isValidationCondition4Valid,
                                  _model.isValidationCondition5Valid) ==
                              'MEDIUM') ||
                          (functions.getPasswordStrength(
                                  _model.isValidationCondition1Valid,
                                  _model.isValidationCondition2Valid,
                                  _model.isValidationCondition3Valid,
                                  _model.isValidationCondition4Valid,
                                  _model.isValidationCondition5Valid) ==
                              'HIGH'))
                        Container(
                          width: 150.0,
                          height: 8.0,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context).warning,
                          ),
                        ),
                      if (functions.getPasswordStrength(
                              _model.isValidationCondition1Valid,
                              _model.isValidationCondition2Valid,
                              _model.isValidationCondition3Valid,
                              _model.isValidationCondition4Valid,
                              _model.isValidationCondition5Valid) ==
                          'HIGH')
                        Container(
                          width: 150.0,
                          height: 8.0,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context).success,
                          ),
                        ),
                    ].divide(const SizedBox(width: 10.0)),
                  ),
                ),
                Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Builder(
                          builder: (context) {
                            if (_model.isValidationCondition1Valid) {
                              return Icon(
                                Icons.check,
                                color: FlutterFlowTheme.of(context).success,
                                size: 24.0,
                              );
                            } else {
                              return Icon(
                                Icons.close_sharp,
                                color: FlutterFlowTheme.of(context).error,
                                size: 24.0,
                              );
                            }
                          },
                        ),
                        Text(
                          'Use 8 to 15 characters',
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Inter',
                                    color: _model.isValidationCondition1Valid
                                        ? FlutterFlowTheme.of(context).success
                                        : FlutterFlowTheme.of(context).error,
                                    letterSpacing: 0.0,
                                  ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Builder(
                          builder: (context) {
                            if (_model.isValidationCondition2Valid) {
                              return Icon(
                                Icons.check,
                                color: FlutterFlowTheme.of(context).success,
                                size: 24.0,
                              );
                            } else {
                              return Icon(
                                Icons.close_sharp,
                                color: FlutterFlowTheme.of(context).error,
                                size: 24.0,
                              );
                            }
                          },
                        ),
                        Text(
                          'Use at least one uppercase letter (A-Z)',
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Inter',
                                    color: _model.isValidationCondition2Valid
                                        ? FlutterFlowTheme.of(context).success
                                        : FlutterFlowTheme.of(context).error,
                                    letterSpacing: 0.0,
                                  ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Builder(
                          builder: (context) {
                            if (_model.isValidationCondition3Valid) {
                              return Icon(
                                Icons.check,
                                color: FlutterFlowTheme.of(context).success,
                                size: 24.0,
                              );
                            } else {
                              return Icon(
                                Icons.close_sharp,
                                color: FlutterFlowTheme.of(context).error,
                                size: 24.0,
                              );
                            }
                          },
                        ),
                        Text(
                          'Use at least one lowercase letter (a-z)',
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Inter',
                                    color: _model.isValidationCondition3Valid
                                        ? FlutterFlowTheme.of(context).success
                                        : FlutterFlowTheme.of(context).error,
                                    letterSpacing: 0.0,
                                  ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Builder(
                          builder: (context) {
                            if (_model.isValidationCondition4Valid) {
                              return Icon(
                                Icons.check,
                                color: FlutterFlowTheme.of(context).success,
                                size: 24.0,
                              );
                            } else {
                              return Icon(
                                Icons.close_sharp,
                                color: FlutterFlowTheme.of(context).error,
                                size: 24.0,
                              );
                            }
                          },
                        ),
                        Text(
                          'Use at least one number (e.g. 123)',
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Inter',
                                    color: _model.isValidationCondition4Valid
                                        ? FlutterFlowTheme.of(context).success
                                        : FlutterFlowTheme.of(context).error,
                                    letterSpacing: 0.0,
                                  ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Builder(
                          builder: (context) {
                            if (_model.isValidationCondition5Valid) {
                              return Icon(
                                Icons.check,
                                color: FlutterFlowTheme.of(context).success,
                                size: 24.0,
                              );
                            } else {
                              return Icon(
                                Icons.close_sharp,
                                color: FlutterFlowTheme.of(context).error,
                                size: 24.0,
                              );
                            }
                          },
                        ),
                        Text(
                          'Use at least one special character ( eg. ~ \'!@#\$)',
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Inter',
                                    color: _model.isValidationCondition5Valid
                                        ? FlutterFlowTheme.of(context).success
                                        : FlutterFlowTheme.of(context).error,
                                    letterSpacing: 0.0,
                                  ),
                        ),
                      ],
                    ),
                  ]
                      .addToStart(const SizedBox(height: 10.0))
                      .addToEnd(const SizedBox(height: 20.0)),
                ),
              ],
            ),
          Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
            child: l1_components_vo6ate_util.wrapWithModel(
              model: _model.confirmPasswordFieldModel,
              updateCallback: () => safeSetState(() {}),
              child: l1_components_vo6ate.GenericPasswordFieldWidget(
                keyPrefix: 'confirmPassword',
                hintText: 'Re- enter new Password',
                labelText: 'Confirm Password',
                showTooltip: false,
                onValueChangeCallback: (passwordValue) async {
                  _model.isConfirmPasswordSameAsCurrentPassword = _model
                          .passwordFieldModel
                          .passwordTextfieldTextController
                          .text ==
                      _model.confirmPasswordFieldModel
                          .passwordTextfieldTextController.text;
                  safeSetState(() {});
                },
              ),
            ),
          ),
          if ((_model.confirmPasswordFieldModel.passwordTextfieldTextController
                      .text !=
                  '') &&
              !_model.isConfirmPasswordSameAsCurrentPassword)
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(
                  0.0,
                  0.0,
                  0.0,
                  valueOrDefault<double>(
                    !_model.isConfirmPasswordSameAsCurrentPassword ? 20.0 : 0.0,
                    0.0,
                  )),
              child: Text(
                'Your Passwords do not match. Please provide correct details.',
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Inter',
                      color: FlutterFlowTheme.of(context).error,
                      letterSpacing: 0.0,
                    ),
              ),
            ),
          Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 1.0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                l1_component_headers_and_footers_9376zz_util.wrapWithModel(
                  model: _model.secondaryButtonModel,
                  updateCallback: () => safeSetState(() {}),
                  child: l1_component_headers_and_footers_9376zz
                      .SecondaryButtonWidget(
                    onTapCallBack: () async {},
                  ),
                ),
                l1_component_headers_and_footers_9376zz_util.wrapWithModel(
                  model: _model.primaryButtonModel,
                  updateCallback: () => safeSetState(() {}),
                  child: l1_component_headers_and_footers_9376zz
                      .PrimaryButtonWidget(
                    isEnabled: functions.isFormValid(
                        _model.isValidationCondition1Valid,
                        _model.isValidationCondition2Valid,
                        _model.isValidationCondition3Valid,
                        _model.isValidationCondition4Valid,
                        _model.isValidationCondition5Valid,
                        _model.isConfirmPasswordSameAsCurrentPassword),
                    buttonText: 'Continue',
                    onTapCallBack: () async {
                      await widget.onConfirmCallBack?.call();
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
