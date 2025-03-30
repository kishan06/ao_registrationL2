import '/components/stepper_item_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:ui';
import 'stepper_widget.dart' show StepperWidget;
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class StepperModel extends FlutterFlowModel<StepperWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for StepperItem component.
  late StepperItemModel stepperItemModel1;
  // Model for StepperItem component.
  late StepperItemModel stepperItemModel2;
  // Model for StepperItem component.
  late StepperItemModel stepperItemModel3;
  // Model for StepperItem component.
  late StepperItemModel stepperItemModel4;
  // Model for StepperItem component.
  late StepperItemModel stepperItemModel5;

  @override
  void initState(BuildContext context) {
    stepperItemModel1 = createModel(context, () => StepperItemModel());
    stepperItemModel2 = createModel(context, () => StepperItemModel());
    stepperItemModel3 = createModel(context, () => StepperItemModel());
    stepperItemModel4 = createModel(context, () => StepperItemModel());
    stepperItemModel5 = createModel(context, () => StepperItemModel());
  }

  @override
  void dispose() {
    stepperItemModel1.dispose();
    stepperItemModel2.dispose();
    stepperItemModel3.dispose();
    stepperItemModel4.dispose();
    stepperItemModel5.dispose();
  }
}
