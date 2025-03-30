import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/l2_components/l2_initial_registration_process_page/l2_initial_registration_process_page_widget.dart';
import 'dart:ui';
import 'initial_registration_page_widget.dart'
    show InitialRegistrationPageWidget;
import 'package:l1_component_headers_and_footers_9376zz/components/current_path_widget.dart'
    as l1_component_headers_and_footers_9376zz;
import 'package:l1_component_headers_and_footers_9376zz/components/header_notice_widget.dart'
    as l1_component_headers_and_footers_9376zz;
import 'package:l1_component_headers_and_footers_9376zz/components/stepper_widget.dart'
    as l1_component_headers_and_footers_9376zz;
import 'package:l1_component_headers_and_footers_9376zz/flutter_flow/flutter_flow_util.dart'
    as l1_component_headers_and_footers_9376zz_util
    show wrapWithModel, createModel, FlutterFlowDynamicModels;
import 'package:l1_component_headers_and_footers_9376zz/nav_components/header/header_widget.dart'
    as l1_component_headers_and_footers_9376zz;
import 'package:l1_component_headers_and_footers_9376zz/nav_components/header_menu/header_menu_widget.dart'
    as l1_component_headers_and_footers_9376zz;
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class InitialRegistrationPageModel
    extends FlutterFlowModel<InitialRegistrationPageWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for Header component.
  late l1_component_headers_and_footers_9376zz.HeaderModel headerModel;
  // Model for HeaderMenu component.
  late l1_component_headers_and_footers_9376zz.HeaderMenuModel headerMenuModel;
  // Model for HeaderNotice component.
  late l1_component_headers_and_footers_9376zz.HeaderNoticeModel
      headerNoticeModel;
  // Model for Stepper component.
  late l1_component_headers_and_footers_9376zz.StepperModel stepperModel;
  // Model for CurrentPath component.
  late l1_component_headers_and_footers_9376zz.CurrentPathModel
      currentPathModel;
  // Model for L2_InitialRegistrationProcessPage component.
  late L2InitialRegistrationProcessPageModel
      l2InitialRegistrationProcessPageModel;

  @override
  void initState(BuildContext context) {
    headerModel = l1_component_headers_and_footers_9376zz_util.createModel(
        context, () => l1_component_headers_and_footers_9376zz.HeaderModel());
    headerMenuModel = l1_component_headers_and_footers_9376zz_util.createModel(
        context,
        () => l1_component_headers_and_footers_9376zz.HeaderMenuModel());
    headerNoticeModel =
        l1_component_headers_and_footers_9376zz_util.createModel(context,
            () => l1_component_headers_and_footers_9376zz.HeaderNoticeModel());
    stepperModel = l1_component_headers_and_footers_9376zz_util.createModel(
        context, () => l1_component_headers_and_footers_9376zz.StepperModel());
    currentPathModel = l1_component_headers_and_footers_9376zz_util.createModel(
        context,
        () => l1_component_headers_and_footers_9376zz.CurrentPathModel());
    l2InitialRegistrationProcessPageModel =
        createModel(context, () => L2InitialRegistrationProcessPageModel());
  }

  @override
  void dispose() {
    headerModel.dispose();
    headerMenuModel.dispose();
    headerNoticeModel.dispose();
    stepperModel.dispose();
    currentPathModel.dispose();
    l2InitialRegistrationProcessPageModel.dispose();
  }
}
