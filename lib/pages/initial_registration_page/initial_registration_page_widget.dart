import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/l2_components/l2_initial_registration_process_page/l2_initial_registration_process_page_widget.dart';
import 'dart:ui';
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
import 'initial_registration_page_model.dart';
export 'initial_registration_page_model.dart';

class InitialRegistrationPageWidget extends StatefulWidget {
  const InitialRegistrationPageWidget({super.key});

  static String routeName = 'Initial_registration_page';
  static String routePath = '/initialRegistrationPage';

  @override
  State<InitialRegistrationPageWidget> createState() =>
      _InitialRegistrationPageWidgetState();
}

class _InitialRegistrationPageWidgetState
    extends State<InitialRegistrationPageWidget> {
  late InitialRegistrationPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => InitialRegistrationPageModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: SafeArea(
          top: true,
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                l1_component_headers_and_footers_9376zz_util.wrapWithModel(
                  model: _model.headerModel,
                  updateCallback: () => safeSetState(() {}),
                  child: l1_component_headers_and_footers_9376zz.HeaderWidget(
                    isRegistrationPage: false,
                    keyPrefix: 'Header',
                    onTapScreenReader: () async {},
                    onTapFontIncrease: () async {},
                    onTapFontDecrease: () async {},
                    onTapTonality: () async {},
                    onLanguageDropdownSelection: () async {},
                  ),
                ),
                l1_component_headers_and_footers_9376zz_util.wrapWithModel(
                  model: _model.headerMenuModel,
                  updateCallback: () => safeSetState(() {}),
                  child:
                      l1_component_headers_and_footers_9376zz.HeaderMenuWidget(
                    keyPrefix: 'HeaderMenu',
                    onTapHome: () async {},
                    onTapAboutUs: () async {},
                    onTapLMS: () async {},
                    onTapHelp: () async {},
                    onTapRelatedLinks: () async {},
                    onTapUtilities: () async {},
                  ),
                ),
                l1_component_headers_and_footers_9376zz_util.wrapWithModel(
                  model: _model.headerNoticeModel,
                  updateCallback: () => safeSetState(() {}),
                  child: l1_component_headers_and_footers_9376zz
                      .HeaderNoticeWidget(
                    keyPrefix: 'HeaderNotice',
                    onTapPrevious: () async {},
                    onTapNext: () async {},
                  ),
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Container(
                      width: MediaQuery.sizeOf(context).width * 0.2,
                      height: MediaQuery.sizeOf(context).height * 0.89,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).primaryBackground,
                      ),
                      child: l1_component_headers_and_footers_9376zz_util
                          .wrapWithModel(
                        model: _model.stepperModel,
                        updateCallback: () => safeSetState(() {}),
                        child: l1_component_headers_and_footers_9376zz
                            .StepperWidget(
                          step1IsStepComplete: false,
                          step1IsCurrentStep: true,
                          step2IsStepComplete: false,
                          step2IsCurrentStep: false,
                          step3IsStepComplete: false,
                          step3IsCurrentStep: false,
                          step4IsStepComplete: false,
                          step4IsCurrentStep: false,
                          step5IsStepComplete: false,
                          step5IsCurrentStep: false,
                        ),
                      ),
                    ),
                    Container(
                      width: MediaQuery.sizeOf(context).width * 0.8,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                width: 200.0,
                                decoration: BoxDecoration(),
                                child:
                                    l1_component_headers_and_footers_9376zz_util
                                        .wrapWithModel(
                                  model: _model.currentPathModel,
                                  updateCallback: () => safeSetState(() {}),
                                  child: l1_component_headers_and_footers_9376zz
                                      .CurrentPathWidget(
                                    keyPrefix: 'breadcrumbs',
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Container(
                            width: MediaQuery.sizeOf(context).width * 0.35,
                            height: MediaQuery.sizeOf(context).height * 0.8,
                            decoration: BoxDecoration(),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Expanded(
                                  child: wrapWithModel(
                                    model: _model
                                        .l2InitialRegistrationProcessPageModel,
                                    updateCallback: () => safeSetState(() {}),
                                    child:
                                        L2InitialRegistrationProcessPageWidget(
                                      onConfirmCallBack: () async {},
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ].divide(SizedBox(height: 35.0)),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
