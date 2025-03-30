import '/flutter_flow/flutter_flow_util.dart';
import 'dart:ui';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'main_header_text_model.dart';
export 'main_header_text_model.dart';

class MainHeaderTextWidget extends StatefulWidget {
  const MainHeaderTextWidget({
    super.key,
    this.headerText,
  });

  final String? headerText;

  @override
  State<MainHeaderTextWidget> createState() => _MainHeaderTextWidgetState();
}

class _MainHeaderTextWidgetState extends State<MainHeaderTextWidget> {
  late MainHeaderTextModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MainHeaderTextModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          valueOrDefault<String>(
            widget!.headerText,
            'Headertext',
          ),
          style: FlutterFlowTheme.of(context).bodyMedium.override(
                fontFamily: 'Inter',
                color: FlutterFlowTheme.of(context).primary,
                fontSize: 30.0,
                letterSpacing: 0.0,
                fontWeight: FontWeight.w800,
              ),
        ),
        Divider(
          thickness: 1.0,
          color: FlutterFlowTheme.of(context).alternate,
        ),
      ].divide(SizedBox(height: 15.0)),
    );
  }
}
