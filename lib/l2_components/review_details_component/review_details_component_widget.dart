import 'package:l1_presentation_qgr4y2/components/review_details_widget_component_widget.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'dart:ui';
import 'package:l1_component_headers_and_footers_9376zz/components/primary_button_widget.dart'
    as l1_component_headers_and_footers_9376zz;
import 'package:l1_component_headers_and_footers_9376zz/components/secondary_button_widget.dart'
    as l1_component_headers_and_footers_9376zz;
import 'package:l1_component_headers_and_footers_9376zz/flutter_flow/flutter_flow_util.dart'
    as l1_component_headers_and_footers_9376zz_util
    show wrapWithModel, createModel, FlutterFlowDynamicModels;
import 'package:l1_presentation_qgr4y2/components/review_details_card_component_widget.dart'
    as l1_presentation_qgr4y2;
import 'package:l1_presentation_qgr4y2/components/review_details_widget_component_widget.dart'
    as l1_presentation_qgr4y2;

import 'package:l1_presentation_qgr4y2/flutter_flow/flutter_flow_util.dart'
    as l1_presentation_qgr4y2_util
    show wrapWithModel, createModel, FlutterFlowDynamicModels;
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'review_details_component_model.dart';
export 'review_details_component_model.dart';

class ReviewDetailsComponentWidget extends StatefulWidget {
  const ReviewDetailsComponentWidget({super.key, required this.onConfirmCallBack});

  final Future Function()? onConfirmCallBack;

  @override
  State<ReviewDetailsComponentWidget> createState() =>
      _ReviewDetailsComponentWidgetState();
}

class _ReviewDetailsComponentWidgetState
    extends State<ReviewDetailsComponentWidget> {
  late ReviewDetailsComponentModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ReviewDetailsComponentModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Review Details',
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Inter',
                          color: FlutterFlowTheme.of(context).primary,
                          fontSize: 30.0,
                          letterSpacing: 0.0,
                          fontWeight: FontWeight.w800,
                        ),
                  ),
                  Text(
                    'Details are fetched from ITBA HRMS Database',
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Inter',
                          letterSpacing: 0.0,
                        ),
                  ),
                ],
              ),
            ),
            Divider(
              thickness: 2.0,
              color: FlutterFlowTheme.of(context).alternate,
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(200.0),
                  child: Image.network(
                    'https://picsum.photos/seed/773/600',
                    height: 100.0,
                    fit: BoxFit.cover,
                  ),
                ),
                Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Name',
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Inter',
                            letterSpacing: 0.0,
                          ),
                    ),
                    Text(
                      'RameshShankar',
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Inter',
                            letterSpacing: 0.0,
                          ),
                    ),
                  ].divide(const SizedBox(height: 15.0)),
                ),
                Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Designation',
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Inter',
                            letterSpacing: 0.0,
                          ),
                    ),
                    Text(
                      'AO',
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Inter',
                            letterSpacing: 0.0,
                          ),
                    ),
                  ].divide(const SizedBox(height: 15.0)),
                ),
              ].divide(const SizedBox(width: 15.0)),
            ),
            l1_presentation_qgr4y2_util.wrapWithModel(
              model: _model.reviewDetailsWidgetComponentModel1,
              updateCallback: () => safeSetState(() {}),
              child: const l1_presentation_qgr4y2.ReviewDetailsWidgetComponentWidget(
                headertext: 'Main Charge Details',
                tdsText: 'TDS',
                dlcText: 'DLC_C_256_1',
                aoPopularText: 'CIRCLE INT. TAX. 2(2)(1)',
                officeAdrressText:
                    '401,18th stage Rd., Doddathoguru,Bangalore,\nKarnataka,560100.',
              ),
            ),
            l1_presentation_qgr4y2_util.wrapWithModel(
              model: _model.reviewDetailsWidgetComponentModel2,
              updateCallback: () => safeSetState(() {}),
              child: const l1_presentation_qgr4y2.ReviewDetailsWidgetComponentWidget(
                headertext: 'Additional Charge Details (4)',
                tdsText: 'TDS',
                dlcText: 'DLC_C_122_31',
                aoPopularText: 'CIRCLE INT. TAX. 2(2)(1)',
                officeAdrressText:
                    'Directorate Of Income Tax System, Seventh Floor,Ayakar Bhavan,Vaishali Sector 3,Ghaziabad - 201012',
              ),
            ),
            l1_presentation_qgr4y2_util.wrapWithModel(
              model: _model.reviewDetailsCardComponentModel,
              updateCallback: () => safeSetState(() {}),
              child: const l1_presentation_qgr4y2.ReviewDetailsCardComponentWidget(
                tdsText: 'TDS',
                aoCodeText: 'DLC_C_122_31',
                aoPopulartext: 'CIRCLE INT. TAX. 2(2)(1)',
                officeAddreess:
                    'ADG(S)-3 Officer\'s,LIC Jeevan Nidhi Building,INS-16\nVasundhara Sec. 14,Ghaziabad',
              ),
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Icon(
                  Icons.info_outline,
                  color: FlutterFlowTheme.of(context).primary,
                  size: 24.0,
                ),
                RichText(
                  textScaler: MediaQuery.of(context).textScaler,
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: 'Information :',
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Inter',
                              color: FlutterFlowTheme.of(context).primary,
                              fontSize: 15.0,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.w600,
                            ),
                      ),
                      TextSpan(
                        text:
                            '*In Case of any dependency ,you are requested to contact concerned RCC and get it rectified',
                        style: TextStyle(
                          color: FlutterFlowTheme.of(context).primary,
                        ),
                      )
                    ],
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Inter',
                          letterSpacing: 0.5,
                        ),
                  ),
                ),
              ].divide(const SizedBox(width: 15.0)),
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                l1_component_headers_and_footers_9376zz_util.wrapWithModel(
                  model: _model.secondaryButtonModel,
                  updateCallback: () => safeSetState(() {}),
                  child: l1_component_headers_and_footers_9376zz
                      .SecondaryButtonWidget(
                    onTapCallBack: () async {},
                  ),
                ),
                l1_component_headers_and_footers_9376zz_util.wrapWithModel(
                  model: _model.primaryButtonModel,
                  updateCallback: () => safeSetState(() {}),
                  child: l1_component_headers_and_footers_9376zz
                      .PrimaryButtonWidget(
                    isEnabled: true,
                    buttonText: 'Continue',
                    onTapCallBack: () async {
                      widget.onConfirmCallBack?.call();
                    },
                  ),
                ),
              ],
            ),
          ].divide(const SizedBox(height: 18.0)),
        ),
      ),
    );
  }
}
