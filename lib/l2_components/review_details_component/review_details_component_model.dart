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
import 'review_details_component_widget.dart' show ReviewDetailsComponentWidget;
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ReviewDetailsComponentModel
    extends FlutterFlowModel<ReviewDetailsComponentWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for Review_Details_Widget_Component component.
  late l1_presentation_qgr4y2.ReviewDetailsWidgetComponentModel
      reviewDetailsWidgetComponentModel1;
  // Model for Review_Details_Widget_Component component.
  late l1_presentation_qgr4y2.ReviewDetailsWidgetComponentModel
      reviewDetailsWidgetComponentModel2;
  // Model for Review_details_Card_Component component.
  late l1_presentation_qgr4y2.ReviewDetailsCardComponentModel
      reviewDetailsCardComponentModel;
  // Model for secondaryButton component.
  late l1_component_headers_and_footers_9376zz.SecondaryButtonModel
      secondaryButtonModel;
  // Model for PrimaryButton component.
  late l1_component_headers_and_footers_9376zz.PrimaryButtonModel
      primaryButtonModel;

  @override
  void initState(BuildContext context) {
    reviewDetailsWidgetComponentModel1 =
        l1_presentation_qgr4y2_util.createModel(context,
            () => l1_presentation_qgr4y2.ReviewDetailsWidgetComponentModel());
    reviewDetailsWidgetComponentModel2 =
        l1_presentation_qgr4y2_util.createModel(context,
            () => l1_presentation_qgr4y2.ReviewDetailsWidgetComponentModel());
    reviewDetailsCardComponentModel = l1_presentation_qgr4y2_util.createModel(
        context,
        () => l1_presentation_qgr4y2.ReviewDetailsCardComponentModel());
    secondaryButtonModel =
        l1_component_headers_and_footers_9376zz_util.createModel(
            context,
            () =>
                l1_component_headers_and_footers_9376zz.SecondaryButtonModel());
    primaryButtonModel =
        l1_component_headers_and_footers_9376zz_util.createModel(context,
            () => l1_component_headers_and_footers_9376zz.PrimaryButtonModel());
  }

  @override
  void dispose() {
    reviewDetailsWidgetComponentModel1.dispose();
    reviewDetailsWidgetComponentModel2.dispose();
    reviewDetailsCardComponentModel.dispose();
    secondaryButtonModel.dispose();
    primaryButtonModel.dispose();
  }
}
