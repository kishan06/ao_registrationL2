import 'package:l2_a_o_registration/l2_components/create_password_component/create_password_component_widget.dart';
import 'package:l2_a_o_registration/l2_components/o_t_p_authentication_component/o_t_p_authentication_component_widget.dart';
import 'package:l2_a_o_registration/l2_components/registration_successfull_component/registration_successfull_component_widget.dart';
import 'package:l2_a_o_registration/l2_components/review_details_component/review_details_component_widget.dart';

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

  // Index to track the current component
  int _currentComponentIndex = 0;

  // List of widgets to switch between
  late List<Widget> _components;

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => InitialRegistrationPageModel());

    // Initialize the components list with callbacks
    _components = [
      L2InitialRegistrationProcessPageWidget(
        onConfirmCallBack: () async {
          _switchToNextComponent();
        },
      ),
      OTPAuthenticationComponentWidget(
        onConfirmCallbck: () async {
          _switchToNextComponent();
        },
      ),
      ReviewDetailsComponentWidget(
        onConfirmCallBack: () async {
          _switchToNextComponent();
        },
      ),
      CreatePasswordComponentWidget(
        onConfirmCallBack: () async {
          _switchToNextComponent();
        },
      ),
      const RegistrationSuccessfullComponentWidget(
          // onConfirmCallBack: () async {
          //   _switchToNextComponent();
          // },
          ),
      // Add more components as needed
    ];
  }

  void _switchToNextComponent() {
    setState(() {
      _currentComponentIndex =
          (_currentComponentIndex + 1) % _components.length;
    });
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
                          step1IsStepComplete: _currentComponentIndex > 0,
                          step1IsCurrentStep: _currentComponentIndex == 0,
                          step2IsStepComplete: _currentComponentIndex > 1,
                          step2IsCurrentStep: _currentComponentIndex == 1,
                          step3IsStepComplete: _currentComponentIndex > 2,
                          step3IsCurrentStep: _currentComponentIndex == 2,
                          step4IsStepComplete: _currentComponentIndex > 3,
                          step4IsCurrentStep: _currentComponentIndex == 3,
                          step5IsStepComplete: _currentComponentIndex > 4,
                          step5IsCurrentStep: _currentComponentIndex == 4,
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
                                decoration: const BoxDecoration(),
                                child:
                                    l1_component_headers_and_footers_9376zz_util
                                        .wrapWithModel(
                                  model: _model.currentPathModel,
                                  updateCallback: () => safeSetState(() {}),
                                  child:
                                      const l1_component_headers_and_footers_9376zz
                                          .CurrentPathWidget(
                                    keyPrefix: 'breadcrumbs',
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Container(
                            width: _currentComponentIndex == 2 ||
                                    _currentComponentIndex == 4
                                ? MediaQuery.sizeOf(context).width * 1
                                : MediaQuery.sizeOf(context).width * 0.35,
                            height: MediaQuery.sizeOf(context).height * 0.8,
                            decoration: const BoxDecoration(),
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
                                    child: _components[_currentComponentIndex],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ].divide(const SizedBox(height: 35.0)),
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
