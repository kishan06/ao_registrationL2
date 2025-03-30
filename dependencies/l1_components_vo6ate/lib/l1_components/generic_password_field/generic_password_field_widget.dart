import '';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:async';
import 'dart:ui';
import 'package:aligned_tooltip/aligned_tooltip.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'generic_password_field_model.dart';
export 'generic_password_field_model.dart';

class GenericPasswordFieldWidget extends StatefulWidget {
  const GenericPasswordFieldWidget({
    super.key,
    this.keyPrefix,
    this.hintText,
    this.errorText,
    this.width,
    this.validationRegex,
    this.labelText,
    bool? showTooltip,
    this.onValueChangeCallback,
  }) : this.showTooltip = showTooltip ?? false;

  final String? keyPrefix;
  final String? hintText;
  final String? errorText;
  final double? width;
  final String? validationRegex;
  final String? labelText;
  final bool showTooltip;
  final Future Function(String passwordValue)? onValueChangeCallback;

  @override
  State<GenericPasswordFieldWidget> createState() =>
      _GenericPasswordFieldWidgetState();
}

class _GenericPasswordFieldWidgetState
    extends State<GenericPasswordFieldWidget> {
  late GenericPasswordFieldModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => GenericPasswordFieldModel());

    _model.passwordTextfieldTextController ??= TextEditingController();
    _model.passwordTextfieldFocusNode ??= FocusNode();
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget!.width,
      decoration: BoxDecoration(),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 2.0, 10.0),
                child: Text(
                  valueOrDefault<String>(
                    widget!.labelText,
                    'enter password',
                  ),
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Inter',
                        letterSpacing: 0.0,
                      ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 10.0),
                child: Text(
                  '*',
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Inter',
                        color: FlutterFlowTheme.of(context).error,
                        letterSpacing: 0.0,
                      ),
                ),
              ),
              if (widget!.showTooltip)
                AlignedTooltip(
                  content: Padding(
                    padding: EdgeInsets.all(4.0),
                    child: Text(
                      '• Use 8 to 15 Characters\n• A combination of uppercase \n letters,lowercase\n letters,numbers and special characters\n• Significantly different from your previous passwords.',
                      style: FlutterFlowTheme.of(context).bodyLarge.override(
                            fontFamily: 'Inter',
                            color:
                                FlutterFlowTheme.of(context).primaryBackground,
                            fontSize: 14.0,
                            letterSpacing: 0.0,
                          ),
                    ),
                  ),
                  offset: 4.0,
                  preferredDirection: AxisDirection.up,
                  borderRadius: BorderRadius.circular(8.0),
                  backgroundColor: FlutterFlowTheme.of(context).primaryText,
                  elevation: 4.0,
                  tailBaseWidth: 15.0,
                  tailLength: 10.0,
                  waitDuration: Duration(milliseconds: 100),
                  showDuration: Duration(milliseconds: 1500),
                  triggerMode: TooltipTriggerMode.tap,
                  child: Icon(
                    Icons.info_outline_rounded,
                    color: FlutterFlowTheme.of(context).primary,
                    size: 16.0,
                  ),
                ),
            ],
          ),
          Container(
            width: MediaQuery.sizeOf(context).width * 1.0,
            child: TextFormField(
              controller: _model.passwordTextfieldTextController,
              focusNode: _model.passwordTextfieldFocusNode,
              onChanged: (_) => EasyDebounce.debounce(
                '_model.passwordTextfieldTextController',
                Duration(milliseconds: 300),
                () async {
                  unawaited(
                    () async {
                      await widget.onValueChangeCallback?.call(
                        _model.passwordTextfieldTextController.text,
                      );
                    }(),
                  );
                },
              ),
              autofocus: false,
              obscureText: !_model.passwordTextfieldVisibility,
              decoration: InputDecoration(
                isDense: true,
                labelStyle: FlutterFlowTheme.of(context).labelMedium.override(
                      fontFamily: 'Inter',
                      letterSpacing: 0.0,
                    ),
                hintText: widget!.hintText,
                hintStyle: FlutterFlowTheme.of(context).labelMedium.override(
                      fontFamily: 'Inter',
                      letterSpacing: 0.0,
                    ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: FlutterFlowTheme.of(context).secondaryText,
                    width: 1.0,
                  ),
                  borderRadius: BorderRadius.circular(8.0),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: _model.showError
                        ? FlutterFlowTheme.of(context).error
                        : FlutterFlowTheme.of(context).primaryBackground,
                    width: 1.0,
                  ),
                  borderRadius: BorderRadius.circular(8.0),
                ),
                errorBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: FlutterFlowTheme.of(context).error,
                    width: 1.0,
                  ),
                  borderRadius: BorderRadius.circular(8.0),
                ),
                focusedErrorBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: FlutterFlowTheme.of(context).error,
                    width: 1.0,
                  ),
                  borderRadius: BorderRadius.circular(8.0),
                ),
                filled: true,
                fillColor: FlutterFlowTheme.of(context).secondaryBackground,
                suffixIcon: InkWell(
                  onTap: () => safeSetState(
                    () => _model.passwordTextfieldVisibility =
                        !_model.passwordTextfieldVisibility,
                  ),
                  focusNode: FocusNode(skipTraversal: true),
                  child: Icon(
                    _model.passwordTextfieldVisibility
                        ? Icons.visibility_outlined
                        : Icons.visibility_off_outlined,
                    size: 22,
                  ),
                ),
              ),
              style: FlutterFlowTheme.of(context).bodyMedium.override(
                    fontFamily: 'Inter',
                    letterSpacing: 0.0,
                  ),
              cursorColor: FlutterFlowTheme.of(context).primaryText,
              validator: _model.passwordTextfieldTextControllerValidator
                  .asValidator(context),
            ),
          ),
          if (_model.showError &&
              (_model.errorMessage != null && _model.errorMessage != ''))
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
              child: Text(
                valueOrDefault<String>(
                  _model.errorMessage,
                  'errorMessage',
                ),
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Inter',
                      color: FlutterFlowTheme.of(context).error,
                      letterSpacing: 0.0,
                    ),
              ),
            ),
        ],
      ),
    );
  }
}
