import '/flutter_flow/flutter_flow_util.dart';
import 'dart:ui';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'subtitle_text_model.dart';
export 'subtitle_text_model.dart';

class SubtitleTextWidget extends StatefulWidget {
  const SubtitleTextWidget({
    super.key,
    this.subtitleHeadertext,
    this.subtitleText,
  });

  final String? subtitleHeadertext;
  final String? subtitleText;

  @override
  State<SubtitleTextWidget> createState() => _SubtitleTextWidgetState();
}

class _SubtitleTextWidgetState extends State<SubtitleTextWidget> {
  late SubtitleTextModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SubtitleTextModel());
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
            widget!.subtitleHeadertext,
            'please Enter User Id',
          ),
          style: FlutterFlowTheme.of(context).bodyMedium.override(
                fontFamily: 'Inter',
                fontSize: 27.0,
                letterSpacing: 0.0,
                fontWeight: FontWeight.w600,
              ),
        ),
        Text(
          valueOrDefault<String>(
            widget!.subtitleText,
            'KindlyEnter User Id',
          ),
          style: FlutterFlowTheme.of(context).bodyMedium.override(
                fontFamily: 'Inter',
                fontSize: 17.0,
                letterSpacing: 0.0,
                fontWeight: FontWeight.normal,
              ),
        ),
      ].divide(SizedBox(height: 15.0)),
    );
  }
}
