import '/components/stepper_item_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:ui';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'stepper_model.dart';
export 'stepper_model.dart';

class StepperWidget extends StatefulWidget {
  const StepperWidget({
    super.key,
    bool? step1IsStepComplete,
    bool? step1IsCurrentStep,
    bool? step2IsStepComplete,
    bool? step2IsCurrentStep,
    bool? step3IsStepComplete,
    bool? step3IsCurrentStep,
    bool? step4IsStepComplete,
    bool? step4IsCurrentStep,
    bool? step5IsStepComplete,
    bool? step5IsCurrentStep,
  })  : this.step1IsStepComplete = step1IsStepComplete ?? false,
        this.step1IsCurrentStep = step1IsCurrentStep ?? false,
        this.step2IsStepComplete = step2IsStepComplete ?? false,
        this.step2IsCurrentStep = step2IsCurrentStep ?? false,
        this.step3IsStepComplete = step3IsStepComplete ?? false,
        this.step3IsCurrentStep = step3IsCurrentStep ?? false,
        this.step4IsStepComplete = step4IsStepComplete ?? false,
        this.step4IsCurrentStep = step4IsCurrentStep ?? false,
        this.step5IsStepComplete = step5IsStepComplete ?? false,
        this.step5IsCurrentStep = step5IsCurrentStep ?? false;

  final bool step1IsStepComplete;
  final bool step1IsCurrentStep;
  final bool step2IsStepComplete;
  final bool step2IsCurrentStep;
  final bool step3IsStepComplete;
  final bool step3IsCurrentStep;
  final bool step4IsStepComplete;
  final bool step4IsCurrentStep;
  final bool step5IsStepComplete;
  final bool step5IsCurrentStep;

  @override
  State<StepperWidget> createState() => _StepperWidgetState();
}

class _StepperWidgetState extends State<StepperWidget> {
  late StepperModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => StepperModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsetsDirectional.fromSTEB(30.0, 0.0, 0.0, 20.0),
          child: Text(
            'Registration',
            style: FlutterFlowTheme.of(context).displayMedium.override(
                  fontFamily: 'Inter Tight',
                  color: FlutterFlowTheme.of(context).primary,
                  fontSize: 30.0,
                  letterSpacing: 0.0,
                ),
          ),
        ),
        Divider(
          thickness: 2.0,
          color: FlutterFlowTheme.of(context).alternate,
        ),
        wrapWithModel(
          model: _model.stepperItemModel1,
          updateCallback: () => safeSetState(() {}),
          child: StepperItemWidget(
            text: 'Enter your User ID',
            stepNumber: '1',
            isStepCompleted: widget!.step1IsStepComplete,
            isCurrentStep: widget!.step1IsCurrentStep,
          ),
        ),
        Padding(
          padding: EdgeInsetsDirectional.fromSTEB(30.0, 10.0, 0.0, 0.0),
          child: Container(
            width: 2.5,
            height: 20.0,
            decoration: BoxDecoration(
              color: Color(0xFFC6C7CB),
            ),
          ),
        ),
        wrapWithModel(
          model: _model.stepperItemModel2,
          updateCallback: () => safeSetState(() {}),
          child: StepperItemWidget(
            text: 'Enter Mobile & Email OTP',
            stepNumber: '2',
            isStepCompleted: widget!.step2IsStepComplete,
            isCurrentStep: widget!.step2IsCurrentStep,
          ),
        ),
        Padding(
          padding: EdgeInsetsDirectional.fromSTEB(30.0, 10.0, 0.0, 0.0),
          child: Container(
            width: 2.5,
            height: 20.0,
            decoration: BoxDecoration(
              color: Color(0xFFC6C7CB),
            ),
          ),
        ),
        wrapWithModel(
          model: _model.stepperItemModel3,
          updateCallback: () => safeSetState(() {}),
          child: StepperItemWidget(
            text: 'Review Details',
            stepNumber: '3',
            isStepCompleted: widget!.step3IsStepComplete,
            isCurrentStep: widget!.step3IsCurrentStep,
          ),
        ),
        Padding(
          padding: EdgeInsetsDirectional.fromSTEB(30.0, 10.0, 0.0, 0.0),
          child: Container(
            width: 2.5,
            height: 20.0,
            decoration: BoxDecoration(
              color: Color(0xFFC6C7CB),
            ),
          ),
        ),
        wrapWithModel(
          model: _model.stepperItemModel4,
          updateCallback: () => safeSetState(() {}),
          child: StepperItemWidget(
            text: 'Create Password',
            stepNumber: '4',
            isStepCompleted: widget!.step4IsStepComplete,
            isCurrentStep: widget!.step4IsCurrentStep,
          ),
        ),
        Padding(
          padding: EdgeInsetsDirectional.fromSTEB(30.0, 10.0, 0.0, 0.0),
          child: Container(
            width: 2.5,
            height: 20.0,
            decoration: BoxDecoration(
              color: Color(0xFFC6C7CB),
            ),
          ),
        ),
        wrapWithModel(
          model: _model.stepperItemModel5,
          updateCallback: () => safeSetState(() {}),
          child: StepperItemWidget(
            text: 'Register Successful',
            stepNumber: '5',
            isStepCompleted: widget!.step5IsStepComplete,
            isCurrentStep: widget!.step5IsCurrentStep,
          ),
        ),
      ].addToStart(SizedBox(height: 30.0)),
    );
  }
}
