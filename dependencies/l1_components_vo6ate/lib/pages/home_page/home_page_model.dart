import '';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/l1_components/generic_password_field/generic_password_field_widget.dart';
import '/l1_components/generic_text_field/generic_text_field_widget.dart';
import 'dart:ui';
import 'home_page_widget.dart' show HomePageWidget;
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class HomePageModel extends FlutterFlowModel<HomePageWidget> {
  ///  Local state fields for this page.

  String? emailInput;

  ///  State fields for stateful widgets in this page.

  // Model for Generic_PasswordField component.
  late GenericPasswordFieldModel genericPasswordFieldModel;
  // Model for Generic_TextField component.
  late GenericTextFieldModel genericTextFieldModel;

  @override
  void initState(BuildContext context) {
    genericPasswordFieldModel =
        createModel(context, () => GenericPasswordFieldModel());
    genericTextFieldModel = createModel(context, () => GenericTextFieldModel());
  }

  @override
  void dispose() {
    genericPasswordFieldModel.dispose();
    genericTextFieldModel.dispose();
  }
}
