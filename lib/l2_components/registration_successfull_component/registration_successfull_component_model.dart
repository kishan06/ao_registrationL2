import '/flutter_flow/flutter_flow_util.dart';
import 'dart:ui';
import 'package:l1_component_headers_and_footers_9376zz/components/primary_button_widget.dart'
    as l1_component_headers_and_footers_9376zz;
import 'package:l1_component_headers_and_footers_9376zz/flutter_flow/flutter_flow_util.dart'
    as l1_component_headers_and_footers_9376zz_util
    show wrapWithModel, createModel, FlutterFlowDynamicModels;
import 'registration_successfull_component_widget.dart'
    show RegistrationSuccessfullComponentWidget;
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class RegistrationSuccessfullComponentModel
    extends FlutterFlowModel<RegistrationSuccessfullComponentWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for PrimaryButton component.
  late l1_component_headers_and_footers_9376zz.PrimaryButtonModel
      primaryButtonModel;

  @override
  void initState(BuildContext context) {
    primaryButtonModel =
        l1_component_headers_and_footers_9376zz_util.createModel(context,
            () => l1_component_headers_and_footers_9376zz.PrimaryButtonModel());
  }

  @override
  void dispose() {
    primaryButtonModel.dispose();
  }
}
