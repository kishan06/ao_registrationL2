import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/index.dart';
import 'package:l1_component_headers_and_footers_9376zz/flutter_flow/flutter_flow_util.dart'
    as l1_component_headers_and_footers_9376zz_util
    show wrapWithModel, createModel, FlutterFlowDynamicModels;
import 'package:l1_component_headers_and_footers_9376zz/nav_components/header/header_widget.dart'
    as l1_component_headers_and_footers_9376zz;
import 'registration_widget.dart' show RegistrationWidget;
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class RegistrationModel extends FlutterFlowModel<RegistrationWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for Header component.
  late l1_component_headers_and_footers_9376zz.HeaderModel headerModel;

  @override
  void initState(BuildContext context) {
    headerModel = l1_component_headers_and_footers_9376zz_util.createModel(
        context, () => l1_component_headers_and_footers_9376zz.HeaderModel());
  }

  @override
  void dispose() {
    headerModel.dispose();
  }
}
