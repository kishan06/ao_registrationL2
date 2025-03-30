import '';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:async';
import 'dart:ui';
import 'generic_password_field_widget.dart' show GenericPasswordFieldWidget;
import 'package:aligned_tooltip/aligned_tooltip.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class GenericPasswordFieldModel
    extends FlutterFlowModel<GenericPasswordFieldWidget> {
  ///  Local state fields for this component.

  bool? isInputValid;

  bool showError = false;

  String? errorMessage;

  ///  State fields for stateful widgets in this component.

  // State field(s) for passwordTextfield widget.
  FocusNode? passwordTextfieldFocusNode;
  TextEditingController? passwordTextfieldTextController;
  late bool passwordTextfieldVisibility;
  String? Function(BuildContext, String?)?
      passwordTextfieldTextControllerValidator;

  @override
  void initState(BuildContext context) {
    passwordTextfieldVisibility = false;
  }

  @override
  void dispose() {
    passwordTextfieldFocusNode?.dispose();
    passwordTextfieldTextController?.dispose();
  }
}
