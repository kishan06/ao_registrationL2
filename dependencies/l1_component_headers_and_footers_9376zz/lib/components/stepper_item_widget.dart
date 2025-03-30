import '/flutter_flow/flutter_flow_util.dart';
import 'dart:ui';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'stepper_item_model.dart';
export 'stepper_item_model.dart';

class StepperItemWidget extends StatefulWidget {
  const StepperItemWidget({
    super.key,
    this.text,
    this.stepNumber,
    this.isStepCompleted,
    this.isCurrentStep,
  });

  final String? text;
  final String? stepNumber;
  final bool? isStepCompleted;
  final bool? isCurrentStep;

  @override
  State<StepperItemWidget> createState() => _StepperItemWidgetState();
}

class _StepperItemWidgetState extends State<StepperItemWidget> {
  late StepperItemModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => StepperItemModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: AlignmentDirectional(-1.0, -1.0),
      child: Container(
        width: MediaQuery.sizeOf(context).width * 1.0,
        height: 50.0,
        decoration: BoxDecoration(),
        child: Builder(
          builder: (context) {
            if (widget!.isStepCompleted ?? false) {
              return Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Icon(
                    Icons.check_circle_outline,
                    color: Color(0xFF067821),
                    size: 24.0,
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 0.0, 0.0),
                    child: Text(
                      valueOrDefault<String>(
                        widget!.text,
                        'Enter your user ID',
                      ),
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Inter',
                            color: Color(0xFF067821),
                            letterSpacing: 0.0,
                            fontWeight: FontWeight.w600,
                          ),
                    ),
                  ),
                ].addToStart(SizedBox(width: 20.0)),
              );
            } else if (widget!.isCurrentStep ?? false) {
              return Container(
                decoration: BoxDecoration(
                  color: Color(0xFFE6F0FA),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Icon(
                      Icons.mode_standby_sharp,
                      color: Color(0xFF1E7ED6),
                      size: 24.0,
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 0.0, 0.0),
                      child: Text(
                        valueOrDefault<String>(
                          widget!.text,
                          'text dummy',
                        ),
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Inter',
                              color: Color(0xFF1E7ED6),
                              letterSpacing: 0.0,
                            ),
                      ),
                    ),
                    Spacer(),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 10.0, 0.0),
                      child: Icon(
                        Icons.arrow_forward_ios,
                        color: Color(0xFF1E7ED6),
                        size: 15.0,
                      ),
                    ),
                  ].addToStart(SizedBox(width: 20.0)),
                ),
              );
            } else {
              return Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Align(
                    alignment: AlignmentDirectional(0.0, 0.0),
                    child: Padding(
                      padding: EdgeInsets.all(2.0),
                      child: Container(
                        width: 22.0,
                        height: 22.0,
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: Color(0xFF717275),
                            width: 2.0,
                          ),
                        ),
                        child: Align(
                          alignment: AlignmentDirectional(0.0, 0.0),
                          child: Text(
                            valueOrDefault<String>(
                              widget!.stepNumber,
                              '1',
                            ),
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Inter',
                                  color: Color(0xFF717275),
                                  letterSpacing: 0.0,
                                ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 0.0, 0.0),
                    child: Text(
                      valueOrDefault<String>(
                        widget!.text,
                        'Create Password',
                      ),
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Inter',
                            color: Color(0xFF717275),
                            letterSpacing: 0.0,
                          ),
                    ),
                  ),
                ].addToStart(SizedBox(width: 20.0)),
              );
            }
          },
        ),
      ),
    );
  }
}
